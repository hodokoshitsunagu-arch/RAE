package cn.soulapp.cpnt_voiceparty.soulhouse.dialog;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.base.block_frame.frame.IUpdate;
import cn.soul.android.base.block_frame.frame.Observable;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.android.service.audio_service.IAudioServiceExt;
import cn.soul.insight.apm.battery.internal.BatteryMonitor;
import cn.soul.lib_dialog.R$style;
import cn.soul.lib_dialog.SoulDialog;
import cn.soul.lib_dialog.SoulDialogFragment;
import cn.soul.lib_dialog.SoulThemeDialog;
import cn.soul.lib_dialog.base.ClosePos;
import cn.soul.lib_dialog.util.SoulDialogType;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.android.chatroom.bean.FmExtInfo;
import cn.soulapp.android.chatroom.bean.GroupClassifyDetailBean;
import cn.soulapp.android.chatroom.bean.JoinRoomBean;
import cn.soulapp.android.chatroom.bean.RoomCustomConfig;
import cn.soulapp.android.chatroom.bean.RoomLimitConfig;
import cn.soulapp.android.chatroom.componentservice.PartyRoomSource;
import cn.soulapp.android.chatroom.data.RoomDataManager;
import cn.soulapp.android.chatroom.data.RoomUserExtension;
import cn.soulapp.android.chatroom.utils.ChatMKVUtil;
import cn.soulapp.android.chatroom.utils.RoomChatEventUtilsV2;
import cn.soulapp.android.client.component.middle.platform.base.BaseKotlinDialogNoLeakFragment;
import cn.soulapp.android.client.component.middle.platform.bean.im.RoomUser;
import cn.soulapp.android.client.component.middle.platform.utils.application.AppListenerHelper;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.android.lib.analyticsV2.IPageParams;
import cn.soulapp.android.lib.analyticsV2.SoulAnalyticsV2;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.android.lib.common.utils.GsonTool;
import cn.soulapp.android.lib.common.utils.env.ApiEnv;
import cn.soulapp.android.lib.common.utils.mmkv.SKV;
import cn.soulapp.android.lib.media.zego.RoomChatEngineManager;
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
import cn.soulapp.cpnt_voiceparty.appwidget.GroupWidgetGuideDialog;
import cn.soulapp.cpnt_voiceparty.bean.BulletGameInfo;
import cn.soulapp.cpnt_voiceparty.bean.ChatRoomSwitches;
import cn.soulapp.cpnt_voiceparty.bean.DislikeDataBean;
import cn.soulapp.cpnt_voiceparty.bean.FollowRemindListBean;
import cn.soulapp.cpnt_voiceparty.bean.FollowUserBean;
import cn.soulapp.cpnt_voiceparty.bean.GuidePopBean;
import cn.soulapp.cpnt_voiceparty.bean.GuineaPigInfo;
import cn.soulapp.cpnt_voiceparty.bean.H5PlayGameStatusBean;
import cn.soulapp.cpnt_voiceparty.bean.MsgBizParam;
import cn.soulapp.cpnt_voiceparty.bean.MyInfoInRoom;
import cn.soulapp.cpnt_voiceparty.bean.MyKtvSongInfo;
import cn.soulapp.cpnt_voiceparty.bean.RecSwitchBean;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.bean.RoomConfigBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomRedDotInfo;
import cn.soulapp.cpnt_voiceparty.bean.RoomTransferCheckData;
import cn.soulapp.cpnt_voiceparty.bean.SpeedMatchModel;
import cn.soulapp.cpnt_voiceparty.bean.SpeedMatchStatus;
import cn.soulapp.cpnt_voiceparty.dialog.ExitRoomFollowDialog;
import cn.soulapp.cpnt_voiceparty.dialog.PartyHallAttractDialog;
import cn.soulapp.cpnt_voiceparty.melancholy.MelancholyConnectSettingDialog;
import cn.soulapp.cpnt_voiceparty.mvvm.ChatRoomListViewModel;
import cn.soulapp.cpnt_voiceparty.mvvm.GameViewModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.ISlideContainer;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseActivity;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseContainer;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.ZoomOutManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.assistant.AssistantManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.assistant.RoomAssistant;
import cn.soulapp.cpnt_voiceparty.soulhouse.assistant.UserActionAssistant;
import cn.soulapp.cpnt_voiceparty.soulhouse.audio.VoiceTransHelper;
import cn.soulapp.cpnt_voiceparty.soulhouse.battery.BatteryModeSettingDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.bullet.BulletGameSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.BlackboardInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.guineapig.GuineaPigGameSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.h5play.H5PlaySlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.playmode.ModeConflictConfiguration;
import cn.soulapp.cpnt_voiceparty.soulhouse.powersave.PowerSaveMode;
import cn.soulapp.cpnt_voiceparty.soulhouse.powersave.PowerSaveModeStore;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.CommonSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.SliceManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.bean.MusicMachineInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.SongMachinePlayUtil;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.throwingthunder.ThrowingThunderUserInfo;
import cn.soulapp.cpnt_voiceparty.ui.ChatRoomListActivity;
import cn.soulapp.cpnt_voiceparty.ui.SoulHouseShareDialog;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.BlockMessage;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.RoomIntentData;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.dialog.FunctionMoreBean;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.dialog.RoomFunctionMoreItemAdapter;
import cn.soulapp.cpnt_voiceparty.ui.dislike.RoomMoreDislikeDialog;
import cn.soulapp.cpnt_voiceparty.ui.dislike.RoomMoreDislikeV2Dialog;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import cn.soulapp.cpnt_voiceparty.util.SwitchUtil;
import cn.soulapp.cpnt_voiceparty.widget.MaxHeightNestedScrollView;
import cn.soulapp.lib.basic.utils.glide.GlideUtils;
import cn.soulapp.lib.executors.LightExecutor;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.ishumei.smantifraud.l111l1111llIl;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.walid.rxretrofit.HttpSubscriber;
import defpackage.SongListPlayCount;
import io.reactivex.disposables.Disposable;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u009c\u00012\u00020\u0001:\u0002\u009d\u0001B\t¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J \u0010\u000f\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u0010\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u0011\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u0012\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u0013\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u0014\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u0015\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u0016\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J \u0010\u001a\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u001b\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u001c\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u001d\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\u001e\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J\b\u0010\u001f\u001a\u00020\u0004H\u0002J\b\u0010 \u001a\u00020\u0017H\u0002J \u0010!\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010\"\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010#\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010$\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010%\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010&\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J\b\u0010'\u001a\u00020\u0017H\u0002J \u0010(\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010)\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010*\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J\b\u0010+\u001a\u00020\u0002H\u0002J \u0010,\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010-\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010.\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u0010/\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u00100\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J \u00101\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J\b\u00102\u001a\u00020\u0004H\u0002J \u00103\u001a\u00020\u00042\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rH\u0002J\b\u00104\u001a\u00020\u0004H\u0002J\u0010\u00106\u001a\u00020\u00042\u0006\u00105\u001a\u00020\fH\u0002J\b\u00107\u001a\u00020\u0004H\u0002J\b\u00108\u001a\u00020\u0004H\u0003J\b\u00109\u001a\u00020\u0004H\u0003J\b\u0010:\u001a\u00020\u0002H\u0002J\b\u0010;\u001a\u00020\u0004H\u0003J\u0010\u0010>\u001a\u00020\u00042\u0006\u0010=\u001a\u00020<H\u0002J\u0012\u0010@\u001a\u00020\u00042\b\b\u0002\u0010?\u001a\u00020\u0002H\u0002J\b\u0010A\u001a\u00020\u0004H\u0002J\b\u0010B\u001a\u00020\u0004H\u0002J\b\u0010C\u001a\u00020\u0004H\u0002J\b\u0010D\u001a\u00020\u0004H\u0002J\b\u0010E\u001a\u00020\u0002H\u0002J\b\u0010F\u001a\u00020\u0002H\u0002J\b\u0010G\u001a\u00020\u0004H\u0003J\u0010\u0010J\u001a\u00020\u00042\u0006\u0010I\u001a\u00020HH\u0002J\u0010\u0010K\u001a\u00020\u00042\u0006\u0010I\u001a\u00020HH\u0003J\b\u0010L\u001a\u00020\u0004H\u0003J\b\u0010M\u001a\u00020\u0002H\u0002J\u0012\u0010O\u001a\u00020\u00042\b\b\u0002\u0010N\u001a\u00020\u0002H\u0002J\b\u0010P\u001a\u00020\u0004H\u0002J\u0010\u0010R\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020\u0017H\u0002J\b\u0010S\u001a\u00020\u0004H\u0002J\u001b\u0010U\u001a\u00020\u00042\n\b\u0002\u0010T\u001a\u0004\u0018\u00010\u0002H\u0003¢\u0006\u0004\bU\u0010VJ\u0012\u0010Y\u001a\u00020\u00042\b\u0010X\u001a\u0004\u0018\u00010WH\u0002J\u001a\u0010\\\u001a\u00020\u00042\u0006\u0010[\u001a\u00020Z2\b\u0010X\u001a\u0004\u0018\u00010WH\u0002J\b\u0010]\u001a\u00020\u0004H\u0002J\u0010\u0010_\u001a\u00020\u00042\u0006\u0010^\u001a\u00020\u0017H\u0002J\n\u0010a\u001a\u0004\u0018\u00010`H\u0002J\b\u0010b\u001a\u00020\u0017H\u0016J\b\u0010c\u001a\u00020\u0017H\u0014J\b\u0010e\u001a\u00020dH\u0014J\b\u0010f\u001a\u00020\u0017H\u0014J\b\u0010g\u001a\u00020\u0004H\u0014J\b\u0010h\u001a\u00020\u0004H\u0017R\u0018\u0010l\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u001b\u0010r\u001a\u00020m8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bn\u0010o\u001a\u0004\bp\u0010qR\u001b\u0010u\u001a\u00020m8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bs\u0010o\u001a\u0004\bt\u0010qR*\u0010x\u001a\u0016\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\f\u0018\u0001`\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR*\u0010z\u001a\u0016\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\f\u0018\u0001`\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010wR\u001b\u0010\u007f\u001a\u00020{8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b|\u0010o\u001a\u0004\b}\u0010~R\u001f\u0010\u0083\u0001\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0080\u0001\u0010o\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0018\u0010\u0085\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010\u001aR\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001b\u0010\u008c\u0001\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001b\u0010\u008e\u0001\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008b\u0001R\u0019\u0010\u0091\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bI\u0010\u0090\u0001R\u0017\u0010\u0093\u0001\u001a\u00020\u00028BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0092\u0001\u0010\u0082\u0001R\u0017\u0010\u0095\u0001\u001a\u00020\u00028BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0094\u0001\u0010\u0082\u0001R\u001a\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0096\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001¨\u0006\u009e\u0001"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog;", "Lcn/soulapp/android/client/component/middle/platform/base/BaseKotlinDialogNoLeakFragment;", "", "Y0", "Lkotlin/w;", "L0", "O0", "U0", "P0", "V0", "Q0", "Ljava/util/ArrayList;", "Lcn/soulapp/cpnt_voiceparty/ui/chatroom/dialog/FunctionMoreBean;", "Lkotlin/collections/ArrayList;", "funcData", "g0", "d0", "v0", "h0", "m0", "r0", "i0", "q0", "", "type", "F1", "Z", "o0", "j0", "e0", "c0", "d1", "J0", "t0", "Y", "b0", "u0", ExifInterface.LONGITUDE_WEST, "n0", "i1", "a0", "l0", "k0", "b1", "p0", "X", "y0", "x0", "s0", "f0", "f1", "w0", "R0", "bean", "D1", "C0", com.hihonor.adsdk.adsconversiontools.report.c.a.Q0, "p1", "Z0", "K0", "Lcn/soulapp/cpnt_voiceparty/bean/RoomTransferCheckData;", "roomTransferData", "w1", "isDirectOpenExitDialog", "n1", "u1", "N0", "W0", "m1", "D0", "z1", "z0", "Lcn/soulapp/cpnt_voiceparty/bean/RecSwitchBean;", "t", "g1", "e1", "c1", "A0", "isExitRoom", "j1", "q1", "status", "A1", "B0", "isOpenMusicalOpened", "B1", "(Ljava/lang/Boolean;)V", "Lcn/soulapp/android/lib/analyticsV2/IPageParams;", "iPageParams", "E1", "", "Type", "C1", "l1", "target", com.alipay.sdk.m.b0.c.f175379c, "Lcn/soulapp/cpnt_voiceparty/soulhouse/slice/CommonSlice;", "E0", "getLayoutId", "windowMode", "", "dimAmount", "gravity", "initView", "onDestroyView", "Lcn/soul/lib_dialog/SoulThemeDialog;", "i", "Lcn/soul/lib_dialog/SoulThemeDialog;", "soulThemeDialog", "Lcn/soulapp/cpnt_voiceparty/ui/chatroom/dialog/RoomFunctionMoreItemAdapter;", "j", "Lkotlin/Lazy;", "I0", "()Lcn/soulapp/cpnt_voiceparty/ui/chatroom/dialog/RoomFunctionMoreItemAdapter;", "mTopAdapter", "k", "H0", "mBottomAdapter", "l", "Ljava/util/ArrayList;", "topFuncData", "m", "bottomFuncData", "Lcn/soulapp/cpnt_voiceparty/mvvm/GameViewModel;", "n", "G0", "()Lcn/soulapp/cpnt_voiceparty/mvvm/GameViewModel;", "gameViewModel", "o", "F0", "()Z", "exitUnBindDialog", "p", "isLoadDislikeData", "Lcn/soul/android/base/block_frame/databus/DataBus;", "q", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "r", "Ljava/lang/String;", "roomId", "s", "ownerIdEcpt", "", "J", "songListPlayLimitCount", l111l1111llIl.l11l111l1lll, "isOwner", "X0", "isManage", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomSwitches;", "M0", "()Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomSwitches;", "switches", AppAgent.CONSTRUCT, "()V", "v", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class RoomMoreFunctionDialog extends BaseKotlinDialogNoLeakFragment {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private SoulThemeDialog soulThemeDialog;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private ArrayList<FunctionMoreBean> topFuncData;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private ArrayList<FunctionMoreBean> bottomFuncData;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean isLoadDislikeData;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private DataBus dataBus;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String roomId;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String ownerIdEcpt;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private long songListPlayLimitCount;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f148783u = new LinkedHashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy mTopAdapter = kotlin.j.b(RoomMoreFunctionDialog$mTopAdapter$2.INSTANCE);

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy mBottomAdapter = kotlin.j.b(RoomMoreFunctionDialog$mBottomAdapter$2.INSTANCE);

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy gameViewModel = kotlin.j.b(new Function0<GameViewModel>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$gameViewModel$2
        public static ChangeQuickRedirect changeQuickRedirect;

        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final GameViewModel invoke() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], GameViewModel.class);
            return patchProxyResultProxy.isSupported ? (GameViewModel) patchProxyResultProxy.result : (GameViewModel) new ViewModelProvider(this.this$0).get(GameViewModel.class);
        }
    });

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy exitUnBindDialog = kotlin.j.b(RoomMoreFunctionDialog$exitUnBindDialog$2.INSTANCE);

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\"\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004R\u0014\u0010\t\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\n¨\u0006\u000e"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog$a;", "", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "", "roomId", "ownerIdEcpt", "Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog;", "a", "MY_SONG_LIST_NAME", "Ljava/lang/String;", "TAG", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.q qVar) {
            this();
        }

        @NotNull
        public final RoomMoreFunctionDialog a(@NotNull DataBus dataBus, @Nullable String roomId, @Nullable String ownerIdEcpt) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus, roomId, ownerIdEcpt}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class, String.class, String.class}, RoomMoreFunctionDialog.class);
            if (patchProxyResultProxy.isSupported) {
                return (RoomMoreFunctionDialog) patchProxyResultProxy.result;
            }
            kotlin.jvm.internal.v.j(dataBus, "dataBus");
            Bundle bundle = new Bundle();
            RoomMoreFunctionDialog roomMoreFunctionDialog = new RoomMoreFunctionDialog();
            roomMoreFunctionDialog.setArguments(bundle);
            roomMoreFunctionDialog.dataBus = dataBus;
            roomMoreFunctionDialog.roomId = roomId;
            roomMoreFunctionDialog.ownerIdEcpt = ownerIdEcpt;
            return roomMoreFunctionDialog;
        }
    }

    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f148784a;
        public static ChangeQuickRedirect changeQuickRedirect;

        static {
            if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 1, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            int[] iArr = new int[PowerSaveMode.values().length];
            iArr[PowerSaveMode.SMART.ordinal()] = 1;
            iArr[PowerSaveMode.FORCE.ordinal()] = 2;
            iArr[PowerSaveMode.OFF.ordinal()] = 3;
            f148784a = iArr;
        }
    }

    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog$c", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RecSwitchBean;", "t", "Lkotlin/w;", "d", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c extends ty.s<RecSwitchBean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        c() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RecSwitchBean recSwitchBean) {
            if (PatchProxy.proxy(new Object[]{recSwitchBean}, this, changeQuickRedirect, false, 2, new Class[]{RecSwitchBean.class}, Void.TYPE).isSupported) {
                return;
            }
            if (recSwitchBean != null ? kotlin.jvm.internal.v.e(recSwitchBean.getNeedGuide(), Boolean.TRUE) : false) {
                RoomMoreFunctionDialog.this.g1(recSwitchBean);
            }
        }
    }

    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog$d", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RoomTransferCheckData;", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class d extends ty.s<RoomTransferCheckData> {
        public static ChangeQuickRedirect changeQuickRedirect;

        d() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RoomTransferCheckData roomTransferCheckData) {
            if (PatchProxy.proxy(new Object[]{roomTransferCheckData}, this, changeQuickRedirect, false, 2, new Class[]{RoomTransferCheckData.class}, Void.TYPE).isSupported) {
                return;
            }
            if (roomTransferCheckData != null) {
                RoomMoreFunctionDialog.this.w1(roomTransferCheckData);
            } else {
                RoomMoreFunctionDialog.this.n1(true);
            }
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            RoomMoreFunctionDialog.this.n1(true);
        }
    }

    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog$e", "Lty/u;", "Lcn/soulapp/android/net/HttpResult;", "LSongListPlayCount;", "t", "Lkotlin/w;", "onNext", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class e extends ty.u<HttpResult<SongListPlayCount>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        e() {
        }

        @Override // ty.u
        public void onNext(@Nullable HttpResult<SongListPlayCount> httpResult) {
            SongListPlayCount data;
            String content;
            SongListPlayCount data2;
            Long limitCount;
            int i11 = 0;
            if (PatchProxy.proxy(new Object[]{httpResult}, this, changeQuickRedirect, false, 2, new Class[]{HttpResult.class}, Void.TYPE).isSupported) {
                return;
            }
            RoomMoreFunctionDialog.this.songListPlayLimitCount = (httpResult == null || (data2 = httpResult.getData()) == null || (limitCount = data2.getLimitCount()) == null) ? 0L : limitCount.longValue();
            if (!cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a.f157602a.e(RoomMoreFunctionDialog.this.songListPlayLimitCount) || httpResult == null || (data = httpResult.getData()) == null || (content = data.getContent()) == null) {
                return;
            }
            if (!(true ^ (content.length() == 0))) {
                content = null;
            }
            if (content != null) {
                RoomMoreFunctionDialog roomMoreFunctionDialog = RoomMoreFunctionDialog.this;
                int i12 = -1;
                if (roomMoreFunctionDialog.a1() || roomMoreFunctionDialog.X0()) {
                    Iterator<FunctionMoreBean> it = roomMoreFunctionDialog.H0().getData().iterator();
                    while (it.hasNext()) {
                        if (kotlin.jvm.internal.v.e(it.next().getName(), "我的歌单")) {
                            i12 = i11;
                            break;
                        }
                        i11++;
                    }
                    FunctionMoreBean functionMoreBean = (FunctionMoreBean) CollectionsKt___CollectionsKt.v0(roomMoreFunctionDialog.H0().getData(), i12);
                    if (functionMoreBean != null) {
                        functionMoreBean.setPlayCountTv(content);
                    }
                    roomMoreFunctionDialog.H0().notifyItemChanged(i12);
                    return;
                }
                Iterator<FunctionMoreBean> it2 = roomMoreFunctionDialog.I0().getData().iterator();
                while (it2.hasNext()) {
                    if (kotlin.jvm.internal.v.e(it2.next().getName(), "我的歌单")) {
                        i12 = i11;
                        break;
                    }
                    i11++;
                }
                FunctionMoreBean functionMoreBean2 = (FunctionMoreBean) CollectionsKt___CollectionsKt.v0(roomMoreFunctionDialog.I0().getData(), i12);
                if (functionMoreBean2 != null) {
                    functionMoreBean2.setPlayCountTv(content);
                }
                roomMoreFunctionDialog.I0().notifyItemChanged(i12);
            }
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class f implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f148788a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f148789b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RoomMoreFunctionDialog f148790c;

        public f(View view, long j11, RoomMoreFunctionDialog roomMoreFunctionDialog) {
            this.f148788a = view;
            this.f148789b = j11;
            this.f148790c = roomMoreFunctionDialog;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f148788a) > this.f148789b) {
                ViewExtKt.q(this.f148788a, jCurrentTimeMillis);
                this.f148790c.dismiss();
            }
        }
    }

    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog$g", "Lty/s;", "", "t", "Lkotlin/w;", "onNext", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class g extends ty.s<Object> {
        public static ChangeQuickRedirect changeQuickRedirect;

        g() {
            super(true);
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            SoulHouseExtensionKt.w0(this, "exit", "邀请加入群组 出错,离开当前房间");
            RoomMoreFunctionDialog.this.c1();
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        public void onNext(@Nullable Object obj) {
            if (PatchProxy.proxy(new Object[]{obj}, this, changeQuickRedirect, false, 2, new Class[]{Object.class}, Void.TYPE).isSupported) {
                return;
            }
            ChatMKVUtil.o("dismiss_and_create_group", true);
            SoulHouseExtensionKt.w0(this, "exit", "邀请加入群组,离开当前房间");
            RoomMoreFunctionDialog.this.c1();
        }
    }

    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog$h", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/DislikeDataBean;", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class h extends ty.s<DislikeDataBean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        h() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable DislikeDataBean dislikeDataBean) {
            FragmentManager supportFragmentManager;
            if (PatchProxy.proxy(new Object[]{dislikeDataBean}, this, changeQuickRedirect, false, 2, new Class[]{DislikeDataBean.class}, Void.TYPE).isSupported) {
                return;
            }
            RoomMoreFunctionDialog.this.isLoadDislikeData = false;
            if (dislikeDataBean == null) {
                return;
            }
            RoomMoreFunctionDialog.this.dismiss();
            FragmentActivity activity = RoomMoreFunctionDialog.this.getActivity();
            if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
                return;
            }
            RoomMoreDislikeDialog.INSTANCE.a(dislikeDataBean, SoulHouseExtensionKt.j0(RoomMoreFunctionDialog.this.dataBus)).show(supportFragmentManager, "roomMoreDislike");
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            RoomMoreFunctionDialog.this.isLoadDislikeData = false;
        }
    }

    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog$i", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "data", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
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
            if ((requestResult == null || requestResult.getResult()) ? false : true) {
                ExtensionsKt.toast(requestResult.getFailedMsg());
            } else {
                ExtensionsKt.toast("订阅成功");
            }
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
            ExtensionsKt.toast(str);
        }
    }

    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0005"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog$j", "Lcn/soul/android/base/block_frame/frame/IUpdate;", "Lcn/soulapp/cpnt_voiceparty/bean/RoomRedDotInfo;", "t", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class j implements IUpdate<RoomRedDotInfo> {
        public static ChangeQuickRedirect changeQuickRedirect;

        j() {
        }

        @Override // cn.soul.android.base.block_frame.frame.IUpdate
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RoomRedDotInfo update(@Nullable RoomRedDotInfo t11) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{t11}, this, changeQuickRedirect, false, 2, new Class[]{RoomRedDotInfo.class}, RoomRedDotInfo.class);
            if (patchProxyResultProxy.isSupported) {
                return (RoomRedDotInfo) patchProxyResultProxy.result;
            }
            if (t11 != null) {
                t11.setShowSeatApply(false);
            }
            return t11;
        }
    }

    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog$k", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class k extends ty.s<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f148794d;

        k(int i11) {
            this.f148794d = i11;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RequestResult<Object> requestResult) {
            RoomDataManager roomDataManagerA1;
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported || requestResult == null) {
                return;
            }
            RoomMoreFunctionDialog roomMoreFunctionDialog = RoomMoreFunctionDialog.this;
            int i11 = this.f148794d;
            if (!requestResult.getResult()) {
                ExtensionsKt.toast(requestResult.getFailedMsg());
                return;
            }
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
            RoomUserExtension roomUserExtension = null;
            MyInfoInRoom myInfoInRoomZ = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.z(soulHouseDriverJ0) : null;
            if (myInfoInRoomZ != null) {
                myInfoInRoomZ.setInvisibilityCloakStatus(i11);
            }
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
            if (soulHouseDriverJ1 != null && (roomDataManagerA1 = soulHouseDriverJ1.a1()) != null) {
                RoomUserExtension roomUserExtensionL = roomDataManagerA1.L();
                if (roomUserExtensionL != null) {
                    roomUserExtensionL.setInvisibilityCloakStatus(i11);
                    roomUserExtension = roomUserExtensionL;
                }
                roomDataManagerA1.r0(roomUserExtension);
            }
            roomMoreFunctionDialog.dismiss();
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
            ExtensionsKt.toast(str);
            RoomMoreFunctionDialog.this.dismiss();
        }
    }

    /* JADX INFO: compiled from: RoomMoreFunctionDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomMoreFunctionDialog$l", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class l extends ty.s<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Boolean f148795c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ RoomMoreFunctionDialog f148796d;

        l(Boolean bool, RoomMoreFunctionDialog roomMoreFunctionDialog) {
            this.f148795c = bool;
            this.f148796d = roomMoreFunctionDialog;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RequestResult<Object> requestResult) {
            SoulHouseContainer soulHouseContainerP0;
            List<String> funcMode;
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if ((requestResult == null || requestResult.getResult()) ? false : true) {
                b80.n0.h(requestResult.getFailedMsg(), new Object[0]);
                return;
            }
            if (kotlin.jvm.internal.v.e(this.f148795c, Boolean.TRUE)) {
                RoomChatEngineManager.getInstance().stopMusic();
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f148796d.dataBus);
                if (soulHouseDriverJ0 != null) {
                    soulHouseDriverJ0.removeX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.O());
                    SoulHouseContainer soulHouseContainerP1 = soulHouseDriverJ0.p0();
                    if (soulHouseContainerP1 != null) {
                        soulHouseContainerP1.C(BlockMessage.SONG_MACHINE_CLOSE);
                    }
                    ChatRoomModel chatRoomModelV = soulHouseDriverJ0.a1().v();
                    if (chatRoomModelV != null && (funcMode = chatRoomModelV.getFuncMode()) != null) {
                        funcMode.remove("live_song");
                    }
                }
            } else {
                SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.f148796d.dataBus);
                if (soulHouseDriverJ1 != null) {
                    soulHouseDriverJ1.provideX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.O(), new MusicMachineInfo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, false, null, null, null, null, null, 16777215, null));
                }
                SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.f148796d.dataBus);
                if (soulHouseDriverJ2 != null && (soulHouseContainerP0 = soulHouseDriverJ2.p0()) != null) {
                    soulHouseContainerP0.C(BlockMessage.SONG_MACHINE_OPEN);
                }
            }
            this.f148796d.dismiss();
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 94, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 73, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (!SwitchUtil.f162115a.j()) {
            return false;
        }
        IAudioServiceExt iAudioServiceExtB = j5.a.b();
        return !kotlin.jvm.internal.v.e(iAudioServiceExtB != null ? iAudioServiceExtB.getHolderName() : null, "MusicLevitate");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A1(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 76, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        h30.g gVar = h30.g.f225309a;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        ((ObservableSubscribeProxy) gVar.ba(soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null, cn.soulapp.android.client.component.middle.platform.utils.user.a.w(), Integer.valueOf(i11)).as(com.uber.autodispose.b.a(com.uber.autodispose.android.lifecycle.b.e(getActivity())))).subscribe(HttpSubscriber.create(new k(i11)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B0() {
        a60.c0 c0VarY;
        RoomUser f1768a;
        a60.c0 c0VarY2;
        RoomUser f1768a2;
        a60.c0 c0VarY3;
        RoomUser f1768a3;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 77, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        cn.soul.android.component.a aVarE = SoulRouter.j().e("/chat/partyGroupList");
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        String avatarName = null;
        cn.soul.android.component.a aVarA = aVarE.A("ownerIdEcpt", cn.soulapp.android.client.component.middle.platform.utils.user.a.b((soulHouseDriverJ0 == null || (c0VarY3 = SoulHouseExtensionKt.Y(soulHouseDriverJ0)) == null || (f1768a3 = c0VarY3.getF1768a()) == null) ? null : f1768a3.getUserId()));
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        cn.soul.android.component.a aVarA2 = aVarA.A("roomId", soulHouseDriverJ1 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ1) : null);
        SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.dataBus);
        cn.soul.android.component.a aVarA3 = aVarA2.A("ownerName", (soulHouseDriverJ2 == null || (c0VarY2 = SoulHouseExtensionKt.Y(soulHouseDriverJ2)) == null || (f1768a2 = c0VarY2.getF1768a()) == null) ? null : f1768a2.getSignature());
        SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ3 != null && (c0VarY = SoulHouseExtensionKt.Y(soulHouseDriverJ3)) != null && (f1768a = c0VarY.getF1768a()) != null) {
            avatarName = f1768a.getAvatarName();
        }
        aVarA3.A("ownerAvatarName", avatarName).d();
        SKV.single().putBoolean(cn.soulapp.android.client.component.middle.platform.utils.user.a.w() + "chat_room_group_chat_red_point", false);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    public final void B1(Boolean isOpenMusicalOpened) {
        if (!PatchProxy.proxy(new Object[]{isOpenMusicalOpened}, this, changeQuickRedirect, false, 78, new Class[]{Boolean.class}, Void.TYPE).isSupported && a1()) {
            h30.g gVar = h30.g.f225309a;
            Pair[] pairArr = new Pair[2];
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
            pairArr[0] = new Pair("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
            pairArr[1] = new Pair("type", Integer.valueOf(!kotlin.jvm.internal.v.e(isOpenMusicalOpened, Boolean.TRUE) ? 1 : 0));
            AnyExtKt.c(gVar.s9(kotlin.collections.r0.n(pairArr)), this).subscribeWith(HttpSubscriber.create(new l(isOpenMusicalOpened, this)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C0() {
        RoomIntentData roomIntentData;
        a60.w wVar;
        ArrayList<GroupClassifyDetailBean> arrayListA;
        RoomDataManager roomDataManagerA1;
        BulletGameSlice bulletGameSlice;
        BulletGameInfo bulletGameInfo;
        Integer state;
        GuineaPigGameSlice guineaPigGameSlice;
        GuineaPigInfo guineaPigInfo;
        MyInfoInRoom myInfoInRoomZ;
        RoomUser me2;
        Integer enableExit;
        Integer enableClose;
        H5PlaySlice h5PlaySlice;
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 55, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        CommonUtil commonUtil = CommonUtil.f161882a;
        String recExt = null;
        if (commonUtil.B1(SoulHouseExtensionKt.j0(this.dataBus))) {
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
            H5PlayGameStatusBean h5PlayGameStatusBean = (soulHouseDriverJ0 == null || (h5PlaySlice = (H5PlaySlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.t())) == null) ? null : h5PlaySlice.getH5PlayGameStatusBean();
            if (a1()) {
                if ((h5PlayGameStatusBean == null || (enableClose = h5PlayGameStatusBean.getEnableClose()) == null || enableClose.intValue() != 1) ? false : true) {
                    ExtensionsKt.toast("游戏中，不可关闭");
                    return;
                }
            } else {
                if ((h5PlayGameStatusBean == null || (enableExit = h5PlayGameStatusBean.getEnableExit()) == null || enableExit.intValue() != 1) ? false : true) {
                    ExtensionsKt.toast("游戏中，不可退出房间");
                    return;
                }
            }
        }
        cn.soulapp.cpnt_voiceparty.function.b0 b0Var = cn.soulapp.cpnt_voiceparty.function.b0.f142548a;
        if (b0Var.o(SoulHouseExtensionKt.j0(this.dataBus))) {
            if (a1()) {
                o1(this, false, 1, null);
                return;
            } else if (!a1()) {
                SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
                if ((soulHouseDriverJ1 == null || (myInfoInRoomZ = SoulHouseExtensionKt.z(soulHouseDriverJ1)) == null || (me2 = myInfoInRoomZ.getMe()) == null || !me2.gaming()) ? false : true) {
                    u1();
                    return;
                }
            }
        }
        if (a1()) {
            DataBus dataBus = this.dataBus;
            cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154991p;
            if (b0Var.k(dataBus, Integer.valueOf(hVar.getId()), Integer.valueOf(hVar.getGroupType()))) {
                SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.dataBus);
                if ((soulHouseDriverJ2 == null || (guineaPigGameSlice = (GuineaPigGameSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ2, SliceManager.INSTANCE.s())) == null || (guineaPigInfo = guineaPigGameSlice.getGuineaPigInfo()) == null || !guineaPigInfo.isInGameState()) ? false : true) {
                    ExtensionsKt.toast("豚豚鼠之王正在进行中，需先将其关闭");
                    return;
                }
            }
        }
        if (a1() && commonUtil.H0(this.dataBus)) {
            SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(this.dataBus);
            if ((soulHouseDriverJ3 == null || (bulletGameSlice = (BulletGameSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ3, SliceManager.INSTANCE.i())) == null || (bulletGameInfo = bulletGameSlice.getBulletGameInfo()) == null || (state = bulletGameInfo.getState()) == null || state.intValue() != 3) ? false : true) {
                ExtensionsKt.toast(commonUtil.R(SoulHouseExtensionKt.j0(this.dataBus)) + "正在进行中，需先将其关闭");
                return;
            }
        }
        if (commonUtil.G1(SoulHouseExtensionKt.j0(this.dataBus))) {
            SoulHouseDriver soulHouseDriverJ4 = SoulHouseExtensionKt.j0(this.dataBus);
            FragmentManager childFragmentManager = getChildFragmentManager();
            kotlin.jvm.internal.v.i(childFragmentManager, "childFragmentManager");
            commonUtil.l2(soulHouseDriverJ4, true, childFragmentManager, (16 & 8) != 0 ? null : new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$exitRoom$1
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
                    this.this$0.c1();
                }
            }, (16 & 16) != 0 ? null : null);
            return;
        }
        if (a1() && commonUtil.H1(SoulHouseExtensionKt.j0(this.dataBus))) {
            FragmentManager childFragmentManager2 = getChildFragmentManager();
            kotlin.jvm.internal.v.i(childFragmentManager2, "childFragmentManager");
            commonUtil.n2("比赛正在进行中，无法关闭房间，是否结束比赛？", childFragmentManager2, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$exitRoom$2
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
                    this.this$0.G0().b(this.this$0.dataBus);
                    this.this$0.dismiss();
                }
            });
            return;
        }
        if (a1()) {
            o1(this, false, 1, null);
            return;
        }
        SoulHouseDriver soulHouseDriverJ5 = SoulHouseExtensionKt.j0(this.dataBus);
        boolean z12 = ((soulHouseDriverJ5 == null || (roomDataManagerA1 = soulHouseDriverJ5.a1()) == null) ? 0 : roomDataManagerA1.K()) > 2;
        SoulHouseDriver soulHouseDriverJ6 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ6 != null && (wVar = (a60.w) soulHouseDriverJ6.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.X())) != null && (arrayListA = wVar.a()) != null && arrayListA.isEmpty()) {
            z11 = true;
        }
        if (a1() && z12 && z11) {
            N0();
            return;
        }
        cn.soulapp.cpnt_voiceparty.util.track.a aVar = cn.soulapp.cpnt_voiceparty.util.track.a.f162372a;
        SoulHouseDriver soulHouseDriverJ7 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ7 != null && (roomIntentData = (RoomIntentData) soulHouseDriverJ7.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.l0())) != null) {
            recExt = roomIntentData.getRecExt();
        }
        aVar.d1("0", recExt);
        t1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C1(String str, IPageParams iPageParams) {
        if (PatchProxy.proxy(new Object[]{str, iPageParams}, this, changeQuickRedirect, false, 80, new Class[]{String.class, IPageParams.class}, Void.TYPE).isSupported) {
            return;
        }
        HashMap map = new HashMap();
        map.put("Type", str);
        SoulAnalyticsV2.getInstance().onEvent(Const.EventType.CLICK, "GroupChatDetail_CloseRoomClk", iPageParams != null ? iPageParams.id() : null, iPageParams != null ? iPageParams.params() : null, map);
    }

    private final boolean D0() {
        ThrowingThunderSlice throwingThunderSlice;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 67, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (!CommonUtil.r1(SoulHouseExtensionKt.j0(this.dataBus))) {
            return false;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        ThrowingThunderInfo throwingThunderInfo = (soulHouseDriverJ0 == null || (throwingThunderSlice = (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.P())) == null) ? null : throwingThunderSlice.getThrowingThunderInfo();
        if (!(throwingThunderInfo != null && throwingThunderInfo.isOnSeat(cn.soulapp.android.client.component.middle.platform.utils.user.a.w())) || !throwingThunderInfo.inSpecialStage()) {
            return false;
        }
        ArrayList<ThrowingThunderUserInfo> playerUserList = throwingThunderInfo.getPlayerUserList();
        return (playerUserList != null ? playerUserList.size() : 0) <= 2;
    }

    private final void D1(FunctionMoreBean functionMoreBean) {
        RoomUser roomUserA;
        RoomUser roomUserJ;
        JoinRoomBean joinRoomBean;
        if (PatchProxy.proxy(new Object[]{functionMoreBean}, this, changeQuickRedirect, false, 53, new Class[]{FunctionMoreBean.class}, Void.TYPE).isSupported) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        RoomDataManager roomDataManagerA1 = soulHouseDriverJ0 != null ? soulHouseDriverJ0.a1() : null;
        String str = (roomDataManagerA1 == null || (joinRoomBean = roomDataManagerA1.getJoinRoomBean()) == null) ? null : joinRoomBean.roomId;
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("room_id", str);
        String userId = (roomDataManagerA1 == null || (roomUserJ = roomDataManagerA1.J()) == null) ? null : roomUserJ.getUserId();
        linkedHashMap.put("host_id", userId != null ? userId : "");
        linkedHashMap.put("room_role", (roomDataManagerA1 == null || (roomUserA = RoomDataManager.A(roomDataManagerA1, false, 1, null)) == null) ? null : Integer.valueOf(roomUserA.getRole()));
        linkedHashMap.put("buttonMessage", functionMoreBean.getName());
        linkedHashMap.put("joinUniqueCode", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.v(soulHouseDriverJ0) : null);
        linkedHashMap.put("JoinCode", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.r(soulHouseDriverJ0) : null);
        SoulAnalyticsV2.getInstance().onEvent(Const.EventType.CLICK, "GroupChatDetail_MoreFunction_BtnClk", linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CommonSlice E0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 83, new Class[0], CommonSlice.class);
        if (patchProxyResultProxy.isSupported) {
            return (CommonSlice) patchProxyResultProxy.result;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null) {
            return (CommonSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.n());
        }
        return null;
    }

    private final void E1(IPageParams iPageParams) {
        if (PatchProxy.proxy(new Object[]{iPageParams}, this, changeQuickRedirect, false, 79, new Class[]{IPageParams.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulAnalyticsV2.getInstance().onEvent("exp", "GroupChatDetail_CloseRoomExp", iPageParams != null ? iPageParams.id() : null, iPageParams != null ? iPageParams.params() : null, kotlin.collections.r0.j());
    }

    private final boolean F0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : ((Boolean) this.exitUnBindDialog.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F1(int i11) {
        RoomDataManager roomDataManagerA1;
        JoinRoomBean joinRoomBean;
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 25, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        cn.soul.android.middle.platform.utils.i iVar = cn.soul.android.middle.platform.utils.i.f11984c;
        Pair[] pairArr = new Pair[5];
        String str = (soulHouseDriverJ0 == null || (roomDataManagerA1 = soulHouseDriverJ0.a1()) == null || (joinRoomBean = roomDataManagerA1.getJoinRoomBean()) == null) ? null : joinRoomBean.roomId;
        if (str == null) {
            str = "";
        }
        pairArr[0] = kotlin.m.a("roomid", str);
        pairArr[1] = kotlin.m.a("exp_value", j30.a.f228363a.a());
        pairArr[2] = kotlin.m.a("Type", Integer.valueOf(i11));
        pairArr[3] = kotlin.m.a("JoinCode", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.r(soulHouseDriverJ0) : null);
        pairArr[4] = kotlin.m.a("joinUniqueCode", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.v(soulHouseDriverJ0) : null);
        iVar.a("GroupChat_RoomDetail_quick_msg_setting_change", kotlin.collections.r0.l(pairArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GameViewModel G0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], GameViewModel.class);
        return patchProxyResultProxy.isSupported ? (GameViewModel) patchProxyResultProxy.result : (GameViewModel) this.gameViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RoomFunctionMoreItemAdapter H0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], RoomFunctionMoreItemAdapter.class);
        return patchProxyResultProxy.isSupported ? (RoomFunctionMoreItemAdapter) patchProxyResultProxy.result : (RoomFunctionMoreItemAdapter) this.mBottomAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RoomFunctionMoreItemAdapter I0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], RoomFunctionMoreItemAdapter.class);
        return patchProxyResultProxy.isSupported ? (RoomFunctionMoreItemAdapter) patchProxyResultProxy.result : (RoomFunctionMoreItemAdapter) this.mTopAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int J0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 32, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        Context context = getContext();
        Object systemService = context != null ? context.getSystemService("window") : null;
        WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        Display defaultDisplay = windowManager != null ? windowManager.getDefaultDisplay() : null;
        if (defaultDisplay != null) {
            return (int) defaultDisplay.getRefreshRate();
        }
        return 0;
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    private final void K0() {
        SoulHouseDriver soulHouseDriverJ0;
        String strP;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 60, new Class[0], Void.TYPE).isSupported || (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus)) == null || (strP = SoulHouseExtensionKt.P(soulHouseDriverJ0)) == null) {
            return;
        }
        AnyExtKt.c(h30.g.f225309a.k4(kotlin.collections.r0.l(kotlin.m.a("roomId", strP))), this).subscribeWith(HttpSubscriber.create(new d()));
    }

    private final void L0() {
        if (!PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 11, new Class[0], Void.TYPE).isSupported && cn.soulapp.cpnt_voiceparty.util.e.f162158a.z0()) {
            ty.q.J(((ISoulHouse) ty.q.z(ISoulHouse.class)).getSongListPlayCount(), new e());
        }
    }

    private final ChatRoomSwitches M0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], ChatRoomSwitches.class);
        if (patchProxyResultProxy.isSupported) {
            return (ChatRoomSwitches) patchProxyResultProxy.result;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null) {
            return (ChatRoomSwitches) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.j());
        }
        return null;
    }

    private final void N0() {
        String string;
        RoomLimitConfig roomLimitConfigU;
        int i11 = 0;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 64, new Class[0], Void.TYPE).isSupported || getActivity() == null || requireActivity().isDestroyed() || requireActivity().isFinishing()) {
            return;
        }
        FragmentActivity activity = getActivity();
        E1(activity instanceof SoulHouseActivity ? (SoulHouseActivity) activity : null);
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null && (roomLimitConfigU = SoulHouseExtensionKt.U(soulHouseDriverJ0)) != null) {
            i11 = roomLimitConfigU.surplusCreateRoomCount;
        }
        if (i11 > 0) {
            string = "半小时内只能创建" + i11 + "个派对哦";
        } else {
            string = getString(R$string.f130097b0);
            kotlin.jvm.internal.v.i(string, "{\n            getString(…m_tip_no_times)\n        }");
        }
        SoulDialog.Companion companion = SoulDialog.INSTANCE;
        final SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
        attributeConfig.W(SoulDialogType.P12);
        attributeConfig.h0("解散前是否邀请成员\n加入派对群？");
        attributeConfig.U("没有聊够？创建群组后可以和这些有趣的Souler们继续畅聊哦~" + string + "~解散派对后，其他成员也会被踢出");
        attributeConfig.S("直接解散");
        attributeConfig.M("解散并邀请");
        attributeConfig.e0(true);
        attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$guideToCreateGroup$1$1
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
                SoulHouseExtensionKt.w0(attributeConfig, "exit", "点击 直接解散");
                RoomMoreFunctionDialog roomMoreFunctionDialog = this;
                FragmentActivity activity2 = roomMoreFunctionDialog.getActivity();
                roomMoreFunctionDialog.C1("0", activity2 instanceof SoulHouseActivity ? (SoulHouseActivity) activity2 : null);
                this.c1();
            }
        });
        attributeConfig.J(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$guideToCreateGroup$1$2
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
                RoomMoreFunctionDialog roomMoreFunctionDialog = this.this$0;
                FragmentActivity activity2 = roomMoreFunctionDialog.getActivity();
                roomMoreFunctionDialog.C1("1", activity2 instanceof SoulHouseActivity ? (SoulHouseActivity) activity2 : null);
                this.this$0.W0();
            }
        });
        SoulDialog soulDialogA = companion.a(attributeConfig);
        FragmentManager childFragmentManager = getChildFragmentManager();
        kotlin.jvm.internal.v.i(childFragmentManager, "childFragmentManager");
        soulDialogA.n(childFragmentManager);
    }

    private final void O0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 12, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        U0();
        P0();
    }

    private final void P0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 14, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (a1() || X0()) {
            Q0();
            GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 4);
            View mRootView = getMRootView();
            int i11 = R$id.cS;
            ((RecyclerView) mRootView.findViewById(i11)).setLayoutManager(gridLayoutManager);
            ((RecyclerView) getMRootView().findViewById(i11)).setAdapter(H0());
            H0().setNewInstance(this.bottomFuncData);
        }
    }

    private final void Q0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 16, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (this.bottomFuncData == null) {
            this.bottomFuncData = new ArrayList<>();
        }
        ArrayList<FunctionMoreBean> arrayList = this.bottomFuncData;
        if (arrayList != null) {
            if (!a1()) {
                if (X0()) {
                    v0(arrayList);
                    if (SwitchUtil.f162115a.c0()) {
                        h0(arrayList);
                    }
                    Y(arrayList);
                    t0(arrayList);
                    u0(arrayList);
                    W(arrayList);
                    n0(arrayList);
                    d0(arrayList);
                    if (!Y0()) {
                        p0(arrayList);
                    }
                    X(arrayList);
                    f0(arrayList);
                    return;
                }
                return;
            }
            if (Y0()) {
                v0(arrayList);
                m0(arrayList);
                g0(arrayList);
                u0(arrayList);
                b0(arrayList);
                k0(arrayList);
                W(arrayList);
                n0(arrayList);
                a0(arrayList);
                X(arrayList);
                f0(arrayList);
                return;
            }
            v0(arrayList);
            if (SwitchUtil.f162115a.c0()) {
                h0(arrayList);
            }
            m0(arrayList);
            r0(arrayList);
            d0(arrayList);
            b0(arrayList);
            u0(arrayList);
            g0(arrayList);
            W(arrayList);
            n0(arrayList);
            p0(arrayList);
            w0(arrayList);
            X(arrayList);
            y0(arrayList);
            f0(arrayList);
        }
    }

    private final void R0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 52, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) getMRootView().findViewById(R$id.Sc);
        frameLayout.setOnClickListener(new f(frameLayout, 500L, this));
        I0().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.d2
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                RoomMoreFunctionDialog.S0(this.f149479a, baseQuickAdapter, view, i11);
            }
        });
        H0().setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.e2
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                RoomMoreFunctionDialog.T0(this.f149485a, baseQuickAdapter, view, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(RoomMoreFunctionDialog this$0, BaseQuickAdapter adapter, View view, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 87, new Class[]{RoomMoreFunctionDialog.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(adapter, "adapter");
        kotlin.jvm.internal.v.j(view, "<anonymous parameter 1>");
        FunctionMoreBean functionMoreBean = (FunctionMoreBean) adapter.getData().get(i11);
        if (functionMoreBean == null) {
            return;
        }
        functionMoreBean.getOnclick().invoke();
        this$0.D1(functionMoreBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(RoomMoreFunctionDialog this$0, BaseQuickAdapter adapter, View view, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 88, new Class[]{RoomMoreFunctionDialog.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(adapter, "adapter");
        kotlin.jvm.internal.v.j(view, "<anonymous parameter 1>");
        FunctionMoreBean functionMoreBean = (FunctionMoreBean) adapter.getData().get(i11);
        if (functionMoreBean == null) {
            return;
        }
        functionMoreBean.getOnclick().invoke();
        this$0.D1(functionMoreBean);
    }

    private final void U0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        V0();
        ((MaxHeightNestedScrollView) getMRootView().findViewById(R$id.CR)).setMaxHeight(ExtensionsKt.dp(723));
        View mRootView = getMRootView();
        int i11 = R$id.AT;
        RecyclerView recyclerView = (RecyclerView) mRootView.findViewById(i11);
        final Context context = getContext();
        final int i12 = Y0() ? 3 : 4;
        recyclerView.setLayoutManager(new GridLayoutManager(context, i12) { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$initTopAdapter$1
            public static ChangeQuickRedirect changeQuickRedirect;

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }
        });
        ((RecyclerView) getMRootView().findViewById(i11)).setAdapter(I0());
        I0().setNewInstance(this.topFuncData);
    }

    private final void V0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 15, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (this.topFuncData == null) {
            this.topFuncData = new ArrayList<>();
        }
        ArrayList<FunctionMoreBean> arrayList = this.topFuncData;
        if (arrayList != null) {
            if (a1() || X0()) {
                Z(arrayList);
                o0(arrayList);
                j0(arrayList);
                e0(arrayList);
                return;
            }
            v0(arrayList);
            if (SwitchUtil.f162115a.c0()) {
                h0(arrayList);
            }
            t0(arrayList);
            u0(arrayList);
            W(arrayList);
            n0(arrayList);
            i0(arrayList);
            q0(arrayList);
            l0(arrayList);
            e0(arrayList);
            c0(arrayList);
            X(arrayList);
            x0(arrayList);
            s0(arrayList);
            f0(arrayList);
        }
    }

    private final void W(ArrayList<FunctionMoreBean> arrayList) {
        JoinRoomBean joinRoomBeanT;
        RoomCustomConfig roomCustomConfig;
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 37, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        final boolean z11 = cn.soulapp.lib.utils.ext.n.d((soulHouseDriverJ0 == null || (joinRoomBeanT = SoulHouseExtensionKt.t(soulHouseDriverJ0)) == null || (roomCustomConfig = joinRoomBeanT.customConfig) == null) ? null : roomCustomConfig.getCloseGiftEffect()) == 1;
        arrayList.add(new FunctionMoreBean(((Number) ExtensionsKt.select(z11, Integer.valueOf(R$drawable.f127224g9), Integer.valueOf(R$drawable.f127244h9))).intValue(), "礼物屏蔽", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addAnimationBannedFunc$1
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
                UserActionAssistant userActionAssistant = (UserActionAssistant) AssistantManager.f144995a.b(UserActionAssistant.class);
                if (userActionAssistant != null) {
                    String str = (String) ExtensionsKt.select(z11, "0", "1");
                    final boolean z12 = z11;
                    final RoomMoreFunctionDialog roomMoreFunctionDialog = this;
                    userActionAssistant.updateCustomConfig("closeGiftEffect", str, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addAnimationBannedFunc$1.1
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
                            JoinRoomBean joinRoomBeanT2;
                            RoomCustomConfig roomCustomConfig2;
                            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                                return;
                            }
                            ExtensionsKt.toast(ExtensionsKt.select(z12, "已恢复礼物动画展示", "已为您屏蔽其他用户1000Soul币以下礼物动画"));
                            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
                            if (soulHouseDriverJ1 == null || (joinRoomBeanT2 = SoulHouseExtensionKt.t(soulHouseDriverJ1)) == null || (roomCustomConfig2 = joinRoomBeanT2.customConfig) == null) {
                                return;
                            }
                            roomCustomConfig2.setCloseGiftEffect((String) ExtensionsKt.select(z12, "0", "1"));
                        }
                    });
                }
                this.dismiss();
            }
        }, 124, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 65, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        h30.g gVar = h30.g.f225309a;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        ((ObservableSubscribeProxy) gVar.w5(soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null).as(com.uber.autodispose.b.a(com.uber.autodispose.android.lifecycle.b.e(getActivity())))).subscribe(HttpSubscriber.create(new g()));
    }

    private final void X(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 45, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.battery.b bVar = cn.soulapp.cpnt_voiceparty.soulhouse.battery.b.f145891a;
        if (bVar.e()) {
            final boolean zF = bVar.f();
            arrayList.add(new FunctionMoreBean(zF ? R$drawable.Ue : R$drawable.V4, "省电模式", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addBatteryModeFunc$1
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
                    FragmentManager supportFragmentManager;
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                        return;
                    }
                    cn.soulapp.cpnt_voiceparty.soulhouse.battery.c.f145898a.b(SoulHouseExtensionKt.j0(this.this$0.dataBus), zF);
                    FragmentActivity activity = this.this$0.getActivity();
                    if (activity != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
                        BatteryModeSettingDialog.f145882g.a(this.this$0.dataBus, 1).show(supportFragmentManager, "BatteryModeSettingDialog");
                    }
                    this.this$0.dismiss();
                }
            }, 124, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean X0() {
        MyInfoInRoom myInfoInRoomZ;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        return (soulHouseDriverJ0 == null || (myInfoInRoomZ = SoulHouseExtensionKt.z(soulHouseDriverJ0)) == null || !myInfoInRoomZ.getIsManager()) ? false : true;
    }

    private final void Y(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 34, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.f127582y8, "公告板", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addChatBoardFunc$1
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
                SoulHouseContainer soulHouseContainerP0;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.dismiss();
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                if (soulHouseDriverJ0 == null || (soulHouseContainerP0 = soulHouseDriverJ0.p0()) == null) {
                    return;
                }
                soulHouseContainerP0.C(BlockMessage.MSG_SHOW_NOTICE_DIALOG);
            }
        }, 124, null));
    }

    private final boolean Y0() {
        ChatRoomModel chatRoomModelF;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        return ((soulHouseDriverJ0 == null || (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriverJ0)) == null) ? 0 : chatRoomModelF.createFrom) == 4;
    }

    private final void Z(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 26, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.f127602z8, "连麦管理", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addConnectMicManager$1
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
                this.this$0.dismiss();
                this.this$0.f1();
            }
        }, 124, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean Z0() {
        RoomDataManager roomDataManagerA1;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 58, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        return kotlin.jvm.internal.v.e((soulHouseDriverJ0 == null || (roomDataManagerA1 = soulHouseDriverJ0.a1()) == null) ? null : roomDataManagerA1.C(), "1");
    }

    private final void a0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 40, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.f127266ib, "连线设置", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addConnectSettingFunc$1
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
                this.this$0.dismiss();
                FragmentActivity activity = this.this$0.getActivity();
                if (activity != null) {
                    MelancholyConnectSettingDialog.f143223q.a(this.this$0.dataBus).show(activity.getSupportFragmentManager(), kotlin.jvm.internal.z.b(MelancholyConnectSettingDialog.class).getSimpleName());
                }
            }
        }, 124, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a1() {
        MyInfoInRoom myInfoInRoomZ;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 == null || (myInfoInRoomZ = SoulHouseExtensionKt.z(soulHouseDriverJ0)) == null) {
            return false;
        }
        return myInfoInRoomZ.getIsOwner();
    }

    private final void b0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 35, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        ChatRoomSwitches chatRoomSwitchesM0 = M0();
        if (chatRoomSwitchesM0 != null ? kotlin.jvm.internal.v.e(chatRoomSwitchesM0.getGroupChat(), Boolean.TRUE) : false) {
            arrayList.add(new FunctionMoreBean(R$drawable.P8, "创建派对群", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addCreateGroupChatFunc$1
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
                    this.this$0.B0();
                }
            }, 124, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean b1() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 43, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        Integer numH = cn.soulapp.cpnt_voiceparty.function.b0.f142548a.h(this.dataBus);
        return numH != null && numH.intValue() == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.A.getId();
    }

    private final void c0(ArrayList<FunctionMoreBean> arrayList) {
        RoomDataManager roomDataManagerA1;
        JoinRoomBean joinRoomBean;
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 30, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null && soulHouseDriverJ0.getIsCanShowDislike()) {
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
            if ((soulHouseDriverJ1 == null || (roomDataManagerA1 = soulHouseDriverJ1.a1()) == null || (joinRoomBean = roomDataManagerA1.getJoinRoomBean()) == null || true != joinRoomBean.showRecFeedback) ? false : true) {
                List listJsonToArrayEntity = GsonTool.jsonToArrayEntity(ChatMKVUtil.f25980a.j().getString(cn.soulapp.android.client.component.middle.platform.utils.user.a.w() + "_more_dislike_room_id", ""), String.class);
                kotlin.jvm.internal.v.i(listJsonToArrayEntity, "jsonToArrayEntity(mmkv.g…(key, \"\"), T::class.java)");
                if (!CollectionsKt___CollectionsKt.g0(listJsonToArrayEntity, this.roomId)) {
                    arrayList.add(new FunctionMoreBean(R$drawable.T8, "不感兴趣", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addDislikeFeedback$1
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
                            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || this.this$0.isLoadDislikeData) {
                                return;
                            }
                            this.this$0.isLoadDislikeData = true;
                            this.this$0.d1();
                        }
                    }, 124, null));
                    return;
                }
            }
        }
        SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ2 == null) {
            return;
        }
        soulHouseDriverJ2.Z1(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AutoDispose"})
    public final void c1() {
        RoomIntentData roomIntentData;
        RoomDataManager roomDataManagerA1;
        RoomUser roomUserA;
        RoomDataManager roomDataManagerA2;
        JoinRoomBean joinRoomBean;
        MyInfoInRoom myInfoInRoomZ;
        a60.c0 c0VarY;
        MyInfoInRoom myInfoInRoomZ2;
        SoulHouseContainer soulHouseContainerP0;
        DataBus dataBus;
        ISlideContainer iSlideContainer;
        WeakReference weakReference;
        IPartyRoomHost iPartyRoomHost;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 72, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if ((soulHouseDriverJ0 != null ? (PartyRoomSource) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Z()) : null) == PartyRoomSource.VIDEO_FEED) {
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
            if (soulHouseDriverJ1 != null && (weakReference = (WeakReference) soulHouseDriverJ1.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Y())) != null && (iPartyRoomHost = (IPartyRoomHost) weakReference.get()) != null) {
                iPartyRoomHost.onRequestExitToFeed(ExitReason.USER_EXIT);
            }
            if (soulHouseDriverJ1 != null && (soulHouseContainerP0 = soulHouseDriverJ1.p0()) != null && (dataBus = soulHouseContainerP0.getDataBus()) != null && (iSlideContainer = (ISlideContainer) dataBus.d(cn.soulapp.cpnt_voiceparty.soulhouse.b.f145790a.G())) != null) {
                iSlideContainer.onRealExitRoom();
            }
            dismiss();
            return;
        }
        if (getActivity() instanceof ChatRoomListActivity) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                dismiss();
                ((ChatRoomListViewModel) new ViewModelProvider(activity).get(ChatRoomListViewModel.class)).k().setValue(Boolean.TRUE);
                return;
            }
            return;
        }
        SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.dataBus);
        final boolean isOwner = (soulHouseDriverJ2 == null || (myInfoInRoomZ2 = SoulHouseExtensionKt.z(soulHouseDriverJ2)) == null) ? false : myInfoInRoomZ2.getIsOwner();
        SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(this.dataBus);
        final String strP = soulHouseDriverJ3 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ3) : null;
        SoulHouseDriver soulHouseDriverJ4 = SoulHouseExtensionKt.j0(this.dataBus);
        final RoomUser f1768a = (soulHouseDriverJ4 == null || (c0VarY = SoulHouseExtensionKt.Y(soulHouseDriverJ4)) == null) ? null : c0VarY.getF1768a();
        SoulHouseDriver soulHouseDriverJ5 = SoulHouseExtensionKt.j0(this.dataBus);
        final boolean isManager = (soulHouseDriverJ5 == null || (myInfoInRoomZ = SoulHouseExtensionKt.z(soulHouseDriverJ5)) == null) ? false : myInfoInRoomZ.getIsManager();
        SoulHouseDriver soulHouseDriverJ6 = SoulHouseExtensionKt.j0(this.dataBus);
        final String recExt = soulHouseDriverJ6 != null ? soulHouseDriverJ6.getRecExt() : null;
        SoulHouseDriver soulHouseDriverJ7 = SoulHouseExtensionKt.j0(this.dataBus);
        final Boolean boolValueOf = (soulHouseDriverJ7 == null || (roomDataManagerA2 = soulHouseDriverJ7.a1()) == null || (joinRoomBean = roomDataManagerA2.getJoinRoomBean()) == null) ? null : Boolean.valueOf(joinRoomBean.showRecFeedback);
        SoulHouseDriver soulHouseDriverJ8 = SoulHouseExtensionKt.j0(this.dataBus);
        final long createTime = (soulHouseDriverJ8 == null || (roomDataManagerA1 = soulHouseDriverJ8.a1()) == null || (roomUserA = RoomDataManager.A(roomDataManagerA1, false, 1, null)) == null) ? 0L : roomUserA.getCreateTime();
        SoulHouseDriver soulHouseDriverJ9 = SoulHouseExtensionKt.j0(this.dataBus);
        final String joinCode = (soulHouseDriverJ9 == null || (roomIntentData = (RoomIntentData) soulHouseDriverJ9.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.l0())) == null) ? null : roomIntentData.getJoinCode();
        SoulHouseDriver soulHouseDriverJ10 = SoulHouseExtensionKt.j0(this.dataBus);
        final String strV = soulHouseDriverJ10 != null ? SoulHouseExtensionKt.v(soulHouseDriverJ10) : null;
        if (!isOwner) {
            z0();
        }
        SoulHouseDriver soulHouseDriverJ11 = SoulHouseExtensionKt.j0(this.dataBus);
        SoulHouseDriver soulHouseDriverJ12 = SoulHouseExtensionKt.j0(this.dataBus);
        cn.soulapp.cpnt_voiceparty.soulhouse.x.c(new e40.b(soulHouseDriverJ11, soulHouseDriverJ12 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ12) : null, null, 4, null), A0(), new Function1<e40.c, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$leaveRoom$2
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.w invoke(e40.c cVar) {
                invoke2(cVar);
                return kotlin.w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull e40.c it) {
                if (PatchProxy.proxy(new Object[]{it}, this, changeQuickRedirect, false, 2, new Class[]{e40.c.class}, Void.TYPE).isSupported) {
                    return;
                }
                kotlin.jvm.internal.v.j(it, "it");
                if (!this.this$0.A0()) {
                    this.this$0.dismiss();
                    CommonUtil.f161882a.u(this.this$0.dataBus);
                }
                RoomAssistant roomAssistant = (RoomAssistant) AssistantManager.f144995a.b(RoomAssistant.class);
                if (isOwner) {
                    if (roomAssistant != null) {
                        roomAssistant.getRoomDismissInfo(strP, f1768a);
                    }
                    CommonUtil.f161882a.Z1(Boolean.valueOf(isOwner));
                }
                if (!isOwner && !isManager && System.currentTimeMillis() - createTime < 60000) {
                    List listJsonToArrayEntity = GsonTool.jsonToArrayEntity(ChatMKVUtil.f25980a.j().getString(cn.soulapp.android.client.component.middle.platform.utils.user.a.w() + "_more_dislike_room_id", ""), String.class);
                    kotlin.jvm.internal.v.i(listJsonToArrayEntity, "jsonToArrayEntity(mmkv.g…(key, \"\"), T::class.java)");
                    if (!CollectionsKt___CollectionsKt.g0(listJsonToArrayEntity, strP) && kotlin.jvm.internal.v.e(Boolean.TRUE, boolValueOf)) {
                        String str = recExt;
                        if (!(str == null || str.length() == 0) && roomAssistant != null) {
                            String str2 = strP;
                            String str3 = recExt;
                            RoomUser roomUser = f1768a;
                            roomAssistant.getCloseDislikeData(str2, str3, roomUser != null ? roomUser.getUserId() : null, joinCode, strV);
                        }
                    }
                }
                if (this.this$0.A0()) {
                    return;
                }
                rk.d.i("60", null);
                SoulHouseDriver soulHouseDriverJ13 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                if (soulHouseDriverJ13 != null) {
                    SoulHouseDriver.e0(soulHouseDriverJ13, true, false, null, 6, null);
                }
                SoulHouseDriver soulHouseDriverJ14 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                if (soulHouseDriverJ14 != null) {
                    SoulHouseDriver.a0(soulHouseDriverJ14, null, 1, null);
                }
                cn.soulapp.android.client.component.middle.platform.utils.l2.p();
            }
        });
        if (A0()) {
            if (ApiEnv.INSTANCE.isSuper()) {
                b80.n0.h("新版退出房间", new Object[0]);
            }
            dismiss();
            CommonUtil.f161882a.u(this.dataBus);
            rk.d.i("60", null);
            SoulHouseDriver soulHouseDriverJ13 = SoulHouseExtensionKt.j0(this.dataBus);
            if (soulHouseDriverJ13 != null) {
                SoulHouseDriver.e0(soulHouseDriverJ13, true, false, null, 6, null);
            }
            SoulHouseDriver soulHouseDriverJ14 = SoulHouseExtensionKt.j0(this.dataBus);
            if (soulHouseDriverJ14 != null) {
                SoulHouseDriver.a0(soulHouseDriverJ14, null, 1, null);
            }
            cn.soulapp.android.client.component.middle.platform.utils.l2.p();
            cn.soulapp.cpnt_voiceparty.soulhouse.x.f160046a.b(SoulHouseExtensionKt.j0(this.dataBus));
        }
    }

    private final void d0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 18, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.A8, "进场动画", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addEnterAnimation$1
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
                FragmentManager supportFragmentManager;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.dismiss();
                FragmentActivity activity = this.this$0.getActivity();
                if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
                    return;
                }
                EnterAnimManageDialog.f148367h.a(this.this$0.dataBus).show(supportFragmentManager, "EnterAnimManageDialog");
            }
        }, 124, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d1() {
        String joinCode;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 31, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (cn.soulapp.android.chatroom.utils.r.f26178a.c()) {
            this.isLoadDislikeData = false;
            FragmentActivity activity = getActivity();
            FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
            dismiss();
            if (supportFragmentManager != null) {
                RoomMoreDislikeV2Dialog.INSTANCE.a(SoulHouseExtensionKt.j0(this.dataBus)).show(supportFragmentManager, "roomMoreDislike");
            }
        } else {
            register((Disposable) AnyExtKt.c(h30.g.f225309a.h4("room"), this).subscribeWith(HttpSubscriber.create(new h())));
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null) {
            cn.soulapp.cpnt_voiceparty.ui.dislike.a aVar = cn.soulapp.cpnt_voiceparty.ui.dislike.a.f161044a;
            String strP = SoulHouseExtensionKt.P(soulHouseDriverJ0);
            String recExt = soulHouseDriverJ0.getRecExt();
            RoomIntentData roomIntentData = (RoomIntentData) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.l0());
            if (roomIntentData == null || (joinCode = roomIntentData.getJoinCode()) == null) {
                joinCode = "";
            }
            DataBus dataBus = this.dataBus;
            aVar.a(strP, recExt, joinCode, dataBus != null ? SoulHouseExtensionKt.u(dataBus) : null);
        }
    }

    private final void e0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 29, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.V8, "异常反馈", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addExceptionFeedback$1
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
                String string;
                JoinRoomBean joinRoomBeanT;
                ChatRoomModel chatRoomModel;
                MyKtvSongInfo myKtvSongInfo;
                MyKtvSongInfo myKtvSongInfo2;
                RoomDataManager roomDataManagerA1;
                RoomUser roomUserA;
                MyInfoInRoom myInfoInRoomZ;
                RoomUser me2;
                MyInfoInRoom myInfoInRoomZ2;
                RoomUser me3;
                JoinRoomBean joinRoomBeanT2;
                ChatRoomModel chatRoomModel2;
                JoinRoomBean joinRoomBeanT3;
                FmExtInfo fmExtInfo;
                JoinRoomBean joinRoomBeanT4;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.dismiss();
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                if (((soulHouseDriverJ0 == null || (joinRoomBeanT4 = SoulHouseExtensionKt.t(soulHouseDriverJ0)) == null) ? null : joinRoomBeanT4.fmExtInfo) != null) {
                    StringBuilder sb2 = new StringBuilder();
                    SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                    sb2.append((soulHouseDriverJ1 == null || (joinRoomBeanT3 = SoulHouseExtensionKt.t(soulHouseDriverJ1)) == null || (fmExtInfo = joinRoomBeanT3.fmExtInfo) == null) ? null : fmExtInfo.getShowFmCode());
                    sb2.append(",roomid");
                    SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                    sb2.append(soulHouseDriverJ2 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ2) : null);
                    string = sb2.toString();
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                    sb3.append((soulHouseDriverJ3 == null || (joinRoomBeanT = SoulHouseExtensionKt.t(soulHouseDriverJ3)) == null || (chatRoomModel = joinRoomBeanT.chatRoomModel) == null) ? null : chatRoomModel.getRoomUCode());
                    sb3.append(",roomid");
                    SoulHouseDriver soulHouseDriverJ4 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                    sb3.append(soulHouseDriverJ4 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ4) : null);
                    string = sb3.toString();
                }
                cn.soulapp.cpnt_voiceparty.function.b0 b0Var = cn.soulapp.cpnt_voiceparty.function.b0.f142548a;
                Integer numH = b0Var.h(this.this$0.dataBus);
                SoulHouseDriver soulHouseDriverJ5 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                String str = (soulHouseDriverJ5 == null || (joinRoomBeanT2 = SoulHouseExtensionKt.t(soulHouseDriverJ5)) == null || (chatRoomModel2 = joinRoomBeanT2.chatRoomModel) == null) ? null : chatRoomModel2.voiceChannelCode;
                SoulHouseDriver soulHouseDriverJ6 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                String microState = (soulHouseDriverJ6 == null || (myInfoInRoomZ2 = SoulHouseExtensionKt.z(soulHouseDriverJ6)) == null || (me3 = myInfoInRoomZ2.getMe()) == null) ? null : me3.getMicroState();
                SoulHouseDriver soulHouseDriverJ7 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                String microSwitchState = (soulHouseDriverJ7 == null || (myInfoInRoomZ = SoulHouseExtensionKt.z(soulHouseDriverJ7)) == null || (me2 = myInfoInRoomZ.getMe()) == null) ? null : me2.getMicroSwitchState();
                HashMap map = new HashMap();
                SoulHouseDriver soulHouseDriverJ8 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                int role = 2;
                int role2 = (soulHouseDriverJ8 == null || (roomDataManagerA1 = soulHouseDriverJ8.a1()) == null || (roomUserA = RoomDataManager.A(roomDataManagerA1, false, 1, null)) == null) ? 2 : roomUserA.getRole();
                if (this.this$0.getContext() != null) {
                    RoomMoreFunctionDialog roomMoreFunctionDialog = this.this$0;
                    cn.soulapp.cpnt_voiceparty.util.w0 w0Var = cn.soulapp.cpnt_voiceparty.util.w0.f162456a;
                    map.put(com.alipay.sdk.m.m.b.f175601k, w0Var.d());
                    map.put("hf", w0Var.a());
                    map.put("r", w0Var.c(role2));
                    if (cn.soulapp.cpnt_voiceparty.function.b0.m(b0Var, roomMoreFunctionDialog.dataBus, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154983h.getId()), null, 4, null)) {
                        SoulHouseDriver soulHouseDriverJ9 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
                        if (((soulHouseDriverJ9 == null || (myKtvSongInfo2 = (MyKtvSongInfo) soulHouseDriverJ9.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.S())) == null) ? null : myKtvSongInfo2.getCurSong()) != null) {
                            SoulHouseDriver soulHouseDriverJ10 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
                            if (soulHouseDriverJ10 != null && (myKtvSongInfo = (MyKtvSongInfo) soulHouseDriverJ10.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.S())) != null) {
                                role = myKtvSongInfo.getRole();
                            }
                            map.put("ktv_r", w0Var.b(role));
                        }
                    }
                    map.put("r_v", String.valueOf(RoomChatEngineManager.getInstance().getPlaybackVolume()));
                    map.put("p_v", String.valueOf(RoomChatEngineManager.getInstance().getRecordingVolume()));
                    map.put("t_fps", String.valueOf(roomMoreFunctionDialog.J0()));
                    BatteryMonitor.Companion companion = BatteryMonitor.INSTANCE;
                    cn.soul.insight.apm.battery.internal.b bVarM = companion.m();
                    if (bVarM != null) {
                        map.put("b_l", String.valueOf(bVarM.a() / 100));
                        map.put("b_t", String.valueOf(bVarM.b() / 10.0f));
                    }
                    Boolean boolP = companion.p();
                    if (boolP != null) {
                        map.put("b_is_c", boolP.booleanValue() ? "1" : "0");
                    }
                    Boolean boolB = VoiceTransHelper.INSTANCE.b();
                    if (boolB != null) {
                        map.put("v_s", boolB.booleanValue() ? "1" : "0");
                    }
                }
                a60.l.f1777a.n(cn.soulapp.android.client.component.middle.platform.cons.h5.Const.f27548a + "webview/#/exception-feedback?fm=" + string + "&playType=" + numH + "&channel=" + str + "&seat=" + microState + "&micro=" + microSwitchState + "&extInfo=" + URLEncoder.encode(cn.soulapp.imlib.utils.j.b(map)));
            }
        }, 124, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AutoDispose", "CheckResult"})
    public final void e1(RecSwitchBean recSwitchBean) {
        if (PatchProxy.proxy(new Object[]{recSwitchBean}, this, changeQuickRedirect, false, 71, new Class[]{RecSwitchBean.class}, Void.TYPE).isSupported) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("businessId", recSwitchBean.getBusinessId());
        linkedHashMap.put("functionId", recSwitchBean.getFunctionId());
        linkedHashMap.put("state", Boolean.TRUE);
        h30.g.f225309a.Y6(linkedHashMap).subscribeWith(HttpSubscriber.create(new i()));
    }

    private final void f0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 49, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.Hi, a1() ? "关闭派对" : "退出派对", false, false, true, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addExitRoomFunc$1
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
                this.this$0.C0();
            }
        }, 108, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f1() {
        FragmentActivity activity;
        Observable observableObserveX;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 50, new Class[0], Void.TYPE).isSupported || (activity = getActivity()) == null) {
            return;
        }
        SeatApplyFragment.Companion companion = SeatApplyFragment.INSTANCE;
        DataBus dataBus = this.dataBus;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
        if (strP == null) {
            strP = "";
        }
        companion.a(dataBus, strP).show(activity.getSupportFragmentManager(), "SeatApplyFragment");
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ1 == null || (observableObserveX = soulHouseDriverJ1.observeX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.p0())) == null) {
            return;
        }
        observableObserveX.update(new j());
    }

    private final void g0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 17, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        int i11 = R$drawable.f127282j8;
        CommonSlice commonSliceE0 = E0();
        arrayList.add(new FunctionMoreBean(i11, "群主活动", commonSliceE0 != null && commonSliceE0.d0(false), false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addHouseOwnerGuide$1
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
                SoulHouseContainer soulHouseContainerP0;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.dismiss();
                a60.l lVar = a60.l.f1777a;
                String strB = ih.a.b(cn.soulapp.android.client.component.middle.platform.cons.h5.Const.H5URL.U0, null);
                kotlin.jvm.internal.v.i(strB, "buildUrl(\n              …                        )");
                lVar.n(strB);
                cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.o();
                CommonSlice commonSliceE1 = this.this$0.E0();
                if (commonSliceE1 != null) {
                    commonSliceE1.i0(true);
                }
                CommonSlice commonSliceE2 = this.this$0.E0();
                if (commonSliceE2 != null) {
                    commonSliceE2.i0(false);
                }
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                if (soulHouseDriverJ0 == null || (soulHouseContainerP0 = soulHouseDriverJ0.p0()) == null) {
                    return;
                }
                soulHouseContainerP0.C(BlockMessage.MSG_CHECK_TO_SHOW_MORE_RED);
            }
        }, 120, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g1(final RecSwitchBean recSwitchBean) {
        if (PatchProxy.proxy(new Object[]{recSwitchBean}, this, changeQuickRedirect, false, 70, new Class[]{RecSwitchBean.class}, Void.TYPE).isSupported) {
            return;
        }
        LightExecutor.l0(2000L, new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.f2
            @Override // java.lang.Runnable
            public final void run() {
                RoomMoreFunctionDialog.h1(recSwitchBean, this);
            }
        });
    }

    private final void h0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 20, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.R9, "趣味中心", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addInterestCenter$1
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
                SoulHouseContainer soulHouseContainerP0;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.dismiss();
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                if (soulHouseDriverJ0 == null || (soulHouseContainerP0 = soulHouseDriverJ0.p0()) == null) {
                    return;
                }
                soulHouseContainerP0.C(BlockMessage.MSG_SHOW_INTEREST_CENTER_DIALOG);
            }
        }, 124, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h1(final RecSwitchBean t11, final RoomMoreFunctionDialog this$0) {
        if (PatchProxy.proxy(new Object[]{t11, this$0}, null, changeQuickRedirect, true, 91, new Class[]{RecSwitchBean.class, RoomMoreFunctionDialog.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(t11, "$t");
        kotlin.jvm.internal.v.j(this$0, "this$0");
        cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.R1();
        SoulDialog.Companion companion = SoulDialog.INSTANCE;
        SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
        attributeConfig.W(SoulDialogType.P12);
        String title = t11.getTitle();
        if (title == null) {
            title = "";
        }
        attributeConfig.h0(title);
        String content = t11.getContent();
        attributeConfig.U(content != null ? content : "");
        attributeConfig.M("残忍拒绝");
        attributeConfig.S("确认订阅");
        attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$openXMGuideDialog$1$1$1
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
                cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.V0();
                this.this$0.e1(t11);
            }
        });
        SoulDialog soulDialogA = companion.a(attributeConfig);
        Activity activityX = AppListenerHelper.x();
        if (activityX == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        }
        FragmentManager supportFragmentManager = ((FragmentActivity) activityX).getSupportFragmentManager();
        kotlin.jvm.internal.v.i(supportFragmentManager, "AppListenerHelper.getTop…y).supportFragmentManager");
        soulDialogA.n(supportFragmentManager);
    }

    private final void i0(ArrayList<FunctionMoreBean> arrayList) {
        MyInfoInRoom myInfoInRoomZ;
        MyInfoInRoom myInfoInRoomZ2;
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 23, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (((soulHouseDriverJ0 == null || (myInfoInRoomZ2 = SoulHouseExtensionKt.z(soulHouseDriverJ0)) == null) ? 0 : myInfoInRoomZ2.getConsumeLevel()) >= 9) {
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
            final boolean z11 = (soulHouseDriverJ1 == null || (myInfoInRoomZ = SoulHouseExtensionKt.z(soulHouseDriverJ1)) == null || myInfoInRoomZ.getInvisibilityCloakStatus() != 1) ? false : true;
            arrayList.add(new FunctionMoreBean(((Number) ExtensionsKt.select(z11, Integer.valueOf(R$drawable.f127485tb), Integer.valueOf(R$drawable.f127465sb))).intValue(), "隐身斗篷", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addInvisibilityCloak$1
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
                    if (z11) {
                        this.A1(0);
                    } else {
                        this.q1();
                    }
                }
            }, 124, null));
        }
    }

    private final int i1() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 39, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        int i11 = b.f148784a[PowerSaveModeStore.f155098a.d().ordinal()];
        if (i11 == 1) {
            return R$drawable.Nb;
        }
        if (i11 == 2) {
            return R$drawable.Lb;
        }
        if (i11 == 3) {
            return R$drawable.Mb;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final void j0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 28, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.C8, "进场消息", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addMergeMessageFunc$1
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
                FragmentManager supportFragmentManager;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.dismiss();
                FragmentActivity activity = this.this$0.getActivity();
                if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
                    return;
                }
                EnterMessageMergeDialog.f148375h.a(this.this$0.dataBus).show(supportFragmentManager);
            }
        }, 124, null));
    }

    private final void j1(boolean z11) {
        WeakReference weakReference;
        IPartyRoomHost iPartyRoomHost;
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 74, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if ((soulHouseDriverJ0 != null ? (PartyRoomSource) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Z()) : null) == PartyRoomSource.VIDEO_FEED) {
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
            if (soulHouseDriverJ1 == null || (weakReference = (WeakReference) soulHouseDriverJ1.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Y())) == null || (iPartyRoomHost = (IPartyRoomHost) weakReference.get()) == null) {
                return;
            }
            iPartyRoomHost.onRequestExitToFeed(z11 ? ExitReason.USER_EXIT : ExitReason.ZOOM_OUT);
            return;
        }
        if (getActivity() instanceof SoulHouseActivity) {
            if (!z11) {
                ZoomOutManager.s(ZoomOutManager.f144296a, true, false, 2, null);
                FragmentActivity activity = getActivity();
                if (activity != null) {
                    activity.onBackPressed();
                }
            }
            SoulRouter.j().e("/chat/chatRoomList").A("firstTabName", PhotoTab.PHOTO_TAB_NAME_ALL).d();
            return;
        }
        if (getActivity() instanceof ChatRoomListActivity) {
            FragmentActivity activity2 = getActivity();
            if (activity2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner");
            }
            ChatRoomListViewModel chatRoomListViewModel = (ChatRoomListViewModel) new ViewModelProvider(activity2).get(ChatRoomListViewModel.class);
            if (z11) {
                chatRoomListViewModel.u().setValue(PhotoTab.PHOTO_TAB_NAME_ALL);
            } else {
                chatRoomListViewModel.G().setValue(Boolean.TRUE);
            }
        }
    }

    private final void k0(ArrayList<FunctionMoreBean> arrayList) {
        Boolean musical;
        boolean zBooleanValue = false;
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 42, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        ChatRoomSwitches chatRoomSwitchesM0 = M0();
        if (chatRoomSwitchesM0 != null && (musical = chatRoomSwitchesM0.getMusical()) != null) {
            zBooleanValue = musical.booleanValue();
        }
        if (zBooleanValue) {
            final boolean zN = cn.soulapp.cpnt_voiceparty.function.b0.n(cn.soulapp.cpnt_voiceparty.function.b0.f142548a, SoulHouseExtensionKt.j0(this.dataBus), Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P.getId()), null, 4, null);
            arrayList.add(new FunctionMoreBean(((Number) ExtensionsKt.select(zN, Integer.valueOf(R$drawable.f127104ac), Integer.valueOf(R$drawable.Yb))).intValue(), "唱片机", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addMusicFunc$1
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
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || ModeConflictConfiguration.f154904a.c(SoulHouseExtensionKt.j0(this.this$0.dataBus), cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P)) {
                        return;
                    }
                    this.this$0.B1(Boolean.valueOf(zN));
                }
            }, 124, null));
        }
    }

    static /* synthetic */ void k1(RoomMoreFunctionDialog roomMoreFunctionDialog, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z11 = false;
        }
        roomMoreFunctionDialog.j1(z11);
    }

    private final void l0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 41, new Class[]{ArrayList.class}, Void.TYPE).isSupported || Y0()) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.f127498u4, "派对大厅", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addPartyHallFunc$1
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
                this.this$0.dismiss();
                lh.a.o("chat_room_party_hall_red_point_need_show", false);
                cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.V(cn.soulapp.android.client.component.middle.platform.utils.user.a.w().toString());
                RoomMoreFunctionDialog.k1(this.this$0, false, 1, null);
            }
        }, 124, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l1() {
        cn.soulapp.cpnt_voiceparty.soulhouse.blackboard.f fVar;
        BlackboardInfo data;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 81, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (TextUtils.isEmpty(this.roomId) || TextUtils.isEmpty(this.ownerIdEcpt)) {
            SoulHouseExtensionKt.u0(this, "RoomMoreFunctionDialog", "roomReport roomId=" + this.roomId + " ownerIdEcpt=" + this.ownerIdEcpt);
            return;
        }
        HashMap map = new HashMap();
        String str = this.roomId;
        if (str == null) {
            str = "";
        }
        map.put("roomid", str);
        String str2 = this.ownerIdEcpt;
        map.put("ownerid", str2 != null ? str2 : "");
        map.put("roomType", "1");
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        String abstractContent = (soulHouseDriverJ0 == null || (fVar = (cn.soulapp.cpnt_voiceparty.soulhouse.blackboard.f) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.g())) == null || (data = fVar.getData()) == null) ? null : data.getAbstractContent();
        if (!(abstractContent == null || abstractContent.length() == 0)) {
            map.put("abstractContent", abstractContent);
        }
        a60.l lVar = a60.l.f1777a;
        String strB = ih.a.b(cn.soulapp.android.client.component.middle.platform.cons.h5.Const.H5URL.f27564e0, map);
        kotlin.jvm.internal.v.i(strB, "buildUrl(Const.H5URL.ROOM_REPORT_ROOM, params)");
        lVar.m(strB);
    }

    private final void m0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 21, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.I8, "派对信息", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addPartyInfoFunc$1
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
                this.this$0.dismiss();
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                if (soulHouseDriverJ0 != null) {
                    RoomMoreFunctionDialog roomMoreFunctionDialog = this.this$0;
                    cn.soul.android.component.a aVarY = SoulRouter.j().e("/chat/houseDetail").y("chat_room_model", SoulHouseExtensionKt.t(soulHouseDriverJ0).chatRoomModel).y("my_info_in_room", SoulHouseExtensionKt.z(soulHouseDriverJ0)).y("room_owner_user", SoulHouseExtensionKt.Y(soulHouseDriverJ0).getF1768a());
                    SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
                    aVarY.u("room_join_type", soulHouseDriverJ1 != null ? soulHouseDriverJ1.getJoinType() : 0).d();
                }
            }
        }, 124, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m1() {
        String string;
        RoomLimitConfig roomLimitConfigU;
        int i11 = 0;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 66, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (getActivity() == null || requireActivity().isDestroyed() || requireActivity().isFinishing()) {
            if (F0()) {
                c1();
                return;
            }
            return;
        }
        if (!a1() && D0()) {
            ExtensionsKt.toast("目前场上为最少参与人数，不支持中途退出游戏");
            return;
        }
        if (a1()) {
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
            if (soulHouseDriverJ0 != null && (roomLimitConfigU = SoulHouseExtensionKt.U(soulHouseDriverJ0)) != null) {
                i11 = roomLimitConfigU.surplusCreateRoomCount;
            }
            if (i11 > 0) {
                string = "半小时内只能创建" + i11 + "个派对哦";
            } else {
                string = requireActivity().getResources().getString(R$string.f130097b0);
                kotlin.jvm.internal.v.i(string, "{\n                requir…p_no_times)\n            }");
            }
        } else {
            string = z1() ? requireActivity().getResources().getString(R$string.S) : requireActivity().getResources().getString(R$string.f130193t);
            kotlin.jvm.internal.v.i(string, "{\n            if(showThr…)\n            }\n        }");
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        final SoulThemeDialog.AttributeConfig attributeConfig = new SoulThemeDialog.AttributeConfig();
        String string2 = requireActivity().getResources().getString(((Number) ExtensionsKt.select(a1(), Integer.valueOf(R$string.f130188s), Integer.valueOf(R$string.f130198u))).intValue());
        kotlin.jvm.internal.v.i(string2, "requireActivity().resour…          )\n            )");
        attributeConfig.I(string2);
        attributeConfig.G(TextUtils.isEmpty(string));
        attributeConfig.z(string);
        attributeConfig.A(true);
        attributeConfig.u(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showExitDialog$attr$1$1
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
                String joinCode;
                RoomIntentData roomIntentData;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                SoulHouseExtensionKt.w0(attributeConfig, "exit", "点击 退出派对");
                cn.soulapp.cpnt_voiceparty.util.track.a aVar = cn.soulapp.cpnt_voiceparty.util.track.a.f162372a;
                int i12 = this.a1() ? 3 : 1;
                long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
                if (soulHouseDriverJ1 == null || (roomIntentData = (RoomIntentData) soulHouseDriverJ1.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.l0())) == null || (joinCode = roomIntentData.getJoinCode()) == null) {
                    joinCode = "";
                }
                aVar.z(1, 1, i12, jElapsedRealtime2, joinCode);
                this.c1();
            }
        });
        attributeConfig.w("确定退出");
        attributeConfig.y("再聊聊吧");
        attributeConfig.C(true);
        attributeConfig.x(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showExitDialog$attr$1$2
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
                String joinCode;
                RoomIntentData roomIntentData;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                cn.soulapp.cpnt_voiceparty.util.track.a aVar = cn.soulapp.cpnt_voiceparty.util.track.a.f162372a;
                int i12 = this.this$0.a1() ? 3 : 1;
                long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                if (soulHouseDriverJ1 == null || (roomIntentData = (RoomIntentData) soulHouseDriverJ1.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.l0())) == null || (joinCode = roomIntentData.getJoinCode()) == null) {
                    joinCode = "";
                }
                aVar.z(1, 2, i12, jElapsedRealtime2, joinCode);
            }
        });
        SoulThemeDialog soulThemeDialogA = SoulThemeDialog.INSTANCE.a(attributeConfig);
        this.soulThemeDialog = soulThemeDialogA;
        if (soulThemeDialogA != null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            kotlin.jvm.internal.v.i(childFragmentManager, "childFragmentManager");
            soulThemeDialogA.A(childFragmentManager);
        }
    }

    private final void n0(ArrayList<FunctionMoreBean> arrayList) {
        if (!PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 38, new Class[]{ArrayList.class}, Void.TYPE).isSupported && cn.soulapp.cpnt_voiceparty.soulhouse.powersave.b.f155126a.d()) {
            arrayList.add(new FunctionMoreBean(i1(), "省电模式", false, false, false, null, null, new RoomMoreFunctionDialog$addPowerSaveModeFunc$1(this), 124, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n1(boolean z11) {
        SpeedMatchModel speedMatchModel;
        SpeedMatchStatus statusDTO;
        Integer status;
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 62, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported || getActivity() == null || requireActivity().isDestroyed() || requireActivity().isFinishing()) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.function.b0 b0Var = cn.soulapp.cpnt_voiceparty.function.b0.f142548a;
        if (cn.soulapp.cpnt_voiceparty.function.b0.m(b0Var, this.dataBus, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154987l.getId()), null, 4, null)) {
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
            if ((soulHouseDriverJ0 == null || (speedMatchModel = (SpeedMatchModel) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.C0())) == null || (statusDTO = speedMatchModel.getStatusDTO()) == null || (status = statusDTO.getStatus()) == null || status.intValue() != 1) ? false : true) {
                ExtensionsKt.toast("当前速配进行中，无法解散派对");
                return;
            }
        }
        if (!z11 && !z1() && !cn.soulapp.cpnt_voiceparty.function.b0.m(b0Var, this.dataBus, Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.A.getId()), null, 4, null)) {
            K0();
            return;
        }
        String string = z1() ? getString(R$string.S) : getString(R$string.R);
        kotlin.jvm.internal.v.i(string, "if(showThrowingThunderWa…t_for_qf_leave)\n        }");
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ1 != null) {
            SoulHouseExtensionKt.f(soulHouseDriverJ1);
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        SoulDialog.Companion companion = SoulDialog.INSTANCE;
        final SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
        attributeConfig.W(SoulDialogType.P12);
        String string2 = getString(R$string.f130126g);
        kotlin.jvm.internal.v.i(string2, "getString(R.string.c_vp_ask_for_real_leave)");
        attributeConfig.h0(string2);
        attributeConfig.U(string);
        String string3 = getString(R$string.f130203v);
        kotlin.jvm.internal.v.i(string3, "getString(R.string.c_vp_cancel_text_for_qf_leave)");
        attributeConfig.M(string3);
        String string4 = getString(R$string.Q);
        kotlin.jvm.internal.v.i(string4, "getString(R.string.c_vp_confirm_text_for_qf_leave)");
        attributeConfig.S(string4);
        attributeConfig.J(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showExitDialogForQuickFlash$1$1
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
                String joinCode;
                RoomIntentData roomIntentData;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                SoulHouseExtensionKt.w0(attributeConfig, "exit", "点击 关闭房间");
                cn.soulapp.cpnt_voiceparty.util.track.a aVar = cn.soulapp.cpnt_voiceparty.util.track.a.f162372a;
                long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.dataBus);
                if (soulHouseDriverJ2 == null || (roomIntentData = (RoomIntentData) soulHouseDriverJ2.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.l0())) == null || (joinCode = roomIntentData.getJoinCode()) == null) {
                    joinCode = "";
                }
                aVar.z(1, 1, 3, jElapsedRealtime2, joinCode);
                this.c1();
            }
        });
        attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showExitDialogForQuickFlash$1$2
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
                String joinCode;
                RoomIntentData roomIntentData;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                cn.soulapp.cpnt_voiceparty.util.track.a aVar = cn.soulapp.cpnt_voiceparty.util.track.a.f162372a;
                long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.dataBus);
                if (soulHouseDriverJ2 == null || (roomIntentData = (RoomIntentData) soulHouseDriverJ2.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.l0())) == null || (joinCode = roomIntentData.getJoinCode()) == null) {
                    joinCode = "";
                }
                aVar.z(1, 2, 3, jElapsedRealtime2, joinCode);
            }
        });
        SoulDialog soulDialogA = companion.a(attributeConfig);
        FragmentManager childFragmentManager = getChildFragmentManager();
        kotlin.jvm.internal.v.i(childFragmentManager, "childFragmentManager");
        soulDialogA.n(childFragmentManager);
    }

    private final void o0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 27, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.f127562x8, "禁言管理", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addProhibitionFunc$1
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
                FragmentManager supportFragmentManager;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.dismiss();
                FragmentActivity activity = this.this$0.getActivity();
                if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
                    return;
                }
                RoomMoreFunctionDialog roomMoreFunctionDialog = this.this$0;
                BannedDialog.a aVar = BannedDialog.f148230j;
                DataBus dataBus = roomMoreFunctionDialog.dataBus;
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
                String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
                if (strP == null) {
                    strP = "";
                }
                aVar.a(dataBus, strP).show(supportFragmentManager, "BannedDialog");
            }
        }, 124, null));
    }

    static /* synthetic */ void o1(RoomMoreFunctionDialog roomMoreFunctionDialog, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z11 = false;
        }
        roomMoreFunctionDialog.n1(z11);
    }

    private final void p0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 44, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.f127489tf, "道具记录", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addPropsRecordFunc$1
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
                a60.c0 c0VarY;
                RoomUser f1768a;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                if (this.this$0.b1()) {
                    cn.soulapp.lib.widget.toast.e.u(this.this$0.getString(R$string.M3));
                    return;
                }
                a60.l lVar = a60.l.f1777a;
                String str = cn.soulapp.android.client.component.middle.platform.cons.h5.Const.H5URL.f27569f2;
                Pair[] pairArr = new Pair[1];
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                pairArr[0] = kotlin.m.a("roomOwnerIdEncrypt", cn.soulapp.android.client.component.middle.platform.utils.user.a.b((soulHouseDriverJ0 == null || (c0VarY = SoulHouseExtensionKt.Y(soulHouseDriverJ0)) == null || (f1768a = c0VarY.getF1768a()) == null) ? null : f1768a.getUserId()));
                String strB = ih.a.b(str, kotlin.collections.r0.l(pairArr));
                kotlin.jvm.internal.v.i(strB, "buildUrl(Const.H5URL.STA…omOwner?.owner?.userId)))");
                lVar.n(strB);
            }
        }, 124, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AutoDispose", "CheckResult"})
    public final void p1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 57, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseExtensionKt.w0(this, "RoomMoreFunctionDialog", "showFollowGuideDialog called");
        if (!a1()) {
            h30.g.f225309a.o1(this.roomId).subscribeWith(HttpSubscriber.create(new ty.s<RequestResult<FollowRemindListBean>>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showFollowGuideDialog$1
                public static ChangeQuickRedirect changeQuickRedirect;

                @Override // com.walid.rxretrofit.interfaces.IHttpCallback
                /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
                public void onNext(@Nullable RequestResult<FollowRemindListBean> requestResult) {
                    FollowRemindListBean data;
                    boolean z11 = true;
                    if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("exitNoticeFollow success, has optionalFollowList: ");
                    List<FollowUserBean> optionalFollowList = (requestResult == null || (data = requestResult.getData()) == null) ? null : data.getOptionalFollowList();
                    sb2.append(!(optionalFollowList == null || optionalFollowList.isEmpty()));
                    SoulHouseExtensionKt.w0(this, "RoomMoreFunctionDialog", sb2.toString());
                    if ((requestResult != null ? requestResult.getData() : null) != null) {
                        FollowRemindListBean data2 = requestResult.getData();
                        kotlin.jvm.internal.v.g(data2);
                        List<FollowUserBean> optionalFollowList2 = data2.getOptionalFollowList();
                        if (optionalFollowList2 != null && !optionalFollowList2.isEmpty()) {
                            z11 = false;
                        }
                        if (!z11) {
                            if (this.f148797c.isAdded()) {
                                FragmentActivity activity = this.f148797c.getActivity();
                                if ((activity != null ? activity.getSupportFragmentManager() : null) != null) {
                                    ExitRoomFollowDialog.a aVar = ExitRoomFollowDialog.f140892l;
                                    FollowRemindListBean data3 = requestResult.getData();
                                    kotlin.jvm.internal.v.g(data3);
                                    ExitRoomFollowDialog exitRoomFollowDialogA = aVar.a(data3, this.f148797c.dataBus);
                                    final RoomMoreFunctionDialog roomMoreFunctionDialog = this.f148797c;
                                    exitRoomFollowDialogA.l(new Function1<Boolean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showFollowGuideDialog$1$onNext$1
                                        public static ChangeQuickRedirect changeQuickRedirect;

                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ kotlin.w invoke(Boolean bool) {
                                            invoke(bool.booleanValue());
                                            return kotlin.w.f231958a;
                                        }

                                        public final void invoke(boolean z12) {
                                            if (!PatchProxy.proxy(new Object[]{new Byte(z12 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported && z12) {
                                                roomMoreFunctionDialog.c1();
                                            }
                                        }
                                    }).show(this.f148797c.getParentFragmentManager());
                                    this.f148797c.dismiss();
                                    return;
                                }
                            }
                            this.f148797c.c1();
                            return;
                        }
                    }
                    if (this.f148797c.Z0()) {
                        this.f148797c.m1();
                    } else {
                        this.f148797c.c1();
                    }
                }

                @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
                public void onError(int i11, @Nullable String str) {
                    if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    super.onError(i11, str);
                    SoulHouseExtensionKt.w0(this, "RoomMoreFunctionDialog", "exitNoticeFollow error, code=" + i11 + ", message=" + str);
                    if (this.f148797c.Z0()) {
                        this.f148797c.m1();
                    } else {
                        this.f148797c.c1();
                    }
                }
            }));
        } else if (Z0()) {
            m1();
        } else {
            c1();
        }
    }

    private final void q0(ArrayList<FunctionMoreBean> arrayList) {
        SoulHouseDriver soulHouseDriverJ0;
        final cn.soulapp.cpnt_voiceparty.soulhouse.slice.e eVar;
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 24, new Class[]{ArrayList.class}, Void.TYPE).isSupported || (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus)) == null || (eVar = (cn.soulapp.cpnt_voiceparty.soulhouse.slice.e) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.v())) == null) {
            return;
        }
        final boolean permanentSwitchOn = eVar.getPermanentSwitchOn();
        int i11 = permanentSwitchOn ? R$drawable.N9 : R$drawable.M9;
        String string = permanentSwitchOn ? getString(R$string.B0) : getString(R$string.C0);
        kotlin.jvm.internal.v.i(string, "if (isOn) getString(R.st…e_breaker_more_func_open)");
        arrayList.add(new FunctionMoreBean(i11, string, false, false, false, null, 352321535, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addQuickIceBreakerFunc$1
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
                final String string2 = this.this$0.getString(R$string.D0);
                kotlin.jvm.internal.v.i(string2, "getString(R.string.c_vp_…er_permanent_close_toast)");
                cn.soulapp.cpnt_voiceparty.soulhouse.slice.e eVar2 = eVar;
                final boolean z11 = permanentSwitchOn;
                eVar2.U(!z11, new Function1<Boolean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addQuickIceBreakerFunc$1.1
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

                    public final void invoke(boolean z12) {
                        if (!PatchProxy.proxy(new Object[]{new Byte(z12 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported && z12 && z11) {
                            ExtensionsKt.toast(string2);
                        }
                    }
                });
                this.this$0.dismiss();
                this.this$0.F1(!permanentSwitchOn ? 1 : 0);
            }
        }, 60, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 75, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (a1() || X0()) {
            ExtensionsKt.toast("群主和管理员不可开启该功能");
            return;
        }
        if (CommonUtil.f161882a.f(SoulHouseExtensionKt.j0(this.dataBus))) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("开启【隐身斗篷】功能后，你将在派对中隐身，进入任意派对不会展示进场弹幕、动画和消息，用户列表中也不会展示你的头像，直至关闭功能； 隐身状态操作以下功能会有暴露风险：发消息、送礼、抽奖、关注、抢福袋、抢红包、CP魔法阵； 群主和管理不可使用该功能，上麦状态需要下麦才可开启该隐身。");
            spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor(MsgBizParam.HIGHLIGHT_COLOR)), 82, 108, 33);
            cn.soul.lib_dialog.b bVar = new cn.soul.lib_dialog.b();
            final SoulDialogFragment soulDialogFragmentA = SoulDialogFragment.INSTANCE.a(bVar);
            bVar.t("隐身斗篷");
            bVar.v(24, 12);
            bVar.k(spannableStringBuilder);
            bVar.v(0, 24);
            bVar.b(true, "取消", R$style.f15486a, new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.i2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoomMoreFunctionDialog.r1(soulDialogFragmentA, view);
                }
            });
            bVar.b(true, "确定", R$style.f15489d, new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.j2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoomMoreFunctionDialog.s1(soulDialogFragmentA, this, view);
                }
            });
            bVar.v(0, 12);
            FragmentManager childFragmentManager = getChildFragmentManager();
            kotlin.jvm.internal.v.i(childFragmentManager, "childFragmentManager");
            soulDialogFragmentA.show(childFragmentManager, "invisibilityClockDialog");
        }
    }

    private final void r0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 22, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.F8, "氛围背景", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addRadioFunction$1
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
                if (!PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported && CommonUtil.f161882a.e(SoulHouseExtensionKt.j0(this.this$0.dataBus))) {
                    this.this$0.v1(0);
                }
            }
        }, 124, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r1(SoulDialogFragment dialogFragment, View view) {
        if (PatchProxy.proxy(new Object[]{dialogFragment, view}, null, changeQuickRedirect, true, 92, new Class[]{SoulDialogFragment.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(dialogFragment, "$dialogFragment");
        dialogFragment.dismiss();
    }

    private final void s0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 48, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        CommonSlice commonSliceE0 = E0();
        final boolean hasRecommend = commonSliceE0 != null ? commonSliceE0.getHasRecommend() : false;
        arrayList.add(new FunctionMoreBean(hasRecommend ? R$drawable.Gf : R$drawable.Hf, hasRecommend ? "取消推荐" : "推荐派对", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addRecommendFunc$1
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
                int i11 = hasRecommend ? 2 : 1;
                CommonSlice commonSliceE1 = this.E0();
                if (commonSliceE1 != null) {
                    String str = this.roomId;
                    final RoomMoreFunctionDialog roomMoreFunctionDialog = this;
                    commonSliceE1.O(str, i11, new Function2<Integer, Boolean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addRecommendFunc$1.1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        /* JADX INFO: renamed from: invoke */
                        public /* bridge */ /* synthetic */ kotlin.w mo3invoke(Integer num, Boolean bool) {
                            invoke(num.intValue(), bool.booleanValue());
                            return kotlin.w.f231958a;
                        }

                        public final void invoke(int i12, boolean z11) {
                            if (PatchProxy.proxy(new Object[]{new Integer(i12), new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE, Boolean.TYPE}, Void.TYPE).isSupported) {
                                return;
                            }
                            if (z11) {
                                if (i12 == 1) {
                                    ExtensionsKt.toast("已点牛，房间将推荐给更多人");
                                } else {
                                    ExtensionsKt.toast("已取消推荐");
                                }
                            }
                            roomMoreFunctionDialog.dismiss();
                        }
                    });
                }
            }
        }, 108, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s1(SoulDialogFragment dialogFragment, RoomMoreFunctionDialog this$0, View view) {
        if (PatchProxy.proxy(new Object[]{dialogFragment, this$0, view}, null, changeQuickRedirect, true, 93, new Class[]{SoulDialogFragment.class, RoomMoreFunctionDialog.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(dialogFragment, "$dialogFragment");
        kotlin.jvm.internal.v.j(this$0, "this$0");
        dialogFragment.dismiss();
        this$0.A1(1);
    }

    private final void t0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 33, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.G8, "举报", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addReportFunc$1
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
                this.this$0.l1();
            }
        }, 124, null));
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    private final void t1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 56, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseExtensionKt.w0(this, "RoomMoreFunctionDialog", "showPartyHallAttarctDialog called");
        if (lh.a.b("isDialogHadShow", false)) {
            p1();
            return;
        }
        if (F0()) {
            h30.g gVar = h30.g.f225309a;
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
            gVar.Z4(soulHouseDriverJ0 != null ? Integer.valueOf(soulHouseDriverJ0.getJoinType()) : null).subscribeWith(HttpSubscriber.create(new ty.s<GuidePopBean>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showPartyHallAttarctDialog$1
                public static ChangeQuickRedirect changeQuickRedirect;

                @Override // com.walid.rxretrofit.interfaces.IHttpCallback
                /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
                public void onNext(@Nullable GuidePopBean guidePopBean) {
                    FragmentManager supportFragmentManager;
                    boolean z11 = false;
                    if (PatchProxy.proxy(new Object[]{guidePopBean}, this, changeQuickRedirect, false, 2, new Class[]{GuidePopBean.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("guidePop success, needGuidePop=");
                    sb2.append(guidePopBean != null ? Boolean.valueOf(guidePopBean.getNeedGuidePop()) : null);
                    SoulHouseExtensionKt.w0(this, "RoomMoreFunctionDialog", sb2.toString());
                    if (this.f148798c.isAdded()) {
                        FragmentActivity activity = this.f148798c.getActivity();
                        if ((activity != null ? activity.getSupportFragmentManager() : null) != null) {
                            if (guidePopBean != null && guidePopBean.getNeedGuidePop()) {
                                z11 = true;
                            }
                            if (!z11) {
                                this.f148798c.p1();
                                return;
                            }
                            PartyHallAttractDialog partyHallAttractDialogA = PartyHallAttractDialog.f141258i.a();
                            final RoomMoreFunctionDialog roomMoreFunctionDialog = this.f148798c;
                            partyHallAttractDialogA.g(new Function1<Boolean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showPartyHallAttarctDialog$1$onNext$1
                                public static ChangeQuickRedirect changeQuickRedirect;

                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ kotlin.w invoke(Boolean bool) {
                                    invoke(bool.booleanValue());
                                    return kotlin.w.f231958a;
                                }

                                public final void invoke(boolean z12) {
                                    if (PatchProxy.proxy(new Object[]{new Byte(z12 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                                        return;
                                    }
                                    lh.a.o("chat_room_party_hall_red_point_need_show", false);
                                    if (z12) {
                                        roomMoreFunctionDialog.c1();
                                    } else {
                                        roomMoreFunctionDialog.dismiss();
                                        RoomMoreFunctionDialog.k1(roomMoreFunctionDialog, false, 1, null);
                                    }
                                }
                            });
                            FragmentActivity activity2 = this.f148798c.getActivity();
                            if (activity2 == null || (supportFragmentManager = activity2.getSupportFragmentManager()) == null) {
                                return;
                            }
                            partyHallAttractDialogA.show(supportFragmentManager, "PartyHallAttractDialog");
                            lh.a.o("isDialogHadShow", true);
                            return;
                        }
                    }
                    this.f148798c.c1();
                }

                @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
                public void onError(int i11, @Nullable String str) {
                    if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    super.onError(i11, str);
                    SoulHouseExtensionKt.w0(this, "RoomMoreFunctionDialog", "guidePop error, code=" + i11 + ", message=" + str);
                    this.f148798c.p1();
                }
            }));
        } else {
            h30.g gVar2 = h30.g.f225309a;
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
            register((Disposable) AnyExtKt.c(gVar2.Z4(soulHouseDriverJ1 != null ? Integer.valueOf(soulHouseDriverJ1.getJoinType()) : null), this).subscribeWith(HttpSubscriber.create(new ty.s<GuidePopBean>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showPartyHallAttarctDialog$2
                public static ChangeQuickRedirect changeQuickRedirect;

                @Override // com.walid.rxretrofit.interfaces.IHttpCallback
                /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
                public void onNext(@Nullable GuidePopBean guidePopBean) {
                    FragmentManager supportFragmentManager;
                    boolean z11 = false;
                    if (PatchProxy.proxy(new Object[]{guidePopBean}, this, changeQuickRedirect, false, 2, new Class[]{GuidePopBean.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("guidePop success, needGuidePop=");
                    sb2.append(guidePopBean != null ? Boolean.valueOf(guidePopBean.getNeedGuidePop()) : null);
                    SoulHouseExtensionKt.w0(this, "RoomMoreFunctionDialog", sb2.toString());
                    if (guidePopBean != null && guidePopBean.getNeedGuidePop()) {
                        z11 = true;
                    }
                    if (!z11) {
                        this.f148799c.p1();
                        return;
                    }
                    PartyHallAttractDialog partyHallAttractDialogA = PartyHallAttractDialog.f141258i.a();
                    final RoomMoreFunctionDialog roomMoreFunctionDialog = this.f148799c;
                    partyHallAttractDialogA.g(new Function1<Boolean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showPartyHallAttarctDialog$2$onNext$1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ kotlin.w invoke(Boolean bool) {
                            invoke(bool.booleanValue());
                            return kotlin.w.f231958a;
                        }

                        public final void invoke(boolean z12) {
                            if (PatchProxy.proxy(new Object[]{new Byte(z12 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                                return;
                            }
                            lh.a.o("chat_room_party_hall_red_point_need_show", false);
                            if (z12) {
                                roomMoreFunctionDialog.c1();
                            } else {
                                roomMoreFunctionDialog.dismiss();
                                RoomMoreFunctionDialog.k1(roomMoreFunctionDialog, false, 1, null);
                            }
                        }
                    });
                    FragmentActivity activity = this.f148799c.getActivity();
                    if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
                        return;
                    }
                    partyHallAttractDialogA.show(supportFragmentManager, "PartyHallAttractDialog");
                    lh.a.o("isDialogHadShow", true);
                }

                @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
                public void onError(int i11, @Nullable String str) {
                    if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    super.onError(i11, str);
                    SoulHouseExtensionKt.w0(this, "RoomMoreFunctionDialog", "guidePop error, code=" + i11 + ", message=" + str);
                    this.f148799c.p1();
                }
            })));
        }
    }

    private final void u0(ArrayList<FunctionMoreBean> arrayList) {
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 36, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        arrayList.add(new FunctionMoreBean(R$drawable.f127525vb, "分享派对", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addSharePartyFunc$1
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
                RoomDataManager roomDataManagerA1;
                RoomUser roomUserA;
                MyInfoInRoom myInfoInRoomZ;
                RoomDataManager roomDataManagerA2;
                RoomUser roomUserA2;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.dismiss();
                String str = this.this$0.roomId;
                DataBus dataBus = this.this$0.dataBus;
                Integer numValueOf = null;
                String strU = dataBus != null ? SoulHouseExtensionKt.u(dataBus) : null;
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.dataBus);
                RoomChatEventUtilsV2.V(str, "3", strU, 2, (soulHouseDriverJ0 == null || (roomDataManagerA2 = soulHouseDriverJ0.a1()) == null || (roomUserA2 = RoomDataManager.A(roomDataManagerA2, false, 1, null)) == null) ? null : Integer.valueOf(roomUserA2.getRole()));
                FragmentActivity activity = this.this$0.getActivity();
                if (activity != null) {
                    RoomMoreFunctionDialog roomMoreFunctionDialog = this.this$0;
                    SoulHouseShareDialog soulHouseShareDialogD = SoulHouseShareDialog.Companion.d(SoulHouseShareDialog.INSTANCE, roomMoreFunctionDialog.dataBus, null, 0, 6, null);
                    FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
                    kotlin.jvm.internal.v.i(supportFragmentManager, "it.supportFragmentManager");
                    soulHouseShareDialogD.show(supportFragmentManager, SoulHouseShareDialog.class.getSimpleName());
                    SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
                    cn.soulapp.android.square.share.c0.f("2", soulHouseDriverJ1 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ1) : null, "18");
                    cn.soulapp.cpnt_voiceparty.util.track.a aVar = cn.soulapp.cpnt_voiceparty.util.track.a.f162372a;
                    SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
                    String str2 = soulHouseDriverJ2 != null && (myInfoInRoomZ = SoulHouseExtensionKt.z(soulHouseDriverJ2)) != null && myInfoInRoomZ.getIsOwner() ? "1" : "0";
                    SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
                    String strP = soulHouseDriverJ3 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ3) : null;
                    DataBus dataBus2 = roomMoreFunctionDialog.dataBus;
                    String strU2 = dataBus2 != null ? SoulHouseExtensionKt.u(dataBus2) : null;
                    SoulHouseDriver soulHouseDriverJ4 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus);
                    if (soulHouseDriverJ4 != null && (roomDataManagerA1 = soulHouseDriverJ4.a1()) != null && (roomUserA = RoomDataManager.A(roomDataManagerA1, false, 1, null)) != null) {
                        numValueOf = Integer.valueOf(roomUserA.getRole());
                    }
                    cn.soulapp.cpnt_voiceparty.util.track.a.F1(aVar, str2, strP, strU2, 2, numValueOf, null, 32, null);
                }
            }
        }, 124, null));
    }

    private final void u1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 63, new Class[0], Void.TYPE).isSupported || GlideUtils.d(getActivity())) {
            return;
        }
        SoulDialog.Companion companion = SoulDialog.INSTANCE;
        final SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
        attributeConfig.W(SoulDialogType.P12);
        attributeConfig.h0("游戏正在进行中");
        attributeConfig.U("当前退出游戏会严重影响其他玩家体验，并会受到惩罚，确定退出么？");
        attributeConfig.M("退出游戏");
        attributeConfig.S("考虑一下");
        attributeConfig.J(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$showPlayerGameingExitDialog$1$1
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
                SoulHouseExtensionKt.w0(attributeConfig, "exit", "点击 退出游戏");
                this.c1();
            }
        });
        attributeConfig.R(RoomMoreFunctionDialog$showPlayerGameingExitDialog$1$2.INSTANCE);
        SoulDialog soulDialogA = companion.a(attributeConfig);
        FragmentManager childFragmentManager = getChildFragmentManager();
        kotlin.jvm.internal.v.i(childFragmentManager, "childFragmentManager");
        soulDialogA.n(childFragmentManager);
    }

    private final void v0(ArrayList<FunctionMoreBean> arrayList) {
        if (!PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 19, new Class[]{ArrayList.class}, Void.TYPE).isSupported && cn.soulapp.cpnt_voiceparty.util.e.f162158a.z0()) {
            cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.d.f157607a.e(SoulHouseExtensionKt.j0(this.dataBus));
            arrayList.add(new FunctionMoreBean(R$drawable.Xb, "我的歌单", cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a.f157602a.c(), false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addSongListFunc$1
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
                    cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a aVar = cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a.f157602a;
                    aVar.h();
                    aVar.j(this.this$0.songListPlayLimitCount);
                    SongMachinePlayUtil.Companion companion = SongMachinePlayUtil.f157590a;
                    Context context = this.this$0.getContext();
                    FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
                    companion.l(fragmentActivity != null ? fragmentActivity.getSupportFragmentManager() : null, this.this$0.dataBus, "歌单广场");
                    cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.d.f157607a.d(SoulHouseExtensionKt.j0(this.this$0.dataBus));
                    this.this$0.dismiss();
                }
            }, 120, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v1(int i11) {
        SoulHouseContainer soulHouseContainerP0;
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 82, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        dismiss();
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 == null || (soulHouseContainerP0 = soulHouseDriverJ0.p0()) == null) {
            return;
        }
        soulHouseContainerP0.D(BlockMessage.MSG_SHOW_ROOM_CONFIG_DIALOG, Integer.valueOf(i11));
    }

    private final void w0(ArrayList<FunctionMoreBean> arrayList) {
        String aiManager;
        JoinRoomBean joinRoomBeanT;
        RoomCustomConfig roomCustomConfig;
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 51, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        ChatRoomSwitches chatRoomSwitchesM0 = M0();
        if (chatRoomSwitchesM0 != null ? kotlin.jvm.internal.v.e(chatRoomSwitchesM0.getAiManager(), Boolean.TRUE) : false) {
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
            if (soulHouseDriverJ0 == null || (joinRoomBeanT = SoulHouseExtensionKt.t(soulHouseDriverJ0)) == null || (roomCustomConfig = joinRoomBeanT.customConfig) == null || (aiManager = roomCustomConfig.getAiManager()) == null) {
                aiManager = "1";
            }
            final boolean z11 = cn.soulapp.lib.utils.ext.n.d(aiManager) == 1;
            arrayList.add(new FunctionMoreBean(((Number) ExtensionsKt.select(z11, Integer.valueOf(R$drawable.O8), Integer.valueOf(R$drawable.Cb))).intValue(), "禁用虚拟管家", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addVirtualButler$1
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
                    UserActionAssistant userActionAssistant = (UserActionAssistant) AssistantManager.f144995a.b(UserActionAssistant.class);
                    if (userActionAssistant != null) {
                        String str = (String) ExtensionsKt.select(z11, "0", "1");
                        final RoomMoreFunctionDialog roomMoreFunctionDialog = this;
                        final boolean z12 = z11;
                        userActionAssistant.updateCustomConfig("aiManager", str, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addVirtualButler$1.1
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
                                SoulHouseDriver soulHouseDriverJ1;
                                JoinRoomBean joinRoomBeanT2;
                                RoomCustomConfig roomCustomConfig2;
                                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (soulHouseDriverJ1 = SoulHouseExtensionKt.j0(roomMoreFunctionDialog.dataBus)) == null || (joinRoomBeanT2 = SoulHouseExtensionKt.t(soulHouseDriverJ1)) == null || (roomCustomConfig2 = joinRoomBeanT2.customConfig) == null) {
                                    return;
                                }
                                roomCustomConfig2.setAiManager((String) ExtensionsKt.select(z12, "0", "1"));
                            }
                        });
                    }
                    this.dismiss();
                }
            }, 124, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w1(final RoomTransferCheckData roomTransferCheckData) {
        if (PatchProxy.proxy(new Object[]{roomTransferCheckData}, this, changeQuickRedirect, false, 61, new Class[]{RoomTransferCheckData.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null) {
            SoulHouseExtensionKt.f(soulHouseDriverJ0);
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        final cn.soul.lib_dialog.b bVar = new cn.soul.lib_dialog.b();
        SoulDialogFragment soulDialogFragmentA = SoulDialogFragment.INSTANCE.a(bVar);
        String title = roomTransferCheckData.getTitle();
        if (title == null) {
            title = "";
        }
        bVar.t(title);
        bVar.v(24, 0);
        String toastMsg = roomTransferCheckData.getToastMsg();
        if (toastMsg == null) {
            toastMsg = "";
        }
        bVar.r(toastMsg);
        bVar.v(12, 24);
        String leftBtnText = roomTransferCheckData.getLeftBtnText();
        if (leftBtnText == null) {
            leftBtnText = "";
        }
        bVar.b(true, leftBtnText, R$style.f15486a, new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.g2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RoomMoreFunctionDialog.x1(bVar, jElapsedRealtime, this, view);
            }
        });
        bVar.v(0, 24);
        String rightBtnText = roomTransferCheckData.getRightBtnText();
        String str = rightBtnText != null ? rightBtnText : "";
        Boolean canTransfer = roomTransferCheckData.getCanTransfer();
        Boolean bool = Boolean.TRUE;
        bVar.b(true, str, (kotlin.jvm.internal.v.e(canTransfer, bool) && kotlin.jvm.internal.v.e(roomTransferCheckData.getHasTransferUser(), Boolean.FALSE)) ? cn.soulapp.cpnt_voiceparty.R$style.f130233f : R$style.f15489d, new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.h2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RoomMoreFunctionDialog.y1(roomTransferCheckData, this, view);
            }
        });
        bVar.e(ClosePos.BOTTOM);
        FragmentManager childFragmentManager = getChildFragmentManager();
        kotlin.jvm.internal.v.i(childFragmentManager, "childFragmentManager");
        soulDialogFragmentA.o(childFragmentManager);
        if (kotlin.jvm.internal.v.e(roomTransferCheckData.getCanTransfer(), bool)) {
            cn.soulapp.cpnt_voiceparty.util.track.n.f162406a.b(SoulHouseExtensionKt.j0(this.dataBus), Integer.valueOf(kotlin.jvm.internal.v.e(roomTransferCheckData.getHasTransferUser(), bool) ? 1 : 0));
        }
    }

    private final void x0(ArrayList<FunctionMoreBean> arrayList) {
        if (!PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 47, new Class[]{ArrayList.class}, Void.TYPE).isSupported && cn.soulapp.cpnt_voiceparty.util.e.f162158a.Q()) {
            arrayList.add(new FunctionMoreBean(R$drawable.f127394p0, "添加桌面组件", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addWidgetFunc$1
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
                    GroupWidgetGuideDialog.f130601h.a().show(this.this$0.getParentFragmentManager(), "GroupWidgetGuideDialog");
                    this.this$0.dismiss();
                }
            }, 124, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x1(cn.soul.lib_dialog.b this_apply, long j11, RoomMoreFunctionDialog this$0, View view) {
        String joinCode;
        RoomIntentData roomIntentData;
        if (PatchProxy.proxy(new Object[]{this_apply, new Long(j11), this$0, view}, null, changeQuickRedirect, true, 89, new Class[]{cn.soul.lib_dialog.b.class, Long.TYPE, RoomMoreFunctionDialog.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this_apply, "$this_apply");
        kotlin.jvm.internal.v.j(this$0, "this$0");
        SoulHouseExtensionKt.w0(this_apply, "roomTransfer exit", "点击 关闭房间");
        cn.soulapp.cpnt_voiceparty.util.track.a aVar = cn.soulapp.cpnt_voiceparty.util.track.a.f162372a;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j11;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this$0.dataBus);
        if (soulHouseDriverJ0 == null || (roomIntentData = (RoomIntentData) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.l0())) == null || (joinCode = roomIntentData.getJoinCode()) == null) {
            joinCode = "";
        }
        aVar.z(1, 1, 3, jElapsedRealtime, joinCode);
        this$0.c1();
    }

    private final void y0(ArrayList<FunctionMoreBean> arrayList) {
        RoomConfigBean roomConfigBean;
        final String giftWishRouterUrl;
        Boolean wishSettings;
        if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 46, new Class[]{ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        ChatRoomSwitches chatRoomSwitchesM0 = M0();
        boolean zBooleanValue = (chatRoomSwitchesM0 == null || (wishSettings = chatRoomSwitchesM0.getWishSettings()) == null) ? false : wishSettings.booleanValue();
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 == null || (roomConfigBean = (RoomConfigBean) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.u0())) == null || (giftWishRouterUrl = roomConfigBean.getGiftWishRouterUrl()) == null || !zBooleanValue) {
            return;
        }
        if (giftWishRouterUrl.length() > 0) {
            arrayList.add(new FunctionMoreBean(R$drawable.Cc, "心愿设置", false, false, false, null, null, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomMoreFunctionDialog$addWishSettingsFunc$1
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
                    this.this$0.dismiss();
                    SoulRouter.j().e(giftWishRouterUrl).d();
                }
            }, 124, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y1(RoomTransferCheckData roomTransferData, RoomMoreFunctionDialog this$0, View view) {
        SoulHouseContainer soulHouseContainerP0;
        if (PatchProxy.proxy(new Object[]{roomTransferData, this$0, view}, null, changeQuickRedirect, true, 90, new Class[]{RoomTransferCheckData.class, RoomMoreFunctionDialog.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(roomTransferData, "$roomTransferData");
        kotlin.jvm.internal.v.j(this$0, "this$0");
        Boolean canTransfer = roomTransferData.getCanTransfer();
        Boolean bool = Boolean.TRUE;
        if (kotlin.jvm.internal.v.e(canTransfer, bool) && kotlin.jvm.internal.v.e(roomTransferData.getHasTransferUser(), Boolean.FALSE)) {
            return;
        }
        if (kotlin.jvm.internal.v.e(roomTransferData.getCanTransfer(), bool)) {
            cn.soulapp.cpnt_voiceparty.util.track.n.f162406a.a(SoulHouseExtensionKt.j0(this$0.dataBus));
            if (!kotlin.jvm.internal.v.e(roomTransferData.getCanStartTransfer(), bool)) {
                String startTransferFailMsg = roomTransferData.getStartTransferFailMsg();
                if (startTransferFailMsg == null) {
                    startTransferFailMsg = "";
                }
                b80.n0.h(startTransferFailMsg, new Object[0]);
                return;
            }
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this$0.dataBus);
            if (soulHouseDriverJ0 != null && (soulHouseContainerP0 = soulHouseDriverJ0.p0()) != null) {
                soulHouseContainerP0.D(BlockMessage.MSG_OPEN_ROOM_TRANSFER_USER_DIALOG, roomTransferData);
            }
        }
        this$0.dismiss();
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    private final void z0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 69, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        h30.g.f225309a.Z6().subscribeWith(HttpSubscriber.create(new c()));
    }

    private final boolean z1() {
        ThrowingThunderSlice throwingThunderSlice;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 68, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        ThrowingThunderInfo throwingThunderInfo = (soulHouseDriverJ0 == null || (throwingThunderSlice = (ThrowingThunderSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.P())) == null) ? null : throwingThunderSlice.getThrowingThunderInfo();
        return CommonUtil.r1(SoulHouseExtensionKt.j0(this.dataBus)) && (throwingThunderInfo != null ? throwingThunderInfo.inSpecialStage() : false) && (throwingThunderInfo != null ? throwingThunderInfo.isOnSeat(cn.soulapp.android.client.component.middle.platform.utils.user.a.w()) : false);
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinDialogNoLeakFragment
    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 85, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.f148783u.clear();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinDialogNoLeakFragment
    public float dimAmount() {
        return 0.0f;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinDialogNoLeakFragment
    public int getLayoutId() {
        return R$layout.A4;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinDialogNoLeakFragment
    public int gravity() {
        return 48;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinDialogNoLeakFragment
    public void initView() {
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 10, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.initView();
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null && SoulHouseExtensionKt.b(soulHouseDriverJ0)) {
            z11 = true;
        }
        TextView textView = (TextView) getMRootView().findViewById(R$id.f128757ql0);
        kotlin.jvm.internal.v.i(textView, "mRootView.tvUserManagerTag");
        ExtensionsKt.visibleOrGone(textView, z11);
        TextView textView2 = (TextView) getMRootView().findViewById(R$id.Ec0);
        kotlin.jvm.internal.v.i(textView2, "mRootView.tvPartyManagerTag");
        ExtensionsKt.visibleOrGone(textView2, z11);
        RecyclerView recyclerView = (RecyclerView) getMRootView().findViewById(R$id.cS);
        kotlin.jvm.internal.v.i(recyclerView, "mRootView.rvBottomFunction");
        ExtensionsKt.visibleOrGone(recyclerView, z11);
        O0();
        R0();
        L0();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinDialogNoLeakFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @SuppressLint({"MissingSuperCall"})
    public void onDestroyView() {
        Window window;
        View decorView;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 84, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onDestroyView();
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setOnTouchListener(null);
        }
        this.soulThemeDialog = null;
        ((RecyclerView) getMRootView().findViewById(R$id.AT)).setAdapter(null);
        ((RecyclerView) getMRootView().findViewById(R$id.cS)).setAdapter(null);
        ArrayList<FunctionMoreBean> arrayList = this.topFuncData;
        if (arrayList != null) {
            arrayList.clear();
        }
        ArrayList<FunctionMoreBean> arrayList2 = this.bottomFuncData;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        this.topFuncData = null;
        this.bottomFuncData = null;
        _$_clearFindViewByIdCache();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseKotlinDialogNoLeakFragment
    public int windowMode() {
        return 0;
    }
}