package cn.soulapp.cpnt_voiceparty.setting;

import a60.c0;
import a60.l;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelProvider;
import cn.android.lib.soul_interface.main.IReactNativeService;
import cn.mate.android.config.SConfiger;
import cn.mate.android.utils.MateScreenUtil;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.lib_dialog.R$style;
import cn.soul.lib_dialog.SoulDialogFragment;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.android.chatroom.bean.CreateChatRoomPreCheckBean;
import cn.soulapp.android.chatroom.bean.FmExtInfo;
import cn.soulapp.android.chatroom.bean.JoinRoomBean;
import cn.soulapp.android.chatroom.bean.RoomCustomConfig;
import cn.soulapp.android.chatroom.data.DataChangeListener;
import cn.soulapp.android.chatroom.data.RoomDataManager;
import cn.soulapp.android.chatroom.data.RoomUserExtension;
import cn.soulapp.android.chatroom.utils.ChatMKVUtil;
import cn.soulapp.android.chatroom.utils.r;
import cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment;
import cn.soulapp.android.client.component.middle.platform.bean.im.RoomUser;
import cn.soulapp.android.client.component.middle.platform.cons.h5.Const;
import cn.soulapp.android.lib.common.R;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.android.lib.common.utils.GsonTool;
import cn.soulapp.android.lib.common.utils.mmkv.SKV;
import cn.soulapp.android.lib.photopicker.bean.PhotoTab;
import cn.soulapp.android.lib.rn.ReactNativeRouterCallback;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.android.utils.AnyExtKt;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$string;
import cn.soulapp.cpnt_voiceparty.api.ISoulHouse;
import cn.soulapp.cpnt_voiceparty.appwidget.GroupWidgetGuideDialog;
import cn.soulapp.cpnt_voiceparty.bean.ChatRoomSwitches;
import cn.soulapp.cpnt_voiceparty.bean.DislikeDataBean;
import cn.soulapp.cpnt_voiceparty.bean.FunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.LiveRoomDetailModel;
import cn.soulapp.cpnt_voiceparty.bean.MsgBizParam;
import cn.soulapp.cpnt_voiceparty.bean.MyInfoInRoom;
import cn.soulapp.cpnt_voiceparty.bean.OnlineUserModel;
import cn.soulapp.cpnt_voiceparty.bean.PlayFunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.bean.RoomConfigBean;
import cn.soulapp.cpnt_voiceparty.databinding.CVpDialogPartySettingBinding;
import cn.soulapp.cpnt_voiceparty.dialog.RoomPlayFunctionDialog;
import cn.soulapp.cpnt_voiceparty.function.b0;
import cn.soulapp.cpnt_voiceparty.highlightrecord.PartyHighlightEntryHelper;
import cn.soulapp.cpnt_voiceparty.highlightrecord.PartyHighlightRecordSlice;
import cn.soulapp.cpnt_voiceparty.highlightrecord.bean.VideoRecordState;
import cn.soulapp.cpnt_voiceparty.mvvm.ChatRoomListViewModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseActivity;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseContainer;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.assistant.AssistantManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.assistant.RoomAssistant;
import cn.soulapp.cpnt_voiceparty.soulhouse.assistant.UserActionAssistant;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.BlackboardInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.PartyAssistantModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.RightsFeatureModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.detail.SoulHouseDetailFragment;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.BannedDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.PartyAssistantUxDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.SeatApplyUxDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.powersave.PowerSaveMode;
import cn.soulapp.cpnt_voiceparty.soulhouse.powersave.PowerSaveModeStore;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.CommonSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.SliceManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.SongMachinePlayUtil;
import cn.soulapp.cpnt_voiceparty.ui.ChatRoomListActivity;
import cn.soulapp.cpnt_voiceparty.ui.SoulHouseShareDialog;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.BlockMessage;
import cn.soulapp.cpnt_voiceparty.ui.dislike.RoomMoreDislikeUxDialog;
import cn.soulapp.cpnt_voiceparty.ui.dislike.RoomMoreDislikeUxV2Dialog;
import cn.soulapp.cpnt_voiceparty.util.CommonUtil;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l111l1111llIl;
import com.ishumei.smantifraud.l11l11I1111l;
import com.tencent.connect.common.Constants;
import com.umeng.analytics.pro.bt;
import com.walid.rxretrofit.HttpSubscriber;
import defpackage.SongListPlayCount;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.q0;
import kotlin.collections.r0;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlin.m;
import kotlin.text.p;
import kotlin.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ty.s;
import ty.u;

/* JADX INFO: compiled from: PartySettingDialog.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n*\u0002\u0083\u0001\u0018\u0000 \u0098\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0099\u0001B\u0013\u0012\b\u0010j\u001a\u0004\u0018\u00010e¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\n\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000e\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000f\u0010\rJ\u0016\u0010\u0013\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010\u0014\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010\u0015\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0016H\u0002J\u0016\u0010\u001c\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0016\u0010\u001e\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0016H\u0002J\u0016\u0010 \u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0019\u0010\"\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\"\u0010\rJ\u0016\u0010#\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010$\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010%\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010&\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010'\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\n\u0010)\u001a\u0004\u0018\u00010(H\u0002J\b\u0010*\u001a\u00020\u000bH\u0002J\b\u0010+\u001a\u00020\u000bH\u0002J\b\u0010,\u001a\u00020\u000bH\u0002J\u0010\u0010.\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\tH\u0002J\b\u0010/\u001a\u00020\u000bH\u0002J\u0016\u00100\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u00101\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u00102\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u00103\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0019\u00104\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b4\u0010\rJ\u0016\u00105\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u00106\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u00107\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u00108\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u00109\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\b\u0010:\u001a\u00020\u000bH\u0002J\b\u0010;\u001a\u00020\u0016H\u0002J\b\u0010<\u001a\u00020\u000bH\u0002J\u0016\u0010=\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010>\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\b\u0010?\u001a\u00020(H\u0002J\u0016\u0010@\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0010\u0010B\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020\tH\u0002J\u0016\u0010C\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010D\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010E\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0012\u0010G\u001a\u00020\u000b2\b\b\u0002\u0010F\u001a\u00020\u0016H\u0002J\b\u0010H\u001a\u00020\u000bH\u0002J\u0010\u0010I\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\tH\u0002J\u0016\u0010J\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u001e\u0010N\u001a\u00020\u000b2\u0006\u0010L\u001a\u00020K2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110MH\u0002J\u0010\u0010Q\u001a\u00020\u000b2\u0006\u0010P\u001a\u00020OH\u0002J\u0018\u0010R\u001a\u00020\u000b2\u0006\u0010L\u001a\u00020K2\u0006\u0010P\u001a\u00020\u0011H\u0002J\b\u0010S\u001a\u00020\u000bH\u0002J\b\u0010T\u001a\u00020\u000bH\u0003J\u0019\u0010U\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\bU\u0010\rJ\b\u0010V\u001a\u00020\u000bH\u0002J\b\u0010W\u001a\u00020\u000bH\u0002J\b\u0010X\u001a\u00020\u000bH\u0002J\b\u0010Y\u001a\u00020\u000bH\u0002J\b\u0010Z\u001a\u00020\u000bH\u0002J\b\u0010[\u001a\u00020\u000bH\u0002J\b\u0010\\\u001a\u00020\u000bH\u0002J\b\u0010]\u001a\u00020\u000bH\u0002J\b\u0010^\u001a\u00020\u000bH\u0016J\b\u0010_\u001a\u00020\u000bH\u0016J\b\u0010`\u001a\u00020\tH\u0016J\b\u0010a\u001a\u00020\tH\u0016J\b\u0010b\u001a\u00020\tH\u0016J\b\u0010c\u001a\u00020\tH\u0014J\b\u0010d\u001a\u00020\tH\u0014R\u0019\u0010j\u001a\u0004\u0018\u00010e8\u0006¢\u0006\f\n\u0004\bf\u0010g\u001a\u0004\bh\u0010iR\u001c\u0010m\u001a\b\u0012\u0004\u0012\u00020O0\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u001c\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010lR\u001c\u0010q\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010lR\u001c\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010lR\u0016\u0010v\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010uR\u0018\u0010z\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0016\u0010~\u001a\u00020{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0018\u0010\u0086\u0001\u001a\u00030\u0083\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001a\u0010\u0088\u0001\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010yR\u001b\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001b\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008a\u0001R\u0018\u0010\u008f\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010&R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u001b\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u008a\u0001¨\u0006\u009a\u0001"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/PartySettingDialog;", "Lcn/soulapp/android/client/component/middle/platform/base/BaseBindingDialogFragment;", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpDialogPartySettingBinding;", "Lcn/soulapp/cpnt_voiceparty/setting/PartySettingContainerDialog;", "D0", "Lcn/soulapp/cpnt_voiceparty/soulhouse/slice/CommonSlice;", "C0", "Lcn/soulapp/cpnt_voiceparty/soulhouse/slice/e;", "F0", "", "role", "Lkotlin/w;", "w0", "(Ljava/lang/Integer;)V", "I0", l111l1111llIl.l11l111l1lll, "", "", "items", ExifInterface.LATITUDE_SOUTH, "f0", "t0", "", "switchChecked", "Lcn/soulapp/cpnt_voiceparty/setting/SwitchSettingItemModel;", "z0", "currentChecked", "X0", "R", "x0", "U", "U0", "b0", "y0", "Z0", "h0", ExifInterface.LONGITUDE_WEST, "o0", "Z", "s0", "", "G0", "P0", "M0", "H0", "status", "g1", "h1", "a0", ExifInterface.GPS_DIRECTION_TRUE, "g0", "X", "Y0", "c0", "Y", "r0", "k0", "i0", "L0", "K0", "R0", "n0", "m0", "Q0", "d0", "type", "f1", "O", "p0", "e0", "checked", "V0", "b1", "e1", "v0", "Landroid/widget/LinearLayout;", "container", "", "B0", "Lcn/soulapp/cpnt_voiceparty/setting/FeatureEntranceModel;", "model", "S0", "T0", "N0", "A0", "J0", "l0", "Q", "j0", "u0", "P", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "q0", "O0", "initView", "onDestroyView", "getDialogHeight", "getDialogWidth", "getDialogTheme", "getWindowAnimationStyleResId", "gravity", "Lcn/soul/android/base/block_frame/databus/DataBus;", "g", "Lcn/soul/android/base/block_frame/databus/DataBus;", "E0", "()Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "h", "Ljava/util/List;", "entranceList", "i", "userManageItems", "j", "roomSettingItems", "k", "otherSettingItems", "l", "I", "privateStatus", "Lcn/soulapp/cpnt_voiceparty/setting/NormalSettingItemModel;", "m", "Lcn/soulapp/cpnt_voiceparty/setting/NormalSettingItemModel;", "roomStatusItemModel", "", "n", "J", "songListPlayLimitCount", "Lcn/soulapp/cpnt_voiceparty/bean/OnlineUserModel;", "o", "Lcn/soulapp/cpnt_voiceparty/bean/OnlineUserModel;", "seatApplyFirstPageData", "cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$f", "p", "Lcn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$f;", "functionTypeChangeListener", "q", "connectManagerItemModel", "r", "Lcn/soulapp/cpnt_voiceparty/setting/SwitchSettingItemModel;", "selfTakeSeatItemModel", "s", "enterMessageMergeItemModel", "t", "isLoadDislikeData", "Lcn/soulapp/cpnt_voiceparty/setting/ButtonSettingItemModel;", bt.aF, "Lcn/soulapp/cpnt_voiceparty/setting/ButtonSettingItemModel;", "recommendItemModel", "v", "invisibilityCloakItemModel", AppAgent.CONSTRUCT, "(Lcn/soul/android/base/block_frame/databus/DataBus;)V", "x", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class PartySettingDialog extends BaseBindingDialogFragment<CVpDialogPartySettingBinding> {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private final DataBus dataBus;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int privateStatus;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private NormalSettingItemModel roomStatusItemModel;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private long songListPlayLimitCount;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private OnlineUserModel seatApplyFirstPageData;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private NormalSettingItemModel connectManagerItemModel;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private SwitchSettingItemModel selfTakeSeatItemModel;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private SwitchSettingItemModel enterMessageMergeItemModel;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private boolean isLoadDislikeData;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private ButtonSettingItemModel recommendItemModel;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private SwitchSettingItemModel invisibilityCloakItemModel;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f144130w = new LinkedHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private List<FeatureEntranceModel> entranceList = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private List<Object> userManageItems = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private List<Object> roomSettingItems = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private List<Object> otherSettingItems = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final f functionTypeChangeListener = new f();

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\f"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$a;", "", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "Lcn/soulapp/cpnt_voiceparty/setting/PartySettingDialog;", "a", "", "DEFAULT_MERGE_FAIL_TOAST", "Ljava/lang/String;", "TAG", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(q qVar) {
            this();
        }

        @JvmStatic
        @NotNull
        public final PartySettingDialog a(@Nullable DataBus dataBus) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class}, PartySettingDialog.class);
            if (patchProxyResultProxy.isSupported) {
                return (PartySettingDialog) patchProxyResultProxy.result;
            }
            PartySettingDialog partySettingDialog = new PartySettingDialog(dataBus);
            partySettingDialog.setArguments(new Bundle());
            return partySettingDialog;
        }
    }

    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f144133a;
        public static ChangeQuickRedirect changeQuickRedirect;

        static {
            if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 1, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            int[] iArr = new int[PowerSaveMode.values().length];
            iArr[PowerSaveMode.SMART.ordinal()] = 1;
            iArr[PowerSaveMode.FORCE.ordinal()] = 2;
            iArr[PowerSaveMode.OFF.ordinal()] = 3;
            f144133a = iArr;
        }
    }

    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$c", "Lcom/walid/rxretrofit/HttpSubscriber;", "", "t", "Lkotlin/w;", "success", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c extends HttpSubscriber<Object> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List<Object> f144134a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PartySettingDialog f144135b;

        c(List<Object> list, PartySettingDialog partySettingDialog) {
            this.f144134a = list;
            this.f144135b = partySettingDialog;
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void success(@Nullable Object obj) {
            if (PatchProxy.proxy(new Object[]{obj}, this, changeQuickRedirect, false, 2, new Class[]{Object.class}, Void.TYPE).isSupported) {
                return;
            }
            Double d11 = obj instanceof Double ? (Double) obj : null;
            boolean z11 = ((int) (d11 != null ? d11.doubleValue() : 1.0d)) == 0;
            Iterator<Object> it = this.f144134a.iterator();
            int i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                }
                Object next = it.next();
                if ((next instanceof SwitchSettingItemModel) && v.e(((SwitchSettingItemModel) next).getTitle(), "禁止所有人上麦")) {
                    break;
                } else {
                    i11++;
                }
            }
            if (i11 >= 0) {
                this.f144134a.set(i11, this.f144135b.x0(z11));
                PartySettingDialog partySettingDialog = this.f144135b;
                LinearLayout linearLayout = PartySettingDialog.j(partySettingDialog).f132947n;
                v.i(linearLayout, "binding.llUserManageItems");
                partySettingDialog.B0(linearLayout, this.f144134a);
            }
        }
    }

    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$d", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "Lcn/soulapp/cpnt_voiceparty/bean/OnlineUserModel;", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class d extends HttpSubscriber<RequestResult<OnlineUserModel>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        d() {
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable RequestResult<OnlineUserModel> requestResult) {
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if (requestResult != null && requestResult.getResult()) {
                PartySettingDialog.this.seatApplyFirstPageData = requestResult.getData();
                OnlineUserModel data = requestResult.getData();
                List<RoomUser> roomerModelList = data != null ? data.getRoomerModelList() : null;
                boolean z11 = !(roomerModelList == null || roomerModelList.isEmpty());
                NormalSettingItemModel normalSettingItemModel = PartySettingDialog.this.connectManagerItemModel;
                if (normalSettingItemModel != null) {
                    PartySettingDialog partySettingDialog = PartySettingDialog.this;
                    normalSettingItemModel.k(z11);
                    LinearLayout linearLayout = PartySettingDialog.j(partySettingDialog).f132947n;
                    v.i(linearLayout, "binding.llUserManageItems");
                    partySettingDialog.T0(linearLayout, normalSettingItemModel);
                }
            }
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
        }
    }

    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$e", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PartyAssistantModel;", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class e extends HttpSubscriber<PartyAssistantModel> {
        public static ChangeQuickRedirect changeQuickRedirect;

        e() {
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable PartyAssistantModel partyAssistantModel) {
            List<RightsFeatureModel> listE;
            Object next;
            boolean zE = false;
            if (PatchProxy.proxy(new Object[]{partyAssistantModel}, this, changeQuickRedirect, false, 2, new Class[]{PartyAssistantModel.class}, Void.TYPE).isSupported) {
                return;
            }
            if (partyAssistantModel != null && (listE = partyAssistantModel.e()) != null) {
                Iterator<T> it = listE.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!v.e(((RightsFeatureModel) next).getRightsCode(), RightsFeatureModel.ASSISTANT_AUTO_MIRCO));
                RightsFeatureModel rightsFeatureModel = (RightsFeatureModel) next;
                if (rightsFeatureModel != null) {
                    zE = v.e(rightsFeatureModel.getSwitchOn(), Boolean.TRUE);
                }
            }
            SwitchSettingItemModel switchSettingItemModel = PartySettingDialog.this.selfTakeSeatItemModel;
            if (switchSettingItemModel != null) {
                PartySettingDialog partySettingDialog = PartySettingDialog.this;
                switchSettingItemModel.e(zE);
                LinearLayout linearLayout = PartySettingDialog.j(partySettingDialog).f132947n;
                v.i(linearLayout, "binding.llUserManageItems");
                partySettingDialog.T0(linearLayout, switchSettingItemModel);
            }
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
        }
    }

    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$f", "Lcn/soulapp/android/chatroom/data/DataChangeListener;", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "oldData", "newData", "Lkotlin/w;", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class f implements DataChangeListener<FunctionBean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        f() {
        }

        @Override // cn.soulapp.android.chatroom.data.DataChangeListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onDataChange(@Nullable FunctionBean functionBean, @Nullable FunctionBean functionBean2) {
            RoomDataManager roomDataManagerA1;
            RoomUser roomUserA;
            if (PatchProxy.proxy(new Object[]{functionBean, functionBean2}, this, changeQuickRedirect, false, 2, new Class[]{FunctionBean.class, FunctionBean.class}, Void.TYPE).isSupported) {
                return;
            }
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(PartySettingDialog.this.getDataBus());
            Integer numValueOf = null;
            if (soulHouseDriverJ0 != null && (roomDataManagerA1 = soulHouseDriverJ0.a1()) != null && (roomUserA = RoomDataManager.A(roomDataManagerA1, false, 1, null)) != null) {
                numValueOf = Integer.valueOf(roomUserA.getRole());
            }
            PartySettingDialog.this.I0(numValueOf);
        }
    }

    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J$\u0010\r\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¨\u0006\u000e"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$g", "Lty/u;", "Lcn/soulapp/android/net/HttpResult;", "LSongListPlayCount;", "t", "Lkotlin/w;", "onNext", "", "code", "", "msg", "", l11l11I1111l.l111l1111lIl, "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class g extends u<HttpResult<SongListPlayCount>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        g() {
        }

        @Override // ty.u
        public void onError(int i11, @Nullable String str, @Nullable Throwable th2) {
        }

        @Override // ty.u
        public void onNext(@Nullable HttpResult<SongListPlayCount> httpResult) {
            SongListPlayCount data;
            Long limitCount;
            if (PatchProxy.proxy(new Object[]{httpResult}, this, changeQuickRedirect, false, 2, new Class[]{HttpResult.class}, Void.TYPE).isSupported) {
                return;
            }
            PartySettingDialog.this.songListPlayLimitCount = (httpResult == null || (data = httpResult.getData()) == null || (limitCount = data.getLimitCount()) == null) ? 0L : limitCount.longValue();
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class h implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f144143a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f144144b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ SoulHouseDriver f144145c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ PartySettingDialog f144146d;

        public h(View view, long j11, SoulHouseDriver soulHouseDriver, PartySettingDialog partySettingDialog) {
            this.f144143a = view;
            this.f144144b = j11;
            this.f144145c = soulHouseDriver;
            this.f144146d = partySettingDialog;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f144143a) > this.f144144b) {
                ViewExtKt.q(this.f144143a, jCurrentTimeMillis);
                SoulHouseDriver soulHouseDriver = this.f144145c;
                if ((soulHouseDriver != null ? (PlayFunctionBean) soulHouseDriver.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0()) : null) == null) {
                    this.f144146d.A0();
                } else {
                    PartySettingContainerDialog partySettingContainerDialogD0 = this.f144146d.D0();
                    if (partySettingContainerDialogD0 != null) {
                        RoomPlayFunctionDialog roomPlayFunctionDialogB = RoomPlayFunctionDialog.Companion.b(RoomPlayFunctionDialog.INSTANCE, this.f144146d.getDataBus(), null, 2, null);
                        final PartySettingDialog partySettingDialog = this.f144146d;
                        roomPlayFunctionDialogB.C(new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$initCurrentPlayMode$1$1$1
                            public static ChangeQuickRedirect changeQuickRedirect;

                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ w invoke() {
                                invoke2();
                                return w.f231958a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                PartySettingContainerDialog partySettingContainerDialogD1;
                                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (partySettingContainerDialogD1 = partySettingDialog.D0()) == null) {
                                    return;
                                }
                                partySettingContainerDialogD1.dismissAllowingStateLoss();
                            }
                        });
                        partySettingContainerDialogD0.s(roomPlayFunctionDialogB, "RoomPlayFunctionDialog", true);
                    }
                }
                u30.a.f243719a.d(this.f144146d.getDataBus());
            }
        }
    }

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/lib/utils/ext/ViewExtKt$b", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class i implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f144147a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f144148b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ PartySettingDialog f144149c;

        public i(View view, long j11, PartySettingDialog partySettingDialog) {
            this.f144147a = view;
            this.f144148b = j11;
            this.f144149c = partySettingDialog;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            w wVar;
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ViewExtKt.d(this.f144147a) > this.f144148b) {
                ViewExtKt.q(this.f144147a, jCurrentTimeMillis);
                PartySettingContainerDialog partySettingContainerDialogD0 = this.f144149c.D0();
                if (partySettingContainerDialogD0 != null) {
                    partySettingContainerDialogD0.dismissAllowingStateLoss();
                    wVar = w.f231958a;
                } else {
                    wVar = null;
                }
                if (wVar == null) {
                    this.f144149c.dismissAllowingStateLoss();
                }
            }
        }
    }

    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$j", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/LiveRoomDetailModel;", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class j extends HttpSubscriber<LiveRoomDetailModel> {
        public static ChangeQuickRedirect changeQuickRedirect;

        j() {
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable LiveRoomDetailModel liveRoomDetailModel) {
            Integer privateStatus;
            if (PatchProxy.proxy(new Object[]{liveRoomDetailModel}, this, changeQuickRedirect, false, 2, new Class[]{LiveRoomDetailModel.class}, Void.TYPE).isSupported || liveRoomDetailModel == null || (privateStatus = liveRoomDetailModel.getPrivateStatus()) == null) {
                return;
            }
            PartySettingDialog partySettingDialog = PartySettingDialog.this;
            partySettingDialog.privateStatus = privateStatus.intValue();
            partySettingDialog.h1();
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
        }
    }

    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0016J\u001c\u0010\b\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0016¨\u0006\t"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$k", "Lcn/soulapp/android/lib/rn/ReactNativeRouterCallback;", "", "", "", "params", "Lkotlin/w;", "onReceived", "onReceivedAfterPop", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class k implements ReactNativeRouterCallback {
        public static ChangeQuickRedirect changeQuickRedirect;

        k() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(PartySettingDialog this$0, int i11) {
            if (PatchProxy.proxy(new Object[]{this$0, new Integer(i11)}, null, changeQuickRedirect, true, 4, new Class[]{PartySettingDialog.class, Integer.TYPE}, Void.TYPE).isSupported) {
                return;
            }
            v.j(this$0, "this$0");
            this$0.g1(i11);
        }

        @Override // cn.soulapp.android.lib.rn.ReactNativeRouterCallback
        public void onReceived(@NotNull Map<String, ? extends Object> params) {
            if (PatchProxy.proxy(new Object[]{params}, this, changeQuickRedirect, false, 2, new Class[]{Map.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(params, "params");
        }

        @Override // cn.soulapp.android.lib.rn.ReactNativeRouterCallback
        public void onReceivedAfterPop(@NotNull Map<String, ? extends Object> params) {
            if (PatchProxy.proxy(new Object[]{params}, this, changeQuickRedirect, false, 3, new Class[]{Map.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(params, "params");
            Object obj = params.get("privateStatus");
            Double d11 = obj instanceof Double ? (Double) obj : null;
            final int iDoubleValue = d11 != null ? (int) d11.doubleValue() : 0;
            ConstraintLayout constraintLayoutA = PartySettingDialog.j(PartySettingDialog.this).getRoot();
            final PartySettingDialog partySettingDialog = PartySettingDialog.this;
            constraintLayoutA.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.setting.j
                @Override // java.lang.Runnable
                public final void run() {
                    PartySettingDialog.k.b(partySettingDialog, iDoubleValue);
                }
            });
        }
    }

    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$l", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class l extends HttpSubscriber<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f144153b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f144154d;

        l(boolean z11, int i11) {
            this.f144153b = z11;
            this.f144154d = i11;
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable RequestResult<Object> requestResult) {
            w wVar;
            RoomDataManager roomDataManagerA1;
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            w wVar2 = null;
            RoomUserExtension roomUserExtension = null;
            wVar2 = null;
            wVar2 = null;
            if (requestResult != null) {
                PartySettingDialog partySettingDialog = PartySettingDialog.this;
                int i11 = this.f144154d;
                boolean z11 = this.f144153b;
                if (requestResult.getResult()) {
                    SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(partySettingDialog.getDataBus());
                    MyInfoInRoom myInfoInRoomZ = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.z(soulHouseDriverJ0) : null;
                    if (myInfoInRoomZ != null) {
                        myInfoInRoomZ.setInvisibilityCloakStatus(i11);
                    }
                    SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(partySettingDialog.getDataBus());
                    if (soulHouseDriverJ1 != null && (roomDataManagerA1 = soulHouseDriverJ1.a1()) != null) {
                        RoomUserExtension roomUserExtensionL = roomDataManagerA1.L();
                        if (roomUserExtensionL != null) {
                            roomUserExtensionL.setInvisibilityCloakStatus(i11);
                            roomUserExtension = roomUserExtensionL;
                        }
                        roomDataManagerA1.r0(roomUserExtension);
                        wVar = w.f231958a;
                    }
                } else {
                    partySettingDialog.V0(!z11);
                    String failedMsg = requestResult.getFailedMsg();
                    if (failedMsg == null) {
                        failedMsg = "";
                    }
                    ExtensionsKt.toast(failedMsg);
                    wVar = w.f231958a;
                }
                wVar2 = wVar;
            }
            if (wVar2 == null) {
                PartySettingDialog.this.V0(true ^ this.f144153b);
            }
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            PartySettingDialog.this.V0(!this.f144153b);
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
        }
    }

    /* JADX INFO: compiled from: PartySettingDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$m", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "Lcn/soulapp/android/chatroom/bean/CreateChatRoomPreCheckBean;", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class m extends HttpSubscriber<RequestResult<CreateChatRoomPreCheckBean>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f144157b;

        m(int i11) {
            this.f144157b = i11;
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable RequestResult<CreateChatRoomPreCheckBean> requestResult) {
            SoulHouseDriver soulHouseDriverJ0;
            PartyHighlightRecordSlice partyHighlightRecordSlice;
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if (!(requestResult != null && requestResult.getResult())) {
                String failedMsg = requestResult != null ? requestResult.getFailedMsg() : null;
                if (failedMsg == null) {
                    failedMsg = "";
                }
                ExtensionsKt.toast(failedMsg);
                return;
            }
            PartySettingDialog.this.privateStatus = this.f144157b;
            PartySettingDialog.this.h1();
            if (this.f144157b == 0 || (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(PartySettingDialog.this.getDataBus())) == null || (partyHighlightRecordSlice = (PartyHighlightRecordSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.D())) == null) {
                return;
            }
            partyHighlightRecordSlice.j0();
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 78, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    public PartySettingDialog(@Nullable DataBus dataBus) {
        this.dataBus = dataBus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    public final void A0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 62, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        AnyExtKt.c(h30.g.f225309a.r7(), this).subscribeWith(new HttpSubscriber<PlayFunctionBean>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$fetchPlaySetupAndShowModeDialog$1
            public static ChangeQuickRedirect changeQuickRedirect;

            @Override // com.walid.rxretrofit.HttpSubscriber
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(@Nullable PlayFunctionBean playFunctionBean) {
                if (PatchProxy.proxy(new Object[]{playFunctionBean}, this, changeQuickRedirect, false, 2, new Class[]{PlayFunctionBean.class}, Void.TYPE).isSupported || playFunctionBean == null) {
                    return;
                }
                final PartySettingDialog partySettingDialog = this.f144141a;
                playFunctionBean.updateFuncOpenState(partySettingDialog.getDataBus());
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(partySettingDialog.getDataBus());
                if (soulHouseDriverJ0 != null) {
                    soulHouseDriverJ0.provideX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0(), playFunctionBean);
                }
                PartySettingContainerDialog partySettingContainerDialogD0 = partySettingDialog.D0();
                if (partySettingContainerDialogD0 != null) {
                    RoomPlayFunctionDialog roomPlayFunctionDialogB = RoomPlayFunctionDialog.Companion.b(RoomPlayFunctionDialog.INSTANCE, partySettingDialog.getDataBus(), null, 2, null);
                    roomPlayFunctionDialogB.C(new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$fetchPlaySetupAndShowModeDialog$1$success$1$1$1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ w invoke() {
                            invoke2();
                            return w.f231958a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            PartySettingContainerDialog partySettingContainerDialogD1;
                            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (partySettingContainerDialogD1 = partySettingDialog.D0()) == null) {
                                return;
                            }
                            partySettingContainerDialogD1.dismissAllowingStateLoss();
                        }
                    });
                    partySettingContainerDialogD0.s(roomPlayFunctionDialogB, "RoomPlayFunctionDialog", true);
                }
            }

            @Override // com.walid.rxretrofit.HttpSubscriber
            public void error(int i11, @Nullable String str) {
                if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                    return;
                }
                ExtensionsKt.toast(String.valueOf(str));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B0(LinearLayout linearLayout, List<? extends Object> list) {
        if (PatchProxy.proxy(new Object[]{linearLayout, list}, this, changeQuickRedirect, false, 58, new Class[]{LinearLayout.class, List.class}, Void.TYPE).isSupported) {
            return;
        }
        linearLayout.removeAllViews();
        Context ctx = linearLayout.getContext();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, ExtensionsKt.dp(68));
        for (Object obj : list) {
            if (obj instanceof NormalSettingItemModel) {
                v.i(ctx, "ctx");
                NormalSettingItemView normalSettingItemView = new NormalSettingItemView(ctx, null, 0, 6, null);
                normalSettingItemView.setTag(obj);
                normalSettingItemView.setModel((NormalSettingItemModel) obj);
                linearLayout.addView(normalSettingItemView, layoutParams);
            } else if (obj instanceof SwitchSettingItemModel) {
                v.i(ctx, "ctx");
                SwitchSettingItemView switchSettingItemView = new SwitchSettingItemView(ctx, null, 0, 6, null);
                switchSettingItemView.setTag(obj);
                switchSettingItemView.setModel((SwitchSettingItemModel) obj);
                linearLayout.addView(switchSettingItemView, layoutParams);
            } else if (obj instanceof ButtonSettingItemModel) {
                v.i(ctx, "ctx");
                ButtonSettingItemView buttonSettingItemView = new ButtonSettingItemView(ctx, null, 0, 6, null);
                buttonSettingItemView.setTag(obj);
                buttonSettingItemView.setModel((ButtonSettingItemModel) obj);
                linearLayout.addView(buttonSettingItemView, layoutParams);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CommonSlice C0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], CommonSlice.class);
        if (patchProxyResultProxy.isSupported) {
            return (CommonSlice) patchProxyResultProxy.result;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null) {
            return (CommonSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.n());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PartySettingContainerDialog D0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], PartySettingContainerDialog.class);
        if (patchProxyResultProxy.isSupported) {
            return (PartySettingContainerDialog) patchProxyResultProxy.result;
        }
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof PartySettingContainerDialog) {
            return (PartySettingContainerDialog) parentFragment;
        }
        return null;
    }

    private final cn.soulapp.cpnt_voiceparty.soulhouse.slice.e F0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], cn.soulapp.cpnt_voiceparty.soulhouse.slice.e.class);
        if (patchProxyResultProxy.isSupported) {
            return (cn.soulapp.cpnt_voiceparty.soulhouse.slice.e) patchProxyResultProxy.result;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null) {
            return (cn.soulapp.cpnt_voiceparty.soulhouse.slice.e) SoulHouseExtensionKt.g0(soulHouseDriverJ0, SliceManager.INSTANCE.v());
        }
        return null;
    }

    private final String G0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 27, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        int i11 = this.privateStatus;
        if (i11 == 0) {
            return "所有人";
        }
        if (i11 == 1) {
            return "关闭推荐分发";
        }
        if (i11 != 2) {
            return i11 != 3 ? "所有人" : "仅特定私聊对象可进";
        }
        return SConfiger.getString("close_friend_option_title", "仅挚友可进");
    }

    private final void H0() {
        if (!PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 30, new Class[0], Void.TYPE).isSupported && cn.soulapp.cpnt_voiceparty.util.e.f162158a.z0()) {
            ty.q.J(((ISoulHouse) ty.q.z(ISoulHouse.class)).getSongListPlayCount(), new g());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I0(Integer role) {
        RoomDataManager roomDataManagerA1;
        List<FunctionBean> listY;
        RoomDataManager roomDataManagerA2;
        boolean z11 = true;
        if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 8, new Class[]{Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        if (role == null || role.intValue() != 1) {
            ViewExtKt.j(getBinding().f132935b);
            return;
        }
        ViewExtKt.l(getBinding().f132935b);
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        ArrayList arrayList = null;
        FunctionBean functionBeanW = (soulHouseDriverJ0 == null || (roomDataManagerA2 = soulHouseDriverJ0.a1()) == null) ? null : roomDataManagerA2.w();
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        if (functionBeanW != null) {
            TextView textView = getBinding().f132949p;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("当前玩法:");
            String name = functionBeanW.getName();
            if (name == null) {
                name = "";
            }
            sb2.append(name);
            textView.setText(sb2.toString());
            TextView textView2 = getBinding().f132948o;
            String desc = functionBeanW.getDesc();
            textView2.setText(desc != null ? desc : "");
            getBinding().f132953t.setText("切换");
            String iconUrl = functionBeanW.getIconUrl();
            if (iconUrl != null && iconUrl.length() != 0) {
                z11 = false;
            }
            if (z11) {
                getBinding().f132938e.setImageResource(R$drawable.f127147cd);
            } else {
                ImageView imageView = getBinding().f132938e;
                v.i(imageView, "binding.ivPlayMode");
                cn.soulapp.android.chatroom.dynamic.b.d(imageView).m(functionBeanW.getIconUrl()).into(getBinding().f132938e);
            }
        } else {
            if (soulHouseDriverJ1 != null && (roomDataManagerA1 = soulHouseDriverJ1.a1()) != null && (listY = roomDataManagerA1.y()) != null) {
                arrayList = new ArrayList();
                for (Object obj : listY) {
                    Integer type = ((FunctionBean) obj).getType();
                    if (type != null && type.intValue() == 2) {
                        arrayList.add(obj);
                    }
                }
            }
            if (arrayList == null || arrayList.isEmpty()) {
                getBinding().f132949p.setText("暂无玩法");
                getBinding().f132948o.setText("当前为普通模式,可切换其他玩法");
                getBinding().f132953t.setText("切换");
                getBinding().f132938e.setImageResource(R$drawable.Q8);
            } else {
                FunctionBean functionBean = (FunctionBean) CollectionsKt___CollectionsKt.s0(arrayList);
                if (arrayList.size() == 1) {
                    TextView textView3 = getBinding().f132949p;
                    String name2 = functionBean.getName();
                    if (name2 == null) {
                        name2 = "";
                    }
                    textView3.setText(name2);
                } else {
                    TextView textView4 = getBinding().f132949p;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("房间玩法: ");
                    String name3 = functionBean.getName();
                    if (name3 == null) {
                        name3 = "";
                    }
                    sb3.append(name3);
                    sb3.append(" 等");
                    textView4.setText(sb3.toString());
                }
                TextView textView5 = getBinding().f132948o;
                String desc2 = functionBean.getDesc();
                textView5.setText(desc2 != null ? desc2 : "");
                getBinding().f132953t.setText("切换");
                String iconUrl2 = functionBean.getIconUrl();
                if (iconUrl2 != null && iconUrl2.length() != 0) {
                    z11 = false;
                }
                if (z11) {
                    getBinding().f132938e.setImageResource(R$drawable.f127147cd);
                } else {
                    ImageView imageView2 = getBinding().f132938e;
                    v.i(imageView2, "binding.ivPlayMode");
                    cn.soulapp.android.chatroom.dynamic.b.d(imageView2).m(functionBean.getIconUrl()).into(getBinding().f132938e);
                }
            }
        }
        ConstraintLayout constraintLayout = getBinding().f132935b;
        constraintLayout.setOnClickListener(new h(constraintLayout, 500L, soulHouseDriverJ1, this));
    }

    private final void J0(Integer role) {
        if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 63, new Class[]{Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        this.entranceList.clear();
        if (role != null && role.intValue() == 1) {
            l0();
            Q();
            j0();
            u0();
        } else if (role != null && role.intValue() == 3) {
            P();
            Q();
            V();
            u0();
        } else {
            V();
            Q();
            u0();
            q0();
        }
        LinearLayout linearLayout = getBinding().f132940g;
        v.i(linearLayout, "binding.llFeatureEntrances");
        Context context = linearLayout.getContext();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        for (FeatureEntranceModel featureEntranceModel : this.entranceList) {
            v.i(context, "context");
            FeatureEntranceView featureEntranceView = new FeatureEntranceView(context, null, 0, 6, null);
            featureEntranceView.setTag(featureEntranceModel);
            featureEntranceView.setModel(featureEntranceModel);
            linearLayout.addView(featureEntranceView, layoutParams);
        }
    }

    private final boolean K0() {
        ChatRoomModel chatRoomModelF;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 44, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        return ((soulHouseDriverJ0 == null || (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriverJ0)) == null) ? 0 : chatRoomModelF.createFrom) == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 43, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (!r.f26178a.c()) {
            AnyExtKt.c(h30.g.f225309a.h4("room"), this).subscribeWith(HttpSubscriber.create(new s<DislikeDataBean>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$loadDislikeDataAndShow$2
                public static ChangeQuickRedirect changeQuickRedirect;

                @Override // com.walid.rxretrofit.interfaces.IHttpCallback
                /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
                public void onNext(@Nullable DislikeDataBean dislikeDataBean) {
                    if (PatchProxy.proxy(new Object[]{dislikeDataBean}, this, changeQuickRedirect, false, 2, new Class[]{DislikeDataBean.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    this.f144155c.isLoadDislikeData = false;
                    if (dislikeDataBean == null) {
                        return;
                    }
                    RoomMoreDislikeUxDialog roomMoreDislikeUxDialogA = RoomMoreDislikeUxDialog.f161027k.a(dislikeDataBean, SoulHouseExtensionKt.j0(this.f144155c.getDataBus()));
                    final PartySettingDialog partySettingDialog = this.f144155c;
                    roomMoreDislikeUxDialogA.l(new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$loadDislikeDataAndShow$2$onNext$1$1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ w invoke() {
                            invoke2();
                            return w.f231958a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            PartySettingContainerDialog partySettingContainerDialogD0;
                            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (partySettingContainerDialogD0 = partySettingDialog.D0()) == null) {
                                return;
                            }
                            partySettingContainerDialogD0.dismissAllowingStateLoss();
                        }
                    });
                    FragmentManager parentFragmentManager = this.f144155c.getParentFragmentManager();
                    v.i(parentFragmentManager, "parentFragmentManager");
                    roomMoreDislikeUxDialogA.show(parentFragmentManager, "roomMoreDislike");
                }

                @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
                public void onError(int i11, @Nullable String str) {
                    if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    super.onError(i11, str);
                    this.f144155c.isLoadDislikeData = false;
                }
            }));
            return;
        }
        this.isLoadDislikeData = false;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 == null) {
            return;
        }
        RoomMoreDislikeUxV2Dialog roomMoreDislikeUxV2DialogA = RoomMoreDislikeUxV2Dialog.INSTANCE.a(soulHouseDriverJ0);
        roomMoreDislikeUxV2DialogA.f(new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$loadDislikeDataAndShow$1$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                PartySettingContainerDialog partySettingContainerDialogD0;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (partySettingContainerDialogD0 = this.this$0.D0()) == null) {
                    return;
                }
                partySettingContainerDialogD0.dismissAllowingStateLoss();
            }
        });
        FragmentManager parentFragmentManager = getParentFragmentManager();
        v.i(parentFragmentManager, "parentFragmentManager");
        roomMoreDislikeUxV2DialogA.show(parentFragmentManager, "roomMoreDislike");
    }

    private final void M0() {
        ChatRoomModel chatRoomModelF;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 29, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        String str = (soulHouseDriverJ0 == null || (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriverJ0)) == null) ? null : chatRoomModelF.f24092id;
        if (str == null) {
            return;
        }
        AnyExtKt.c(h30.g.f225309a.W2(str), this).subscribe(new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0051  */
    /* JADX WARN: Code duplicated, block: B:24:0x006d  */
    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    public final void N0() {
        SoulHouseDriver soulHouseDriverJ0;
        String roomUCode;
        String string;
        JoinRoomBean joinRoomBeanT;
        ChatRoomModel chatRoomModel;
        JoinRoomBean joinRoomBeanT2;
        FmExtInfo fmExtInfo;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 61, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ1 == null || (joinRoomBeanT2 = SoulHouseExtensionKt.t(soulHouseDriverJ1)) == null || (fmExtInfo = joinRoomBeanT2.fmExtInfo) == null) {
            StringBuilder sb2 = new StringBuilder();
            soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
            if (soulHouseDriverJ0 != null || (joinRoomBeanT = SoulHouseExtensionKt.t(soulHouseDriverJ0)) == null || (chatRoomModel = joinRoomBeanT.chatRoomModel) == null) {
                roomUCode = null;
            } else {
                roomUCode = chatRoomModel.getRoomUCode();
            }
            sb2.append(roomUCode);
            sb2.append(",roomid");
            SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.dataBus);
            sb2.append(soulHouseDriverJ2 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ2) : null);
            string = sb2.toString();
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(fmExtInfo.getShowFmCode());
            sb3.append(",roomid");
            SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(this.dataBus);
            sb3.append(soulHouseDriverJ3 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ3) : null);
            string = sb3.toString();
            if (string == null) {
                StringBuilder sb4 = new StringBuilder();
                soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
                if (soulHouseDriverJ0 != null) {
                    roomUCode = null;
                } else {
                    roomUCode = null;
                }
                sb4.append(roomUCode);
                sb4.append(",roomid");
                SoulHouseDriver soulHouseDriverJ4 = SoulHouseExtensionKt.j0(this.dataBus);
                sb4.append(soulHouseDriverJ4 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ4) : null);
                string = sb4.toString();
            }
        }
        a60.l.f1777a.n(Const.f27548a + "webview/#/exception-feedback?fm=" + string);
    }

    private final void O(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 51, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        list.add(new NormalSettingItemModel("异常反馈", "如果你遇到不好的体验，请告诉我们", null, false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addAbnormalFeedbackItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.N0();
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), Constants.VIA_REPORT_TYPE_SET_AVATAR, null, false, 12, null);
            }
        }, 44, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O0() {
        cn.soulapp.cpnt_voiceparty.soulhouse.blackboard.f fVar;
        BlackboardInfo blackboardInfoV;
        RoomDataManager roomDataManagerA1;
        RoomUser roomUserJ;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 71, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        String abstractContent = null;
        String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        String strB = cn.soulapp.android.client.component.middle.platform.utils.user.a.b((soulHouseDriverJ1 == null || (roomDataManagerA1 = soulHouseDriverJ1.a1()) == null || (roomUserJ = roomDataManagerA1.J()) == null) ? null : roomUserJ.getUserId());
        if (TextUtils.isEmpty(strP) || TextUtils.isEmpty(strB)) {
            return;
        }
        HashMap map = new HashMap();
        if (strP == null) {
            strP = "";
        }
        map.put("roomid", strP);
        if (strB == null) {
            strB = "";
        }
        map.put("ownerid", strB);
        map.put("roomType", "1");
        SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ2 != null && (fVar = (cn.soulapp.cpnt_voiceparty.soulhouse.blackboard.f) SoulHouseExtensionKt.g0(soulHouseDriverJ2, SliceManager.INSTANCE.g())) != null && (blackboardInfoV = fVar.getData()) != null) {
            abstractContent = blackboardInfoV.getAbstractContent();
        }
        if (!(abstractContent == null || abstractContent.length() == 0)) {
            map.put("abstractContent", abstractContent);
        }
        a60.l lVar = a60.l.f1777a;
        String strB2 = ih.a.b(Const.H5URL.f27564e0, map);
        v.i(strB2, "buildUrl(Const.H5URL.ROOM_REPORT_ROOM, params)");
        lVar.m(strB2);
    }

    private final void P() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 68, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.entranceList.add(new FeatureEntranceModel(R$drawable.f127582y8, "公告板", false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addAnnouncementBoardEntrance$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SoulHouseContainer soulHouseContainerP0;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                if (soulHouseDriverJ0 != null && (soulHouseContainerP0 = soulHouseDriverJ0.p0()) != null) {
                    soulHouseContainerP0.C(BlockMessage.MSG_SHOW_NOTICE_DIALOG);
                }
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), Constants.VIA_REPORT_TYPE_START_WAP, null, false, 12, null);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 28, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        boolean zN = b0.n(b0.f142548a, SoulHouseExtensionKt.j0(this.dataBus), Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154997v.getId()), null, 4, null);
        SoulRouter.j().e("soul://ul.soulapp.cn/reactnative/container?pageId=soul_rn_room_status_setting&privateStatus=" + this.privateStatus + "&showOnlyFriendOption=" + zN + "&animated=false&transparent=true").d();
        IReactNativeService iReactNativeService = (IReactNativeService) SoulRouter.j().u(IReactNativeService.class);
        if (iReactNativeService != null) {
            iReactNativeService.addRouterCallbackListener("soul_rn_room_status_setting", new k());
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T, cn.soulapp.cpnt_voiceparty.setting.FeatureEntranceModel, java.lang.Object] */
    private final void Q() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 65, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        int i11 = R$drawable.F8;
        CommonSlice commonSliceC0 = C0();
        ?? featureEntranceModel = new FeatureEntranceModel(i11, "氛围背景", commonSliceC0 != null ? v.e(commonSliceC0.getAiBackgroundShowRed(), Boolean.TRUE) : false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addAtomBgEntrance$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SoulHouseDriver soulHouseDriverJ0;
                SoulHouseContainer soulHouseContainerP0;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                FeatureEntranceModel featureEntranceModel2 = ref$ObjectRef.element;
                if (featureEntranceModel2 != null) {
                    PartySettingDialog partySettingDialog = this;
                    if (featureEntranceModel2.getShowRedPoint()) {
                        featureEntranceModel2.e(false);
                        partySettingDialog.S0(featureEntranceModel2);
                    }
                }
                if (CommonUtil.f161882a.e(SoulHouseExtensionKt.j0(this.getDataBus())) && (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.getDataBus())) != null && (soulHouseContainerP0 = soulHouseDriverJ0.p0()) != null) {
                    BlockMessage blockMessage = BlockMessage.MSG_SHOW_ROOM_CONFIG_DIALOG_UX;
                    final PartySettingDialog partySettingDialog2 = this;
                    soulHouseContainerP0.D(blockMessage, r0.n(m.a("tabIndex", 0), m.a("isUx", Boolean.TRUE), m.a("subPageCallback", new Function1<DialogFragment, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addAtomBgEntrance$1.2
                        public static ChangeQuickRedirect changeQuickRedirect;

                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @Nullable
                        public final w invoke(@NotNull DialogFragment fragment) {
                            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{fragment}, this, changeQuickRedirect, false, 2, new Class[]{DialogFragment.class}, w.class);
                            if (patchProxyResultProxy.isSupported) {
                                return (w) patchProxyResultProxy.result;
                            }
                            v.j(fragment, "fragment");
                            PartySettingContainerDialog partySettingContainerDialogD0 = partySettingDialog2.D0();
                            if (partySettingContainerDialogD0 == null) {
                                return null;
                            }
                            partySettingContainerDialogD0.s(fragment, "atmosphere", true);
                            return w.f231958a;
                        }
                    })));
                }
                u30.a.g(u30.a.f243719a, this.getDataBus(), "2", null, false, 12, null);
            }
        });
        ref$ObjectRef.element = featureEntranceModel;
        this.entranceList.add((FeatureEntranceModel) featureEntranceModel);
    }

    private final String Q0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 48, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        int i11 = b.f144133a[PowerSaveModeStore.f155098a.d().ordinal()];
        if (i11 == 1) {
            return "智能";
        }
        if (i11 == 2) {
            return "强制";
        }
        if (i11 == 3) {
            return "关闭";
        }
        throw new NoWhenBranchMatchedException();
    }

    private final void R(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 15, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        list.add(x0(false));
        h30.g gVar = h30.g.f225309a;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
        if (strP == null) {
            strP = "";
        }
        AnyExtKt.c(gVar.G1(strP), this).subscribe(new c(list, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 45, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof SoulHouseActivity) {
            ((SoulHouseActivity) activity).onBackPressed();
            SoulRouter.j().e("/chat/chatRoomList").A("firstTabName", PhotoTab.PHOTO_TAB_NAME_ALL).d();
        } else if (activity instanceof ChatRoomListActivity) {
            ((ChatRoomListViewModel) new ViewModelProvider(activity).get(ChatRoomListViewModel.class)).G().setValue(Boolean.TRUE);
        }
    }

    private final void S(List<Object> list) {
        String strP;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 10, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        NormalSettingItemModel normalSettingItemModel = new NormalSettingItemModel("连麦管理", "可批量管理申请上麦的用户", "", false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addConnectManagerItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                NormalSettingItemModel normalSettingItemModel2 = this.this$0.connectManagerItemModel;
                if (normalSettingItemModel2 != null) {
                    PartySettingDialog partySettingDialog = this.this$0;
                    normalSettingItemModel2.k(false);
                    LinearLayout linearLayout = PartySettingDialog.j(partySettingDialog).f132947n;
                    v.i(linearLayout, "binding.llUserManageItems");
                    partySettingDialog.T0(linearLayout, normalSettingItemModel2);
                }
                PartySettingContainerDialog partySettingContainerDialogD0 = this.this$0.D0();
                if (partySettingContainerDialogD0 != null) {
                    partySettingContainerDialogD0.s(SeatApplyUxDialog.f148908m.a(this.this$0.getDataBus(), this.this$0.seatApplyFirstPageData), "SeatApplyUxDialog", true);
                }
                this.this$0.seatApplyFirstPageData = null;
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), "5", null, false, 12, null);
            }
        }, 32, null);
        this.connectManagerItemModel = normalSettingItemModel;
        v.g(normalSettingItemModel);
        list.add(normalSettingItemModel);
        HashMap map = new HashMap();
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 == null || (strP = SoulHouseExtensionKt.P(soulHouseDriverJ0)) == null) {
            strP = "";
        }
        map.put("roomId", strP);
        AnyExtKt.c(h30.g.f225309a.F1(map), this).subscribe(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S0(FeatureEntranceModel featureEntranceModel) {
        if (PatchProxy.proxy(new Object[]{featureEntranceModel}, this, changeQuickRedirect, false, 59, new Class[]{FeatureEntranceModel.class}, Void.TYPE).isSupported) {
            return;
        }
        LinearLayout linearLayout = getBinding().f132940g;
        v.i(linearLayout, "binding.llFeatureEntrances");
        int childCount = linearLayout.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = linearLayout.getChildAt(i11);
            if (childAt.getTag() == featureEntranceModel && (childAt instanceof FeatureEntranceView)) {
                ((FeatureEntranceView) childAt).setModel(featureEntranceModel);
                return;
            }
        }
    }

    private final void T(List<Object> list) {
        String aiManager;
        JoinRoomBean joinRoomBeanT;
        RoomCustomConfig roomCustomConfig;
        ChatRoomSwitches chatRoomSwitches;
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 34, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if ((soulHouseDriverJ0 == null || (chatRoomSwitches = (ChatRoomSwitches) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.j())) == null) ? false : v.e(chatRoomSwitches.getAiManager(), Boolean.TRUE)) {
            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
            if (soulHouseDriverJ1 == null || (joinRoomBeanT = SoulHouseExtensionKt.t(soulHouseDriverJ1)) == null || (roomCustomConfig = joinRoomBeanT.customConfig) == null || (aiManager = roomCustomConfig.getAiManager()) == null) {
                aiManager = "1";
            }
            Integer numM = p.m(aiManager);
            if (numM != null && numM.intValue() == 1) {
                z11 = true;
            }
            list.add(new SwitchSettingItemModel("禁用虚拟管家", "开启后将禁用AI虚拟管家:麦麦", true ^ z11, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addDisableVirtualButlerItem$1
                public static ChangeQuickRedirect changeQuickRedirect;

                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return w.f231958a;
                }

                public final void invoke(final boolean z12) {
                    if (PatchProxy.proxy(new Object[]{new Byte(z12 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                        return;
                    }
                    UserActionAssistant userActionAssistant = (UserActionAssistant) AssistantManager.f144995a.b(UserActionAssistant.class);
                    if (userActionAssistant != null) {
                        String str = z12 ? "0" : "1";
                        final PartySettingDialog partySettingDialog = this.this$0;
                        userActionAssistant.updateCustomConfig("aiManager", str, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addDisableVirtualButlerItem$1.1
                            public static ChangeQuickRedirect changeQuickRedirect;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ w invoke() {
                                invoke2();
                                return w.f231958a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                SoulHouseDriver soulHouseDriverJ2;
                                JoinRoomBean joinRoomBeanT2;
                                RoomCustomConfig roomCustomConfig2;
                                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || (soulHouseDriverJ2 = SoulHouseExtensionKt.j0(partySettingDialog.getDataBus())) == null || (joinRoomBeanT2 = SoulHouseExtensionKt.t(soulHouseDriverJ2)) == null || (roomCustomConfig2 = joinRoomBeanT2.customConfig) == null) {
                                    return;
                                }
                                roomCustomConfig2.setAiManager(z12 ? "0" : "1");
                            }
                        });
                    }
                    u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, "6", z12, 2, null);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T0(LinearLayout linearLayout, Object obj) {
        if (PatchProxy.proxy(new Object[]{linearLayout, obj}, this, changeQuickRedirect, false, 60, new Class[]{LinearLayout.class, Object.class}, Void.TYPE).isSupported) {
            return;
        }
        int childCount = linearLayout.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = linearLayout.getChildAt(i11);
            if (childAt.getTag() == obj) {
                if ((obj instanceof NormalSettingItemModel) && (childAt instanceof NormalSettingItemView)) {
                    ((NormalSettingItemView) childAt).setModel((NormalSettingItemModel) obj);
                    return;
                }
                if ((obj instanceof SwitchSettingItemModel) && (childAt instanceof SwitchSettingItemView)) {
                    ((SwitchSettingItemView) childAt).setModel((SwitchSettingItemModel) obj);
                    return;
                } else {
                    if ((obj instanceof ButtonSettingItemModel) && (childAt instanceof ButtonSettingItemView)) {
                        ((ButtonSettingItemView) childAt).setModel((ButtonSettingItemModel) obj);
                        return;
                    }
                    return;
                }
            }
        }
    }

    private final void U(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 17, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        SwitchSettingItemModel switchSettingItemModel = new SwitchSettingItemModel("进场消息合并", "开启后，LV.4以下的用户，进房消息合并", ChatMKVUtil.b("switch_merge_enter_message", false), new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addEnterMessageMergeItem$model$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: compiled from: PartySettingDialog.kt */
            @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$addEnterMessageMergeItem$model$1$a", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
            public static final class a extends HttpSubscriber<RequestResult<Object>> {
                public static ChangeQuickRedirect changeQuickRedirect;

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ PartySettingDialog f144131a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ boolean f144132b;

                a(PartySettingDialog partySettingDialog, boolean z11) {
                    this.f144131a = partySettingDialog;
                    this.f144132b = z11;
                }

                @Override // com.walid.rxretrofit.HttpSubscriber
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(@Nullable RequestResult<Object> requestResult) {
                    SoulHouseDriver soulHouseDriverJ0;
                    SoulHouseContainer soulHouseContainerP0;
                    if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    if (requestResult != null && !requestResult.getResult()) {
                        String failedMsg = requestResult.getFailedMsg();
                        if (!(failedMsg.length() > 0)) {
                            failedMsg = null;
                        }
                        if (failedMsg == null) {
                            failedMsg = "操作失败，请稍后重试";
                        }
                        ExtensionsKt.toast(failedMsg);
                        this.f144131a.U0(this.f144132b);
                        return;
                    }
                    SwitchSettingItemModel switchSettingItemModel = this.f144131a.enterMessageMergeItemModel;
                    if (switchSettingItemModel != null) {
                        boolean z11 = this.f144132b;
                        PartySettingDialog partySettingDialog = this.f144131a;
                        switchSettingItemModel.e(z11);
                        LinearLayout linearLayout = PartySettingDialog.j(partySettingDialog).f132947n;
                        v.i(linearLayout, "binding.llUserManageItems");
                        partySettingDialog.T0(linearLayout, switchSettingItemModel);
                    }
                    ChatMKVUtil.o("switch_merge_enter_message", this.f144132b);
                    if (this.f144132b || (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f144131a.getDataBus())) == null || (soulHouseContainerP0 = soulHouseDriverJ0.p0()) == null) {
                        return;
                    }
                    soulHouseContainerP0.C(BlockMessage.MSG_CLOSE_ENTER_MERGE);
                }

                /* JADX WARN: Code duplicated, block: B:13:0x0037  */
                @Override // com.walid.rxretrofit.HttpSubscriber
                public void error(int i11, @Nullable String str) {
                    if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    if (str == null) {
                        str = "操作失败，请稍后重试";
                    } else {
                        if (!(str.length() > 0)) {
                            str = null;
                        }
                        if (str == null) {
                            str = "操作失败，请稍后重试";
                        }
                    }
                    ExtensionsKt.toast(str);
                    this.f144131a.U0(this.f144132b);
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return w.f231958a;
            }

            public final void invoke(boolean z11) {
                boolean z12 = true;
                if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                    return;
                }
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, "3", z11, 2, null);
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
                if (strP != null && strP.length() != 0) {
                    z12 = false;
                }
                if (!z12) {
                    AnyExtKt.c(h30.g.f225309a.fa(strP, z11 ? "1" : "0"), this.this$0).subscribe(new a(this.this$0, z11));
                } else {
                    ExtensionsKt.toast("操作失败，请稍后重试");
                    this.this$0.U0(z11);
                }
            }
        });
        this.enterMessageMergeItemModel = switchSettingItemModel;
        list.add(switchSettingItemModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
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
    public final void U0(boolean z11) {
        SwitchSettingItemModel switchSettingItemModel;
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 18, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported || (switchSettingItemModel = this.enterMessageMergeItemModel) == null) {
            return;
        }
        switchSettingItemModel.e(!z11);
        LinearLayout linearLayout = ((CVpDialogPartySettingBinding) getBinding()).f132947n;
        v.i(linearLayout, "binding.llUserManageItems");
        T0(linearLayout, switchSettingItemModel);
    }

    private final void V() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 69, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.entranceList.add(new FeatureEntranceModel(R$drawable.R9, "趣味中心", false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addFunCenterEntrance$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SoulHouseContainer soulHouseContainerP0;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                if (soulHouseDriverJ0 != null && (soulHouseContainerP0 = soulHouseDriverJ0.p0()) != null) {
                    BlockMessage blockMessage = BlockMessage.MSG_SHOW_INTEREST_CENTER_DIALOG;
                    final PartySettingDialog partySettingDialog = this.this$0;
                    soulHouseContainerP0.D(blockMessage, q0.f(m.a("subPageCallback", new Function1<DialogFragment, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addFunCenterEntrance$1.1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @Nullable
                        public final w invoke(@NotNull DialogFragment fragment) {
                            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{fragment}, this, changeQuickRedirect, false, 2, new Class[]{DialogFragment.class}, w.class);
                            if (patchProxyResultProxy.isSupported) {
                                return (w) patchProxyResultProxy.result;
                            }
                            v.j(fragment, "fragment");
                            PartySettingContainerDialog partySettingContainerDialogD0 = partySettingDialog.D0();
                            if (partySettingContainerDialogD0 == null) {
                                return null;
                            }
                            partySettingContainerDialogD0.s(fragment, "funCenter", true);
                            return w.f231958a;
                        }
                    })));
                }
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, null, false, 12, null);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V0(boolean z11) {
        SwitchSettingItemModel switchSettingItemModel;
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 54, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported || (switchSettingItemModel = this.invisibilityCloakItemModel) == null) {
            return;
        }
        switchSettingItemModel.e(z11);
        LinearLayout linearLayout = ((CVpDialogPartySettingBinding) getBinding()).f132942i;
        v.i(linearLayout, "binding.llOtherSettingItems");
        T0(linearLayout, switchSettingItemModel);
    }

    private final void W(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 23, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        list.add(new NormalSettingItemModel("趣味中心", "更多派对活动等你参与", null, false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addFunCenterItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SoulHouseContainer soulHouseContainerP0;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                if (soulHouseDriverJ0 != null && (soulHouseContainerP0 = soulHouseDriverJ0.p0()) != null) {
                    BlockMessage blockMessage = BlockMessage.MSG_SHOW_INTEREST_CENTER_DIALOG;
                    final PartySettingDialog partySettingDialog = this.this$0;
                    soulHouseContainerP0.D(blockMessage, q0.f(m.a("subPageCallback", new Function1<DialogFragment, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addFunCenterItem$1.1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @Nullable
                        public final w invoke(@NotNull DialogFragment fragment) {
                            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{fragment}, this, changeQuickRedirect, false, 2, new Class[]{DialogFragment.class}, w.class);
                            if (patchProxyResultProxy.isSupported) {
                                return (w) patchProxyResultProxy.result;
                            }
                            v.j(fragment, "fragment");
                            PartySettingContainerDialog partySettingContainerDialogD0 = partySettingDialog.D0();
                            if (partySettingContainerDialogD0 == null) {
                                return null;
                            }
                            partySettingContainerDialogD0.s(fragment, "funCenter", true);
                            return w.f231958a;
                        }
                    })));
                }
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, null, false, 12, null);
            }
        }, 44, null));
    }

    static /* synthetic */ void W0(PartySettingDialog partySettingDialog, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z11 = false;
        }
        partySettingDialog.V0(z11);
    }

    private final void X(List<Object> list) {
        JoinRoomBean joinRoomBeanT;
        RoomCustomConfig roomCustomConfig;
        String closeGiftEffect;
        Integer numM;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 36, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        list.add(new SwitchSettingItemModel("礼物特效屏蔽", "开启后，将屏蔽1000Soul币以下的礼物", (soulHouseDriverJ0 == null || (joinRoomBeanT = SoulHouseExtensionKt.t(soulHouseDriverJ0)) == null || (roomCustomConfig = joinRoomBeanT.customConfig) == null || (closeGiftEffect = roomCustomConfig.getCloseGiftEffect()) == null || (numM = p.m(closeGiftEffect)) == null || numM.intValue() != 1) ? false : true, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addGiftEffectShieldItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return w.f231958a;
            }

            public final void invoke(final boolean z11) {
                if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                    return;
                }
                UserActionAssistant userActionAssistant = (UserActionAssistant) AssistantManager.f144995a.b(UserActionAssistant.class);
                if (userActionAssistant != null) {
                    String str = z11 ? "1" : "0";
                    final PartySettingDialog partySettingDialog = this.this$0;
                    userActionAssistant.updateCustomConfig("closeGiftEffect", str, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addGiftEffectShieldItem$1.1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ w invoke() {
                            invoke2();
                            return w.f231958a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            JoinRoomBean joinRoomBeanT2;
                            RoomCustomConfig roomCustomConfig2;
                            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                                return;
                            }
                            ExtensionsKt.toast(z11 ? "已为您屏蔽其他用户1000Soul币以下礼物动画" : "已恢复礼物动画展示");
                            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(partySettingDialog.getDataBus());
                            if (soulHouseDriverJ1 == null || (joinRoomBeanT2 = SoulHouseExtensionKt.t(soulHouseDriverJ1)) == null || (roomCustomConfig2 = joinRoomBeanT2.customConfig) == null) {
                                return;
                            }
                            roomCustomConfig2.setCloseGiftEffect(z11 ? "1" : "0");
                        }
                    });
                }
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, "7", z11, 2, null);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
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
    public final void X0(boolean z11) {
        SwitchSettingItemModel switchSettingItemModel;
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 14, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported || (switchSettingItemModel = this.selfTakeSeatItemModel) == null) {
            return;
        }
        switchSettingItemModel.e(!z11);
        LinearLayout linearLayout = ((CVpDialogPartySettingBinding) getBinding()).f132947n;
        v.i(linearLayout, "binding.llUserManageItems");
        T0(linearLayout, switchSettingItemModel);
    }

    private final void Y(List<Object> list) {
        JoinRoomBean joinRoomBeanT;
        RoomCustomConfig roomCustomConfig;
        String closeGiftEffect;
        Integer numM;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 39, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        list.add(new SwitchSettingItemModel("礼物特效屏蔽", "开启后，将屏蔽1000Soul币以下的礼物", (soulHouseDriverJ0 == null || (joinRoomBeanT = SoulHouseExtensionKt.t(soulHouseDriverJ0)) == null || (roomCustomConfig = joinRoomBeanT.customConfig) == null || (closeGiftEffect = roomCustomConfig.getCloseGiftEffect()) == null || (numM = p.m(closeGiftEffect)) == null || numM.intValue() != 1) ? false : true, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addGiftEffectShieldItemToOtherSetting$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return w.f231958a;
            }

            public final void invoke(final boolean z11) {
                if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                    return;
                }
                UserActionAssistant userActionAssistant = (UserActionAssistant) AssistantManager.f144995a.b(UserActionAssistant.class);
                if (userActionAssistant != null) {
                    String str = z11 ? "1" : "0";
                    final PartySettingDialog partySettingDialog = this.this$0;
                    userActionAssistant.updateCustomConfig("closeGiftEffect", str, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addGiftEffectShieldItemToOtherSetting$1.1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ w invoke() {
                            invoke2();
                            return w.f231958a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            JoinRoomBean joinRoomBeanT2;
                            RoomCustomConfig roomCustomConfig2;
                            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                                return;
                            }
                            ExtensionsKt.toast(z11 ? "已为您屏蔽其他用户1000Soul币以下礼物动画" : "已恢复礼物动画展示");
                            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(partySettingDialog.getDataBus());
                            if (soulHouseDriverJ1 == null || (joinRoomBeanT2 = SoulHouseExtensionKt.t(soulHouseDriverJ1)) == null || (roomCustomConfig2 = joinRoomBeanT2.customConfig) == null) {
                                return;
                            }
                            roomCustomConfig2.setCloseGiftEffect(z11 ? "1" : "0");
                        }
                    });
                }
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, "7", z11, 2, null);
            }
        }));
    }

    private final void Y0(Integer role) {
        if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 37, new Class[]{Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        this.otherSettingItems.clear();
        if (role != null && role.intValue() == 1) {
            W(this.otherSettingItems);
            h0(this.otherSettingItems);
            X(this.otherSettingItems);
            n0(this.otherSettingItems);
            O(this.otherSettingItems);
        } else if (role != null && role.intValue() == 3) {
            h0(this.otherSettingItems);
            Y(this.otherSettingItems);
            n0(this.otherSettingItems);
            d0(this.otherSettingItems);
            O(this.otherSettingItems);
            r0(this.otherSettingItems);
        } else {
            p0(this.otherSettingItems);
            h0(this.otherSettingItems);
            n0(this.otherSettingItems);
            d0(this.otherSettingItems);
            e0(this.otherSettingItems);
            v0(this.otherSettingItems);
            Y(this.otherSettingItems);
            k0(this.otherSettingItems);
            i0(this.otherSettingItems);
            O(this.otherSettingItems);
        }
        LinearLayout linearLayout = getBinding().f132942i;
        v.i(linearLayout, "binding.llOtherSettingItems");
        B0(linearLayout, this.otherSettingItems);
    }

    private final void Z(List<Object> list) {
        RoomConfigBean roomConfigBean;
        final String giftWishRouterUrl;
        ChatRoomSwitches chatRoomSwitches;
        Boolean wishSettings;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 25, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        boolean zBooleanValue = (soulHouseDriverJ0 == null || (chatRoomSwitches = (ChatRoomSwitches) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.j())) == null || (wishSettings = chatRoomSwitches.getWishSettings()) == null) ? false : wishSettings.booleanValue();
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ1 == null || (roomConfigBean = (RoomConfigBean) soulHouseDriverJ1.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.u0())) == null || (giftWishRouterUrl = roomConfigBean.getGiftWishRouterUrl()) == null || !zBooleanValue) {
            return;
        }
        if (giftWishRouterUrl.length() == 0) {
            return;
        }
        list.add(new NormalSettingItemModel("礼物心愿单", "添加我的心愿", null, false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addGiftWishListItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                SoulRouter.j().e(giftWishRouterUrl).d();
                u30.a.g(u30.a.f243719a, this.getDataBus(), Constants.VIA_ACT_TYPE_NINETEEN, null, false, 12, null);
            }
        }, 44, null));
    }

    private final void Z0(Integer role) {
        if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 21, new Class[]{Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        this.roomSettingItems.clear();
        if (role != null && role.intValue() == 1) {
            c0(this.roomSettingItems);
            o0(this.roomSettingItems);
            Z(this.roomSettingItems);
            a0(this.roomSettingItems);
            s0(this.roomSettingItems);
            T(this.roomSettingItems);
            g0(this.roomSettingItems);
        }
        LinearLayout linearLayout = getBinding().f132944k;
        v.i(linearLayout, "binding.llRoomSettingItems");
        B0(linearLayout, this.roomSettingItems);
    }

    private final void a0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 33, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        list.add(new NormalSettingItemModel("群聊小助手", "本场派对的数据概览，管理自助上麦", null, false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addGroupAssistantItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                PartyAssistantUxDialog.a aVar = PartyAssistantUxDialog.f148616o;
                DataBus dataBus = this.this$0.getDataBus();
                v.g(dataBus);
                PartyAssistantUxDialog partyAssistantUxDialogA = aVar.a(dataBus);
                FragmentManager parentFragmentManager = this.this$0.getParentFragmentManager();
                v.i(parentFragmentManager, "parentFragmentManager");
                partyAssistantUxDialogA.show(parentFragmentManager, "PartyAssistantUxDialog");
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), "8", null, false, 12, null);
            }
        }, 44, null));
    }

    private final void a1(Integer role) {
        if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 9, new Class[]{Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        this.userManageItems.clear();
        if (role != null && role.intValue() == 1) {
            S(this.userManageItems);
            f0(this.userManageItems);
            t0(this.userManageItems);
            R(this.userManageItems);
            U(this.userManageItems);
            b0(this.userManageItems);
        } else if (role != null && role.intValue() == 3) {
            S(this.userManageItems);
            f0(this.userManageItems);
            o0(this.userManageItems);
            U(this.userManageItems);
            b0(this.userManageItems);
        }
        LinearLayout linearLayout = getBinding().f132947n;
        v.i(linearLayout, "binding.llUserManageItems");
        B0(linearLayout, this.userManageItems);
    }

    private final void b0(final List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 19, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        list.add(y0(false));
        RoomAssistant roomAssistant = (RoomAssistant) AssistantManager.f144995a.b(RoomAssistant.class);
        if (roomAssistant != null) {
            roomAssistant.getRoomCurEnterAnimSwitchState(SoulHouseExtensionKt.j0(this.dataBus), new Function1<Integer, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addHideEnterAnimationItem$1
                public static ChangeQuickRedirect changeQuickRedirect;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ w invoke(Integer num) {
                    invoke2(num);
                    return w.f231958a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Integer num) {
                    if (PatchProxy.proxy(new Object[]{num}, this, changeQuickRedirect, false, 2, new Class[]{Integer.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    boolean z11 = num == null || num.intValue() != 1;
                    Iterator<Object> it = list.iterator();
                    int i11 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i11 = -1;
                            break;
                        }
                        Object next = it.next();
                        if ((next instanceof SwitchSettingItemModel) && v.e(((SwitchSettingItemModel) next).getTitle(), "屏蔽进场动画")) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                    if (i11 >= 0) {
                        list.set(i11, this.y0(z11));
                        PartySettingDialog partySettingDialog = this;
                        LinearLayout linearLayout = PartySettingDialog.j(partySettingDialog).f132947n;
                        v.i(linearLayout, "binding.llUserManageItems");
                        partySettingDialog.B0(linearLayout, list);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 55, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (!CommonUtil.f161882a.f(SoulHouseExtensionKt.j0(this.dataBus))) {
            W0(this, false, 1, null);
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("开启『隐身斗篷』功能后，你将在派对中隐身，进入任意派对不会展示进场弹幕、动画和消息，用户列表中也不会展示你的头像，直至关闭功能； 隐身状态操作以下功能会有暴露风险：发消息、送礼、抽奖、关注、抢福袋、抢红包、CP魔法阵； 群主和管理不可使用该功能，上麦状态需要下麦才可开启该隐身。");
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor(MsgBizParam.HIGHLIGHT_COLOR)), 82, 108, 33);
        cn.soul.lib_dialog.b bVar = new cn.soul.lib_dialog.b();
        final SoulDialogFragment soulDialogFragmentA = SoulDialogFragment.INSTANCE.a(bVar);
        bVar.t("隐身斗篷");
        bVar.v(24, 12);
        bVar.k(spannableStringBuilder);
        bVar.v(0, 24);
        bVar.b(true, "取消", R$style.f15486a, new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.setting.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PartySettingDialog.c1(soulDialogFragmentA, this, view);
            }
        });
        bVar.b(true, "确定", R$style.f15489d, new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.setting.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PartySettingDialog.d1(soulDialogFragmentA, this, view);
            }
        });
        bVar.v(0, 12);
        FragmentManager childFragmentManager = getChildFragmentManager();
        v.i(childFragmentManager, "childFragmentManager");
        soulDialogFragmentA.show(childFragmentManager, "invisibilityClockDialog");
    }

    private final void c0(List<Object> list) {
        final SoulHouseDriver soulHouseDriverJ0;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 38, new Class[]{List.class}, Void.TYPE).isSupported || (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus)) == null) {
            return;
        }
        VideoRecordState videoRecordState = (VideoRecordState) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.B0());
        if (videoRecordState != null && videoRecordState.getHasRecordedThisSession()) {
            final NormalSettingItemModel normalSettingItemModel = new NormalSettingItemModel("精彩瞬间", "本派对的精彩瞬间", null, false, true, cn.soulapp.cpnt_voiceparty.highlightrecord.e.f142858a.d(), null, 76, null);
            normalSettingItemModel.h(new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addHighlightEntranceItem$1
                public static ChangeQuickRedirect changeQuickRedirect;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ w invoke() {
                    invoke2();
                    return w.f231958a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                        return;
                    }
                    cn.soulapp.cpnt_voiceparty.highlightrecord.e.f142858a.b();
                    if (normalSettingItemModel.getShowNewBadge()) {
                        normalSettingItemModel.j(false);
                        PartySettingDialog partySettingDialog = this;
                        LinearLayout linearLayout = PartySettingDialog.j(partySettingDialog).f132944k;
                        v.i(linearLayout, "binding.llRoomSettingItems");
                        partySettingDialog.T0(linearLayout, normalSettingItemModel);
                    }
                    PartyHighlightEntryHelper.f142659a.d(soulHouseDriverJ0, 2);
                }
            });
            list.add(normalSettingItemModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(SoulDialogFragment dialogFragment, PartySettingDialog this$0, View view) {
        if (PatchProxy.proxy(new Object[]{dialogFragment, this$0, view}, null, changeQuickRedirect, true, 75, new Class[]{SoulDialogFragment.class, PartySettingDialog.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(dialogFragment, "$dialogFragment");
        v.j(this$0, "this$0");
        dialogFragment.dismiss();
        W0(this$0, false, 1, null);
    }

    private final void d0(List<Object> list) {
        final cn.soulapp.cpnt_voiceparty.soulhouse.slice.e eVarF0;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 49, new Class[]{List.class}, Void.TYPE).isSupported || (eVarF0 = F0()) == null) {
            return;
        }
        String string = getString(R$string.F0);
        v.i(string, "getString(R.string.c_vp_ice_breaker_setting_title)");
        String string2 = getString(R$string.E0);
        v.i(string2, "getString(R.string.c_vp_ice_breaker_setting_desc)");
        list.add(new SwitchSettingItemModel(string, string2, eVarF0.getPermanentSwitchOn(), new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addIceBreakerItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return w.f231958a;
            }

            public final void invoke(final boolean z11) {
                if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                    return;
                }
                final String string3 = this.this$0.getString(R$string.D0);
                v.i(string3, "getString(R.string.c_vp_…er_permanent_close_toast)");
                cn.soulapp.cpnt_voiceparty.soulhouse.slice.e eVar = eVarF0;
                final PartySettingDialog partySettingDialog = this.this$0;
                eVar.U(z11, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addIceBreakerItem$1.1
                    public static ChangeQuickRedirect changeQuickRedirect;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                        invoke(bool.booleanValue());
                        return w.f231958a;
                    }

                    public final void invoke(boolean z12) {
                        if (!PatchProxy.proxy(new Object[]{new Byte(z12 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported && partySettingDialog.isAdded() && z12 && !z11) {
                            ExtensionsKt.toast(string3);
                        }
                    }
                });
                this.this$0.f1(z11 ? 1 : 0);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(SoulDialogFragment dialogFragment, PartySettingDialog this$0, View view) {
        if (PatchProxy.proxy(new Object[]{dialogFragment, this$0, view}, null, changeQuickRedirect, true, 76, new Class[]{SoulDialogFragment.class, PartySettingDialog.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(dialogFragment, "$dialogFragment");
        v.j(this$0, "this$0");
        dialogFragment.dismiss();
        this$0.e1(1);
        u30.a.g(u30.a.f243719a, this$0.dataBus, null, "9", true, 2, null);
    }

    private final void e0(List<Object> list) {
        MyInfoInRoom myInfoInRoomZ;
        MyInfoInRoom myInfoInRoomZ2;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 53, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (((soulHouseDriverJ0 == null || (myInfoInRoomZ2 = SoulHouseExtensionKt.z(soulHouseDriverJ0)) == null) ? 0 : myInfoInRoomZ2.getConsumeLevel()) < 9) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        SwitchSettingItemModel switchSettingItemModel = new SwitchSettingItemModel("隐身斗篷", "开启后，可隐身进居（群聊等级≥9级）", (soulHouseDriverJ1 == null || (myInfoInRoomZ = SoulHouseExtensionKt.z(soulHouseDriverJ1)) == null || myInfoInRoomZ.getInvisibilityCloakStatus() != 1) ? false : true, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addInvisibilityCloakItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return w.f231958a;
            }

            public final void invoke(boolean z11) {
                if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                    return;
                }
                if (z11) {
                    this.this$0.b1();
                } else {
                    this.this$0.e1(0);
                    u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, "9", false, 2, null);
                }
            }
        });
        this.invisibilityCloakItemModel = switchSettingItemModel;
        v.g(switchSettingItemModel);
        list.add(switchSettingItemModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e1(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 56, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        boolean z11 = i11 == 1;
        h30.g gVar = h30.g.f225309a;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        AnyExtKt.c(gVar.ba(soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null, cn.soulapp.android.client.component.middle.platform.utils.user.a.w(), Integer.valueOf(i11)), this).subscribe(new l(z11, i11));
    }

    private final void f0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 11, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        list.add(new NormalSettingItemModel("禁言管理", "管理本场派对禁言的成员", null, false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addMuteManagerItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                PartySettingContainerDialog partySettingContainerDialogD0 = this.this$0.D0();
                if (partySettingContainerDialogD0 != null) {
                    BannedDialog.a aVar = BannedDialog.f148230j;
                    DataBus dataBus = this.this$0.getDataBus();
                    SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                    String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
                    if (strP == null) {
                        strP = "";
                    }
                    partySettingContainerDialogD0.s(aVar.a(dataBus, strP), "BannedDialog", true);
                }
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), "6", null, false, 12, null);
            }
        }, 44, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f1(int i11) {
        RoomDataManager roomDataManagerA1;
        JoinRoomBean joinRoomBean;
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 50, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
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
        iVar.a("GroupChat_RoomDetail_quick_msg_setting_change", r0.l(pairArr));
    }

    private final void g0(List<Object> list) {
        ChatRoomSwitches chatRoomSwitches;
        boolean zE = false;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 35, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null && (chatRoomSwitches = (ChatRoomSwitches) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.j())) != null) {
            zE = v.e(chatRoomSwitches.getGroupChat(), Boolean.TRUE);
        }
        if (zE) {
            list.add(new NormalSettingItemModel("我的派对群", "管理创建自己的派对群", "创建派对群", false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addMyPartyGroupItem$1
                public static ChangeQuickRedirect changeQuickRedirect;

                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ w invoke() {
                    invoke2();
                    return w.f231958a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    c0 c0VarY;
                    RoomUser roomUserA;
                    c0 c0VarY2;
                    RoomUser roomUserA2;
                    c0 c0VarY3;
                    RoomUser roomUserA3;
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                        return;
                    }
                    cn.soul.android.component.a aVarE = SoulRouter.j().e("/chat/partyGroupList");
                    SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                    String avatarName = null;
                    cn.soul.android.component.a aVarA = aVarE.A("ownerIdEcpt", cn.soulapp.android.client.component.middle.platform.utils.user.a.b((soulHouseDriverJ1 == null || (c0VarY3 = SoulHouseExtensionKt.Y(soulHouseDriverJ1)) == null || (roomUserA3 = c0VarY3.a()) == null) ? null : roomUserA3.getUserId()));
                    SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                    cn.soul.android.component.a aVarA2 = aVarA.A("roomId", soulHouseDriverJ2 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ2) : null);
                    SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                    cn.soul.android.component.a aVarA3 = aVarA2.A("ownerName", (soulHouseDriverJ3 == null || (c0VarY2 = SoulHouseExtensionKt.Y(soulHouseDriverJ3)) == null || (roomUserA2 = c0VarY2.a()) == null) ? null : roomUserA2.getSignature());
                    SoulHouseDriver soulHouseDriverJ4 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                    if (soulHouseDriverJ4 != null && (c0VarY = SoulHouseExtensionKt.Y(soulHouseDriverJ4)) != null && (roomUserA = c0VarY.a()) != null) {
                        avatarName = roomUserA.getAvatarName();
                    }
                    aVarA3.A("ownerAvatarName", avatarName).d();
                    SKV.single().putBoolean(cn.soulapp.android.client.component.middle.platform.utils.user.a.w() + "chat_room_group_chat_red_point", false);
                    u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), "9", null, false, 12, null);
                }
            }, 40, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g1(int i11) {
        ChatRoomModel chatRoomModelF;
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 31, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        String str = (soulHouseDriverJ0 == null || (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriverJ0)) == null) ? null : chatRoomModelF.f24092id;
        if (str == null) {
            return;
        }
        AnyExtKt.c(h30.g.f225309a.ra(str, i11), this).subscribe(new m(i11));
    }

    private final void h0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 22, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        final NormalSettingItemModel normalSettingItemModel = new NormalSettingItemModel("我的歌单", "管理我的歌单列表", null, cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a.f157602a.c(), true, false, null, 100, null);
        normalSettingItemModel.h(new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addMySongListItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a aVar = cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.util.a.f157602a;
                aVar.h();
                normalSettingItemModel.k(false);
                PartySettingDialog partySettingDialog = this;
                LinearLayout linearLayout = PartySettingDialog.j(partySettingDialog).f132942i;
                v.i(linearLayout, "binding.llOtherSettingItems");
                partySettingDialog.T0(linearLayout, normalSettingItemModel);
                aVar.j(this.songListPlayLimitCount);
                SongMachinePlayUtil.Companion companion = SongMachinePlayUtil.f157590a;
                FragmentActivity activity = this.getActivity();
                companion.l(activity != null ? activity.getSupportFragmentManager() : null, this.getDataBus(), "歌单广场");
                u30.a.g(u30.a.f243719a, this.getDataBus(), "11", null, false, 12, null);
            }
        });
        list.add(normalSettingItemModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h1() {
        NormalSettingItemModel normalSettingItemModel;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 32, new Class[0], Void.TYPE).isSupported || (normalSettingItemModel = this.roomStatusItemModel) == null) {
            return;
        }
        normalSettingItemModel.i(G0());
        LinearLayout linearLayout = ((CVpDialogPartySettingBinding) getBinding()).f132944k;
        v.i(linearLayout, "binding.llRoomSettingItems");
        T0(linearLayout, normalSettingItemModel);
    }

    private final void i0(List<Object> list) {
        SoulHouseDriver soulHouseDriverJ0;
        JoinRoomBean joinRoomBean;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 42, new Class[]{List.class}, Void.TYPE).isSupported || (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus)) == null || !soulHouseDriverJ0.getIsCanShowDislike()) {
            return;
        }
        RoomDataManager roomDataManagerA1 = soulHouseDriverJ0.a1();
        if ((roomDataManagerA1 == null || (joinRoomBean = roomDataManagerA1.getJoinRoomBean()) == null || !joinRoomBean.showRecFeedback) ? false : true) {
            List listJsonToArrayEntity = GsonTool.jsonToArrayEntity(ChatMKVUtil.f25980a.j().getString(cn.soulapp.android.client.component.middle.platform.utils.user.a.w() + "_more_dislike_room_id", ""), String.class);
            v.i(listJsonToArrayEntity, "jsonToArrayEntity(mmkv.g…(key, \"\"), T::class.java)");
            if (listJsonToArrayEntity.contains(SoulHouseExtensionKt.P(soulHouseDriverJ0))) {
                return;
            }
            list.add(new NormalSettingItemModel("不感兴趣", "对本派对的话题或其他内容不感兴趣，请告诉我们", null, false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addNotInterestedItem$1
                public static ChangeQuickRedirect changeQuickRedirect;

                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ w invoke() {
                    invoke2();
                    return w.f231958a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                        return;
                    }
                    u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), Constants.VIA_REPORT_TYPE_WPA_STATE, null, false, 12, null);
                    if (this.this$0.isLoadDislikeData) {
                        return;
                    }
                    this.this$0.isLoadDislikeData = true;
                    this.this$0.L0();
                }
            }, 44, null));
        }
    }

    public static final /* synthetic */ CVpDialogPartySettingBinding j(PartySettingDialog partySettingDialog) {
        return partySettingDialog.getBinding();
    }

    private final void j0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 66, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.entranceList.add(new FeatureEntranceModel(R$drawable.f127282j8, "群主中心", cn.soulapp.cpnt_voiceparty.util.e.f162158a.e(), new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addOwnerActivityEntrance$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                l.f1777a.n("soul://ul.soulapp.cn/reactnative/container?pageId=soul_rn_club_party&subPage=ClubOwnerCenter&from=1");
                cn.soulapp.cpnt_voiceparty.util.e.f162158a.t0();
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), "群主中心", null, false, 12, null);
            }
        }));
    }

    private final void k0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 41, new Class[]{List.class}, Void.TYPE).isSupported || K0()) {
            return;
        }
        list.add(new NormalSettingItemModel("派对大厅", "前往派对大厅，查看更多派对", null, false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addPartyHallItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                SKV.single().putBoolean(cn.soulapp.android.client.component.middle.platform.utils.user.a.w() + "chat_room_party_hall_red_point_need_show", false);
                this.this$0.R0();
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), Constants.VIA_REPORT_TYPE_MAKE_FRIEND, null, false, 12, null);
            }
        }, 44, null));
    }

    private final void l0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 64, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.entranceList.add(new FeatureEntranceModel(R$drawable.I8, "派对信息", false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addPartyInfoEntrance$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                if (soulHouseDriverJ0 != null) {
                    PartySettingContainerDialog partySettingContainerDialogD0 = this.this$0.D0();
                    if (partySettingContainerDialogD0 != null) {
                        SoulHouseDetailFragment.a aVar = SoulHouseDetailFragment.f148026z;
                        JoinRoomBean joinRoomBeanT = SoulHouseExtensionKt.t(soulHouseDriverJ0);
                        ChatRoomModel chatRoomModel = joinRoomBeanT != null ? joinRoomBeanT.chatRoomModel : null;
                        MyInfoInRoom myInfoInRoomZ = SoulHouseExtensionKt.z(soulHouseDriverJ0);
                        RoomUser roomUserA = SoulHouseExtensionKt.Y(soulHouseDriverJ0).a();
                        JoinRoomBean joinRoomBeanT2 = SoulHouseExtensionKt.t(soulHouseDriverJ0);
                        SoulHouseDetailFragment soulHouseDetailFragmentA = aVar.a(chatRoomModel, myInfoInRoomZ, roomUserA, joinRoomBeanT2 != null ? joinRoomBeanT2.fmExtInfo : null, soulHouseDriverJ0.getJoinType());
                        Bundle arguments = soulHouseDetailFragmentA.getArguments();
                        if (arguments == null) {
                            arguments = new Bundle();
                        }
                        arguments.putBoolean("is_ux", true);
                        soulHouseDetailFragmentA.setArguments(arguments);
                        partySettingContainerDialogD0.s(soulHouseDetailFragmentA, "party_info", true);
                    } else {
                        cn.soul.android.component.a aVarE = SoulRouter.j().e("/chat/houseDetail");
                        JoinRoomBean joinRoomBeanT3 = SoulHouseExtensionKt.t(soulHouseDriverJ0);
                        cn.soul.android.component.a aVarY = aVarE.y("chat_room_model", joinRoomBeanT3 != null ? joinRoomBeanT3.chatRoomModel : null);
                        JoinRoomBean joinRoomBeanT4 = SoulHouseExtensionKt.t(soulHouseDriverJ0);
                        aVarY.y("chat_ext_info", joinRoomBeanT4 != null ? joinRoomBeanT4.fmExtInfo : null).y("my_info_in_room", SoulHouseExtensionKt.z(soulHouseDriverJ0)).y("room_owner_user", SoulHouseExtensionKt.Y(soulHouseDriverJ0).a()).u("room_join_type", soulHouseDriverJ0.getJoinType()).o("is_ux", true).d();
                    }
                }
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), "1", null, false, 12, null);
            }
        }));
    }

    private final void m0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 47, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        NormalSettingItemModel normalSettingItemModel = new NormalSettingItemModel("省电模式", "可延长设备使用时间，自动降低帧率", Q0(), false, true, false, null, 104, null);
        normalSettingItemModel.h(new PartySettingDialog$addPowerSaveModeEntry$1(this));
        list.add(normalSettingItemModel);
    }

    private final void n0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 46, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        if (cn.soulapp.cpnt_voiceparty.soulhouse.powersave.b.f155126a.d()) {
            m0(list);
            return;
        }
        cn.soulapp.cpnt_voiceparty.soulhouse.battery.b bVar = cn.soulapp.cpnt_voiceparty.soulhouse.battery.b.f145891a;
        if (bVar.e()) {
            list.add(new SwitchSettingItemModel("省电模式", "降低帧率，可延长设备使用时间", bVar.f(), new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addPowerSavingItem$1
                public static ChangeQuickRedirect changeQuickRedirect;

                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return w.f231958a;
                }

                public final void invoke(boolean z11) {
                    if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                        return;
                    }
                    cn.soulapp.cpnt_voiceparty.soulhouse.battery.b.f145891a.j(z11);
                    u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, "8", z11, 2, null);
                }
            }));
        }
    }

    private final void o0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 24, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        list.add(new NormalSettingItemModel("道具记录", "查看本场派对的道具记录", null, false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addPropRecordItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                c0 c0VarY;
                RoomUser roomUserA;
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                l lVar = l.f1777a;
                String str = Const.H5URL.f27569f2;
                Pair[] pairArr = new Pair[1];
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                pairArr[0] = m.a("roomOwnerIdEncrypt", cn.soulapp.android.client.component.middle.platform.utils.user.a.b((soulHouseDriverJ0 == null || (c0VarY = SoulHouseExtensionKt.Y(soulHouseDriverJ0)) == null || (roomUserA = c0VarY.a()) == null) ? null : roomUserA.getUserId()));
                String strB = ih.a.b(str, r0.l(pairArr));
                v.i(strB, "buildUrl(\n              …  )\n                    )");
                lVar.n(strB);
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), "7", null, false, 12, null);
            }
        }, 44, null));
    }

    private final void p0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 52, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        CommonSlice commonSliceC0 = C0();
        boolean zV = commonSliceC0 != null ? commonSliceC0.getHasRecommend() : false;
        ButtonSettingItemModel buttonSettingItemModel = new ButtonSettingItemModel("推荐派对", "将该派对推荐给好友", zV ? "取消推荐" : "推荐", !zV, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addRecommendItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                CommonSlice commonSliceC1 = this.this$0.C0();
                int i11 = commonSliceC1 != null && commonSliceC1.getHasRecommend() ? 2 : 1;
                CommonSlice commonSliceC2 = this.this$0.C0();
                if (commonSliceC2 != null) {
                    SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                    String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
                    final PartySettingDialog partySettingDialog = this.this$0;
                    commonSliceC2.O(strP, i11, new Function2<Integer, Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addRecommendItem$1.1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        /* JADX INFO: renamed from: invoke */
                        public /* bridge */ /* synthetic */ w mo3invoke(Integer num, Boolean bool) {
                            invoke(num.intValue(), bool.booleanValue());
                            return w.f231958a;
                        }

                        public final void invoke(int i12, boolean z11) {
                            if (!PatchProxy.proxy(new Object[]{new Integer(i12), new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE, Boolean.TYPE}, Void.TYPE).isSupported && z11) {
                                ButtonSettingItemModel buttonSettingItemModel2 = partySettingDialog.recommendItemModel;
                                if (buttonSettingItemModel2 != null) {
                                    PartySettingDialog partySettingDialog2 = partySettingDialog;
                                    if (i12 == 1) {
                                        buttonSettingItemModel2.f("取消推荐");
                                        buttonSettingItemModel2.g(false);
                                    } else {
                                        buttonSettingItemModel2.f("推荐");
                                        buttonSettingItemModel2.g(true);
                                    }
                                    LinearLayout linearLayout = PartySettingDialog.j(partySettingDialog2).f132942i;
                                    v.i(linearLayout, "binding.llOtherSettingItems");
                                    partySettingDialog2.T0(linearLayout, buttonSettingItemModel2);
                                }
                                ExtensionsKt.toast(i12 == 1 ? "已推荐，房间将推荐给更多人" : "已取消推荐");
                            }
                        }
                    });
                }
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, i11 == 1, 2, null);
            }
        });
        this.recommendItemModel = buttonSettingItemModel;
        v.g(buttonSettingItemModel);
        list.add(buttonSettingItemModel);
    }

    private final void q0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 70, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.entranceList.add(new FeatureEntranceModel(R$drawable.G8, "举报", false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addReportEntrance$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.O0();
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), Constants.VIA_REPORT_TYPE_JOININ_GROUP, null, false, 12, null);
            }
        }));
    }

    private final void r0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 40, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        list.add(new NormalSettingItemModel("举报", "如派对内有违规行为，请举报", null, false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addReportItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.O0();
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), Constants.VIA_REPORT_TYPE_JOININ_GROUP, null, false, 12, null);
            }
        }, 44, null));
    }

    private final void s0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 26, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        NormalSettingItemModel normalSettingItemModel = new NormalSettingItemModel("设置房间状态", "设置房间屏蔽状态", G0(), false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addRoomStatusItem$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                this.this$0.P0();
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), "18", null, this.this$0.privateStatus == 0, 4, null);
            }
        }, 40, null);
        this.roomStatusItemModel = normalSettingItemModel;
        list.add(normalSettingItemModel);
    }

    private final void t0(List<Object> list) {
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 12, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        SwitchSettingItemModel switchSettingItemModelZ0 = z0(false);
        this.selfTakeSeatItemModel = switchSettingItemModelZ0;
        v.g(switchSettingItemModelZ0);
        list.add(switchSettingItemModelZ0);
        h30.g gVar = h30.g.f225309a;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        AnyExtKt.c(gVar.H1(soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null), this).subscribe(new e());
    }

    private final void u0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 67, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.entranceList.add(new FeatureEntranceModel(R$drawable.f127525vb, "分享派对", false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addSharePartyEntrance$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ w invoke() {
                invoke2();
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                SoulHouseShareDialog soulHouseShareDialogD = SoulHouseShareDialog.Companion.d(SoulHouseShareDialog.INSTANCE, this.this$0.getDataBus(), null, 0, 6, null);
                FragmentManager parentFragmentManager = this.this$0.getParentFragmentManager();
                v.i(parentFragmentManager, "parentFragmentManager");
                soulHouseShareDialogD.show(parentFragmentManager, SoulHouseShareDialog.class.getSimpleName());
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), "4", null, false, 12, null);
            }
        }));
    }

    private final void v0(List<Object> list) {
        if (!PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 57, new Class[]{List.class}, Void.TYPE).isSupported && cn.soulapp.cpnt_voiceparty.util.e.f162158a.Q()) {
            list.add(new NormalSettingItemModel("派对小组件", "开启后可将派对小组件添加至桌面", null, false, true, false, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$addWidgetItem$1
                public static ChangeQuickRedirect changeQuickRedirect;

                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ w invoke() {
                    invoke2();
                    return w.f231958a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                        return;
                    }
                    PartySettingContainerDialog partySettingContainerDialogD0 = this.this$0.D0();
                    if (partySettingContainerDialogD0 != null) {
                        partySettingContainerDialogD0.s(GroupWidgetGuideDialog.f130601h.a(), "GroupWidgetGuideDialog", false);
                    }
                    u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), Constants.VIA_REPORT_TYPE_START_GROUP, null, false, 12, null);
                }
            }, 44, null));
        }
    }

    private final void w0(Integer role) {
        if (PatchProxy.proxy(new Object[]{role}, this, changeQuickRedirect, false, 7, new Class[]{Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        if (role != null && role.intValue() == 1) {
            ViewExtKt.l(getBinding().f132952s);
            ViewExtKt.l(getBinding().f132946m);
            ViewExtKt.l(getBinding().f132951r);
            ViewExtKt.l(getBinding().f132943j);
            ViewExtKt.l(getBinding().f132950q);
            ViewExtKt.l(getBinding().f132941h);
            return;
        }
        if (role != null && role.intValue() == 3) {
            ViewExtKt.l(getBinding().f132952s);
            ViewExtKt.l(getBinding().f132946m);
            ViewExtKt.j(getBinding().f132951r);
            ViewExtKt.j(getBinding().f132943j);
            ViewExtKt.l(getBinding().f132950q);
            ViewExtKt.l(getBinding().f132941h);
            return;
        }
        ViewExtKt.j(getBinding().f132952s);
        ViewExtKt.j(getBinding().f132946m);
        ViewExtKt.j(getBinding().f132951r);
        ViewExtKt.j(getBinding().f132943j);
        ViewExtKt.j(getBinding().f132950q);
        ViewExtKt.l(getBinding().f132941h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SwitchSettingItemModel x0(boolean switchChecked) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(switchChecked ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 16, new Class[]{Boolean.TYPE}, SwitchSettingItemModel.class);
        return patchProxyResultProxy.isSupported ? (SwitchSettingItemModel) patchProxyResultProxy.result : new SwitchSettingItemModel("禁止所有人上麦", "开启后，房客将不可申请上麦，只可群主邀请", switchChecked, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$createBannedTakeSeatModel$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: compiled from: PartySettingDialog.kt */
            @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$createBannedTakeSeatModel$1$a", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
            public static final class a extends HttpSubscriber<RequestResult<Object>> {
                public static ChangeQuickRedirect changeQuickRedirect;

                a() {
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
                    String failedMsg = requestResult != null ? requestResult.getFailedMsg() : null;
                    if (failedMsg == null) {
                        failedMsg = "";
                    }
                    ExtensionsKt.toast(failedMsg);
                }

                @Override // com.walid.rxretrofit.HttpSubscriber
                public void error(int i11, @Nullable String str) {
                    if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    if (str == null) {
                        str = "";
                    }
                    ExtensionsKt.toast(str);
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return w.f231958a;
            }

            public final void invoke(boolean z11) {
                if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                    return;
                }
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
                if (strP == null) {
                    strP = "";
                }
                AnyExtKt.c(h30.g.f225309a.f9(strP, !z11 ? 1 : 0), this.this$0).subscribe(new a());
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, "2", z11, 2, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SwitchSettingItemModel y0(boolean switchChecked) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(switchChecked ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 20, new Class[]{Boolean.TYPE}, SwitchSettingItemModel.class);
        return patchProxyResultProxy.isSupported ? (SwitchSettingItemModel) patchProxyResultProxy.result : new SwitchSettingItemModel("屏蔽进场动画", "开启后，LV.6以下的用户，进房特效不展示", switchChecked, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$createHideEnterAnimationModel$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return w.f231958a;
            }

            public final void invoke(boolean z11) {
                if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                    return;
                }
                RoomAssistant roomAssistant = (RoomAssistant) AssistantManager.f144995a.b(RoomAssistant.class);
                if (roomAssistant != null) {
                    roomAssistant.ctrlEnterAnimSwitch(SoulHouseExtensionKt.j0(this.this$0.getDataBus()), z11, AnonymousClass1.INSTANCE);
                }
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, "4", z11, 2, null);
            }
        });
    }

    private final SwitchSettingItemModel z0(boolean switchChecked) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(switchChecked ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 13, new Class[]{Boolean.TYPE}, SwitchSettingItemModel.class);
        return patchProxyResultProxy.isSupported ? (SwitchSettingItemModel) patchProxyResultProxy.result : new SwitchSettingItemModel("自助上麦", "开启后，房客可自助上麦", switchChecked, new Function1<Boolean, w>() { // from class: cn.soulapp.cpnt_voiceparty.setting.PartySettingDialog$createSelfTakeSeatModel$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: compiled from: PartySettingDialog.kt */
            @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/PartySettingDialog$createSelfTakeSeatModel$1$a", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
            public static final class a extends HttpSubscriber<RequestResult<Object>> {
                public static ChangeQuickRedirect changeQuickRedirect;

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ PartySettingDialog f144136a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ boolean f144137b;

                a(PartySettingDialog partySettingDialog, boolean z11) {
                    this.f144136a = partySettingDialog;
                    this.f144137b = z11;
                }

                @Override // com.walid.rxretrofit.HttpSubscriber
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(@Nullable RequestResult<Object> requestResult) {
                    if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    if (requestResult != null && requestResult.getResult()) {
                        SwitchSettingItemModel switchSettingItemModel = this.f144136a.selfTakeSeatItemModel;
                        if (switchSettingItemModel == null) {
                            return;
                        }
                        switchSettingItemModel.e(this.f144137b);
                        return;
                    }
                    String failedMsg = requestResult != null ? requestResult.getFailedMsg() : null;
                    if (failedMsg == null) {
                        failedMsg = "";
                    }
                    ExtensionsKt.toast(failedMsg);
                    this.f144136a.X0(this.f144137b);
                }

                @Override // com.walid.rxretrofit.HttpSubscriber
                public void error(int i11, @Nullable String str) {
                    if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    if (str == null) {
                        str = "";
                    }
                    ExtensionsKt.toast(str);
                    this.f144136a.X0(this.f144137b);
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return w.f231958a;
            }

            public final void invoke(boolean z11) {
                if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
                    return;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.this$0.getDataBus());
                linkedHashMap.put("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
                linkedHashMap.put("rightsCode", RightsFeatureModel.ASSISTANT_AUTO_MIRCO);
                linkedHashMap.put("turnOn", Boolean.valueOf(z11));
                AnyExtKt.c(h30.g.f225309a.L(linkedHashMap), this.this$0).subscribe(new a(this.this$0, z11));
                u30.a.g(u30.a.f243719a, this.this$0.getDataBus(), null, "1", z11, 2, null);
            }
        });
    }

    @Nullable
    /* JADX INFO: renamed from: E0, reason: from getter */
    public final DataBus getDataBus() {
        return this.dataBus;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 73, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.f144130w.clear();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public int getDialogHeight() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 72, new Class[0], Integer.TYPE);
        return patchProxyResultProxy.isSupported ? ((Integer) patchProxyResultProxy.result).intValue() : (int) (MateScreenUtil.f10630a.m() * 0.82f);
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public int getDialogTheme() {
        return cn.soulapp.cpnt_voiceparty.R$style.f130231d;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public int getDialogWidth() {
        return -1;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public int getWindowAnimationStyleResId() {
        return R.style.dialog_translate_animation;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public int gravity() {
        return 80;
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment
    public void initView() {
        RoomDataManager roomDataManagerA1;
        RoomDataManager roomDataManagerA2;
        RoomUser roomUserA;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        Integer numValueOf = null;
        if (soulHouseDriverJ0 != null && (roomDataManagerA2 = soulHouseDriverJ0.a1()) != null && (roomUserA = RoomDataManager.A(roomDataManagerA2, false, 1, null)) != null) {
            numValueOf = Integer.valueOf(roomUserA.getRole());
        }
        J0(numValueOf);
        I0(numValueOf);
        a1(numValueOf);
        Z0(numValueOf);
        Y0(numValueOf);
        w0(numValueOf);
        M0();
        H0();
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ1 != null && (roomDataManagerA1 = soulHouseDriverJ1.a1()) != null) {
            roomDataManagerA1.l(this.functionTypeChangeListener);
        }
        ImageView imageView = getBinding().f132937d;
        imageView.setOnClickListener(new i(imageView, 500L, this));
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RoomDataManager roomDataManagerA1;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onDestroyView();
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.dataBus);
        if (soulHouseDriverJ0 != null && (roomDataManagerA1 = soulHouseDriverJ0.a1()) != null) {
            roomDataManagerA1.V(this.functionTypeChangeListener);
        }
        _$_clearFindViewByIdCache();
    }
}