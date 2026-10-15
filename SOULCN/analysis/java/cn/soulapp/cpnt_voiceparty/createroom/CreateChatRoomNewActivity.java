package cn.soulapp.cpnt_voiceparty.createroom;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import b80.n0;
import b80.y;
import cn.android.lib.soul_entity.OperationModel;
import cn.android.lib.soul_interface.audio.IAudioService;
import cn.android.lib.soul_view.R$anim;
import cn.com.hjq.shape.view.ShapeEditText;
import cn.com.hjq.shape.view.ShapeTextView;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.component.annotation.Router;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.android.service.audio_service.HolderType;
import cn.soulapp.android.chatroom.bean.CreateRoomModel;
import cn.soulapp.android.chatroom.bean.RoomTypeBean;
import cn.soulapp.android.chatroom.bean.RoomTypeModel;
import cn.soulapp.android.chatroom.bean.UserFmAsset;
import cn.soulapp.android.chatroom.utils.e0;
import cn.soulapp.android.client.component.middle.platform.base.BaseBindingActivity;
import cn.soulapp.android.client.component.middle.platform.base.dialog.LoadingDialog;
import cn.soulapp.android.client.component.middle.platform.utils.l2;
import cn.soulapp.android.client.component.middle.platform.utils.mediacall.VoiceRtcEngine;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.android.lib.analyticsV2.IPageParams;
import cn.soulapp.android.lib.analyticsV2.SoulAnalyticsV2;
import cn.soulapp.android.lib.common.R;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.android.lib.common.utils.mmkv.SKV;
import cn.soulapp.android.lib.utils.ParamsUtils;
import cn.soulapp.android.net.HttpResult;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.R$string;
import cn.soulapp.cpnt_voiceparty.adapter.CreateChatRoomPlayTypeAdapter;
import cn.soulapp.cpnt_voiceparty.adapter.CreateChatRoomTopicAdapter;
import cn.soulapp.cpnt_voiceparty.api.ISoulHouse;
import cn.soulapp.cpnt_voiceparty.bean.ChatRoomTopicBean;
import cn.soulapp.cpnt_voiceparty.bean.PlayTypeClassifyMapping;
import cn.soulapp.cpnt_voiceparty.bean.RandomRecBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomLowQualityBean;
import cn.soulapp.cpnt_voiceparty.createroom.adapter.CreateRoomPagerAdapter;
import cn.soulapp.cpnt_voiceparty.createroom.helper.TabEnum;
import cn.soulapp.cpnt_voiceparty.createroom.ui.CreateRoomPageRoomInfoView;
import cn.soulapp.cpnt_voiceparty.createroom.ui.ICreateRoomInfoListener;
import cn.soulapp.cpnt_voiceparty.databinding.CVpActivityCreateChatRoomNewLayoutBinding;
import cn.soulapp.cpnt_voiceparty.dialog.AuctionPkSwitchDialog;
import cn.soulapp.cpnt_voiceparty.dialog.PartyChangeBgDialog;
import cn.soulapp.cpnt_voiceparty.dialog.PartyPlayTypeDialog;
import cn.soulapp.cpnt_voiceparty.dialog.RoomMoreFMCodeDialog;
import cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction;
import cn.soulapp.cpnt_voiceparty.function.b0;
import cn.soulapp.cpnt_voiceparty.interceptor.CreateChatRoomInterceptor;
import cn.soulapp.cpnt_voiceparty.mvvm.CreateChatRoomViewModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.ZoomOutManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.BackgroundClassifyModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.BackgroundDataModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.PlayTypeModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.RecTopicInfo;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.RoomConfigListModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.TabConfigData;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.TopicPolish;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomTopicRecDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.playmode.ModeConflictConfiguration;
import cn.soulapp.cpnt_voiceparty.util.AnyExtKt;
import cn.soulapp.cpnt_voiceparty.util.SwitchUtil;
import cn.soulapp.cpnt_voiceparty.util.a1;
import cn.soulapp.cpnt_voiceparty.util.l0;
import cn.soulapp.lib.basic.annotation.StatusBar;
import cn.soulapp.lib.basic.utils.OnSoftKeyBoardChangeListener;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.bumptech.glide.RequestBuilder;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.ss.ttvideoengine.log.VideoEventOneOutSync;
import com.swmansion.reanimated.layoutReanimation.Snapshot;
import com.tencent.open.SocialConstants;
import com.umeng.analytics.pro.bt;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.r0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlin.w;
import org.apache.commons.lang3.StringUtils;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import ty.u;

/* JADX INFO: compiled from: CreateChatRoomNewActivity.kt */
/* JADX INFO: loaded from: classes17.dex */
@Router(alias = {"/im/createChatRoomActivity", "/chat/createPrivateRoom", "/chat/createOrJoinPrivateRoom", "/chat/createRoomFromParam"}, interceptors = {CreateChatRoomInterceptor.class}, path = "/chat/createChatRoom")
@Metadata(bv = {}, d1 = {"\u0000ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u0007\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 \u0083\u00022\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001~B\t¢\u0006\u0006\b\u0081\u0002\u0010\u0082\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0003J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0006H\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J&\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0003J#\u0010\u001c\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010\u001e\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u001e\u0010\u001dJ\u0019\u0010\u001f\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u001f\u0010 J\b\u0010!\u001a\u00020\u0004H\u0002J\u0019\u0010\"\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\"\u0010 J\b\u0010#\u001a\u00020\u0004H\u0002J\b\u0010$\u001a\u00020\u0004H\u0002J\u0010\u0010'\u001a\u00020\u00062\u0006\u0010&\u001a\u00020%H\u0002J\b\u0010(\u001a\u00020%H\u0002J\u0012\u0010+\u001a\u00020\u00042\b\u0010*\u001a\u0004\u0018\u00010)H\u0002J\b\u0010,\u001a\u00020\u0004H\u0002J\b\u0010-\u001a\u00020\u0004H\u0002J\b\u0010.\u001a\u00020\u0004H\u0002J\b\u0010/\u001a\u00020\u0004H\u0002J\b\u00100\u001a\u00020\u0004H\u0002J\n\u00101\u001a\u0004\u0018\u00010\u0017H\u0002J\b\u00102\u001a\u00020\nH\u0002J\u0011\u00103\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b3\u00104J\b\u00105\u001a\u00020\u0004H\u0002J\u001a\u00109\u001a\u00020\u00042\b\u00107\u001a\u0004\u0018\u0001062\u0006\u00108\u001a\u00020%H\u0002J\u0012\u0010:\u001a\u00020\u00042\b\u00107\u001a\u0004\u0018\u000106H\u0002J\b\u0010;\u001a\u00020\u0004H\u0002J\b\u0010<\u001a\u00020\u0004H\u0002J\b\u0010=\u001a\u00020\u0004H\u0002J\b\u0010>\u001a\u00020\u0004H\u0002J\b\u0010?\u001a\u00020\u0004H\u0002J\b\u0010@\u001a\u00020\u0004H\u0002J\b\u0010A\u001a\u00020\u0004H\u0002J\b\u0010B\u001a\u00020\u0004H\u0002J\b\u0010C\u001a\u00020\u0004H\u0002J\b\u0010D\u001a\u00020\u0004H\u0002J\b\u0010E\u001a\u00020\u0004H\u0002J\b\u0010F\u001a\u00020\u0004H\u0002J\b\u0010G\u001a\u00020\u0004H\u0002J\b\u0010H\u001a\u00020\u0004H\u0002J\b\u0010I\u001a\u00020\u0004H\u0002J\b\u0010J\u001a\u00020\u0004H\u0002J\b\u0010K\u001a\u00020\u0004H\u0002J\u0010\u0010N\u001a\u00020\u00042\u0006\u0010M\u001a\u00020LH\u0002J\u0012\u0010Q\u001a\u00020\u00042\b\u0010P\u001a\u0004\u0018\u00010OH\u0002J\b\u0010R\u001a\u00020\u0004H\u0002J\u0018\u0010V\u001a\u00020\u00042\u000e\u0010U\u001a\n\u0012\u0004\u0012\u00020T\u0018\u00010SH\u0002J\u0012\u0010Y\u001a\u00020\u00042\b\u0010X\u001a\u0004\u0018\u00010WH\u0002J\b\u0010Z\u001a\u00020\u0006H\u0002J\u0010\u0010\\\u001a\u00020\u00042\u0006\u0010[\u001a\u00020\nH\u0002J\b\u0010]\u001a\u00020\u0004H\u0002J\b\u0010^\u001a\u00020\u0004H\u0002J\u0018\u0010`\u001a\u00020\u00042\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010SH\u0002J\u0010\u0010a\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010b\u001a\u00020\nH\u0002J\u0018\u0010c\u001a\u00020\u00042\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010SH\u0002J\b\u0010d\u001a\u00020\u0006H\u0002J\n\u0010f\u001a\u0004\u0018\u00010eH\u0002J\n\u0010g\u001a\u0004\u0018\u00010\u0012H\u0002J\b\u0010h\u001a\u00020\u0004H\u0002JA\u0010q\u001a\u00020\u00042\b\u0010i\u001a\u0004\u0018\u00010\u00062\b\u0010j\u001a\u0004\u0018\u00010\u00062#\u0010p\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010l¢\u0006\f\bm\u0012\b\bn\u0012\u0004\b\b(o\u0012\u0004\u0012\u00020\u00040kH\u0002J\u0012\u0010t\u001a\u00020\u00042\b\u0010s\u001a\u0004\u0018\u00010rH\u0014J\b\u0010u\u001a\u00020\u0004H\u0014J\b\u0010v\u001a\u00020\u0004H\u0016J\b\u0010w\u001a\u00020\u0004H\u0016J\b\u0010x\u001a\u00020\u0004H\u0014J\u0010\u0010z\u001a\u00020\u00042\u0006\u0010y\u001a\u00020\u0006H\u0016J\u0010\u0010|\u001a\u00020\u00042\u0006\u0010{\u001a\u00020\nH\u0016J\b\u0010}\u001a\u00020\u0004H\u0016R\u0017\u0010\u0080\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u001a\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010\u007fR\u001a\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010\u007fR\u0019\u0010\u0087\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001b\u0010\u008a\u0001\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001c\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u001b\u0010\u0091\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0019\u0010\u009c\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009b\u0001R\u001a\u0010 \u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009f\u0001\u0010\u007fR\u001a\u0010¢\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¡\u0001\u0010\u007fR\u0019\u0010¤\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010\u009b\u0001R\u0018\u0010¦\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¥\u0001\u0010\u007fR\u0018\u0010¨\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b§\u0001\u0010\u007fR\u0018\u0010ª\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b©\u0001\u0010\u007fR\u0019\u0010¬\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010\u009b\u0001R\u0018\u0010®\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u00ad\u0001\u0010\u007fR\u0018\u0010°\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¯\u0001\u0010\u007fRA\u0010¶\u0001\u001a*\u0012\u0004\u0012\u00020\u0006\u0012\u0007\u0012\u0005\u0018\u00010²\u0001\u0018\u00010±\u0001j\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0007\u0012\u0005\u0018\u00010²\u0001\u0018\u0001`³\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010µ\u0001R\u001a\u0010¸\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b·\u0001\u0010\u007fR\u0019\u0010º\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010\u0086\u0001R\u0019\u0010¼\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010\u0086\u0001R\u0019\u0010¾\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010\u0086\u0001R\u001a\u0010À\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¿\u0001\u0010\u007fR!\u0010Ã\u0001\u001a\n\u0012\u0004\u0012\u00020T\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001R\u0019\u0010Å\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010\u009b\u0001R\u0019\u0010Ç\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010\u0086\u0001R\u0019\u0010É\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010\u0086\u0001R\u001a\u0010Í\u0001\u001a\u00030Ê\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010Ì\u0001R\u001a\u0010Î\u0001\u001a\u00030Ê\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010Ì\u0001R&\u0010Ó\u0001\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÏ\u0001\u0010Ð\u0001\u001a\u0006\bÑ\u0001\u0010Ò\u0001R&\u0010Ö\u0001\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÔ\u0001\u0010Ð\u0001\u001a\u0006\bÕ\u0001\u0010Ò\u0001R \u0010Ù\u0001\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009b\u0001\u0010Ð\u0001\u001a\u0006\b×\u0001\u0010Ø\u0001R \u0010Ü\u0001\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÚ\u0001\u0010Ð\u0001\u001a\u0006\bÛ\u0001\u0010Ø\u0001R+\u0010â\u0001\u001a\r Þ\u0001*\u0005\u0018\u00010Ý\u00010Ý\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bß\u0001\u0010Ð\u0001\u001a\u0006\bà\u0001\u0010á\u0001R \u0010æ\u0001\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bã\u0001\u0010Ð\u0001\u001a\u0006\bä\u0001\u0010å\u0001R2\u0010ì\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u00060ç\u0001j\t\u0012\u0004\u0012\u00020\u0006`è\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bé\u0001\u0010Ð\u0001\u001a\u0006\bê\u0001\u0010ë\u0001R2\u0010ï\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u00060ç\u0001j\t\u0012\u0004\u0012\u00020\u0006`è\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bí\u0001\u0010Ð\u0001\u001a\u0006\bî\u0001\u0010ë\u0001R!\u0010ô\u0001\u001a\u00030ð\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bñ\u0001\u0010Ð\u0001\u001a\u0006\bò\u0001\u0010ó\u0001R!\u0010ù\u0001\u001a\u00030õ\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bö\u0001\u0010Ð\u0001\u001a\u0006\b÷\u0001\u0010ø\u0001R!\u0010þ\u0001\u001a\u00030ú\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bû\u0001\u0010Ð\u0001\u001a\u0006\bü\u0001\u0010ý\u0001R\u0019\u0010\u0080\u0002\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÿ\u0001\u0010\u0086\u0001¨\u0006\u0084\u0002"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/CreateChatRoomNewActivity;", "Lcn/soulapp/android/client/component/middle/platform/base/BaseBindingActivity;", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpActivityCreateChatRoomNewLayoutBinding;", "Lcn/soulapp/cpnt_voiceparty/createroom/ui/ICreateRoomInfoListener;", "Lkotlin/w;", "L1", "", "q0", "O0", "initViewPager", "", "position", "F1", "tabCode", "J1", "Y0", "W0", "X0", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lcn/soulapp/cpnt_voiceparty/adapter/CreateChatRoomPlayTypeAdapter;", "typeAdapter", "", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PlayTypeModel;", "typeList", "U0", "playCode", "playType", "N0", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "M0", "o0", "(Ljava/lang/Integer;)V", "N1", "Q1", "m0", "e0", "", "isOpen", "F0", "c1", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomTopicBean;", "roomTopicBean", "G1", "e1", "s1", "S0", "R0", "P0", "r0", "s0", "t0", "()Ljava/lang/Integer;", "L0", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tabLayout", "isSelected", "p0", "E1", "f1", "g1", "P1", "d1", "k1", "j1", "i1", "h1", "I1", "H1", "B1", com.alipay.sdk.m.b0.c.f175379c, "z1", "q1", "o1", com.hihonor.adsdk.adsconversiontools.report.c.a.Q0, "x1", "Lcn/soulapp/cpnt_voiceparty/bean/RoomLowQualityBean;", "bean", "M1", "Lcn/soulapp/cpnt_voiceparty/bean/RoomBean;", "roomBean", "j0", "D1", "", "Lcn/soulapp/android/chatroom/bean/UserFmAsset;", "dataList", "l1", "Lcn/soulapp/android/chatroom/bean/CreateRoomModel;", "createRoomModel", "K0", "w0", "classifyCode", "n0", "g0", "f0", "roomPlayTypeList", "k0", "m1", "y0", "h0", "u0", "Landroid/view/View;", "I0", "H0", "n1", "roomId", "topic", "Lkotlin/Function1;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/TopicPolish;", "Lkotlin/ParameterName;", "name", "data", "cb", "K1", "Landroid/os/Bundle;", "savedInstanceState", AppAgent.ON_CREATE, "onResume", "initView", VideoEventOneOutSync.END_TYPE_FINISH, "onDestroy", "content", "roomNameEditTextChanged", "status", "roomPrivateStatusChanged", "roomPrivateBtnClick", "a", "Ljava/lang/String;", "chatGroupId", ExpcompatUtils.COMPAT_VALUE_780, "groupJoinCode", "c", "joinCode", "d", "Z", "mBackgroundIsSelected", l11l11I1111l.l111l1111lIl, "Lcn/soulapp/cpnt_voiceparty/bean/RoomBean;", "mRoomBean", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RoomConfigListModel;", "f", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RoomConfigListModel;", "configModel", "g", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomTopicBean;", "currentTopicBean", "Lcn/soulapp/cpnt_voiceparty/adapter/CreateChatRoomTopicAdapter;", "h", "Lcn/soulapp/cpnt_voiceparty/adapter/CreateChatRoomTopicAdapter;", "topicAdapter", "Lcom/google/android/material/tabs/TabLayoutMediator;", "i", "Lcom/google/android/material/tabs/TabLayoutMediator;", "tabLayoutMediator", "j", "I", "mClassifyCode", "k", "mRemainCounts", "l", "defaultTabCode", "m", "defaultPlayType", "n", "privateStatus", "o", "tagName", "p", SocialConstants.PARAM_SOURCE, "q", "mFmCode", "r", "mTopicId", "s", "mBackgroundId", "t", "changeTitle", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", bt.aF, "Ljava/util/HashMap;", "extParams", "v", "defaultDisplayTabCode", "w", "hasClickRandomRecName", "x", "hasChangeRoomTitle", "y", "hasChangeRoomType", "z", "mLastPageId", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Ljava/util/List;", "userFmAssetList", "B", "currentSelectedTabPosition", "C", "isFirstTabSwitch", "D", "isOpenSongMachine", "", ExifInterface.LONGITUDE_EAST, "F", Snapshot.ORIGIN_X, Snapshot.ORIGIN_Y, "G", "Lkotlin/Lazy;", "A0", "()Ljava/util/List;", "mPlayTypeList", "H", "z0", "mGameTypeList", "E0", "()Lcn/soulapp/cpnt_voiceparty/adapter/CreateChatRoomPlayTypeAdapter;", "playTypeAdapter", "J", "v0", "gameTypeAdapter", "Lcn/soulapp/android/client/component/middle/platform/base/dialog/LoadingDialog;", "kotlin.jvm.PlatformType", "K", "G0", "()Lcn/soulapp/android/client/component/middle/platform/base/dialog/LoadingDialog;", "soulLoadingDialog", "L", "b1", "()Z", "isOpenGameTabSwitch", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "M", "B0", "()Ljava/util/ArrayList;", "pageTabCodeList", "N", "C0", "pageTitles", "Lcn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel;", "O", "J0", "()Lcn/soulapp/cpnt_voiceparty/mvvm/CreateChatRoomViewModel;", "viewModel", "Lcn/soulapp/cpnt_voiceparty/dialog/PartyPlayTypeDialog;", "P", "D0", "()Lcn/soulapp/cpnt_voiceparty/dialog/PartyPlayTypeDialog;", "partyPlayTypeDialog", "Lcn/soulapp/cpnt_voiceparty/util/l0;", "Q", "x0", "()Lcn/soulapp/cpnt_voiceparty/util/l0;", "keyboardUtil", "R", "aiNameRequesting", AppAgent.CONSTRUCT, "()V", ExifInterface.GPS_DIRECTION_TRUE, "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
@StatusBar(dark = false, show = false)
public final class CreateChatRoomNewActivity extends BaseBindingActivity<CVpActivityCreateChatRoomNewLayoutBinding> implements ICreateRoomInfoListener {

    /* JADX INFO: renamed from: T, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    @Nullable
    private List<UserFmAsset> userFmAssetList;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private int currentSelectedTabPosition;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private boolean isOpenSongMachine;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private float originX;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private float originY;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    @NotNull
    private final Lazy isOpenGameTabSwitch;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    @NotNull
    private final Lazy pageTabCodeList;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    @NotNull
    private final Lazy pageTitles;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    @NotNull
    private final Lazy partyPlayTypeDialog;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    @NotNull
    private final Lazy keyboardUtil;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    private boolean aiNameRequesting;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean mBackgroundIsSelected;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private RoomBean mRoomBean;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private RoomConfigListModel configModel;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private ChatRoomTopicBean currentTopicBean;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private CreateChatRoomTopicAdapter topicAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private TabLayoutMediator tabLayoutMediator;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int mClassifyCode;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int mRemainCounts;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String defaultTabCode;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String defaultPlayType;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private int privateStatus;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private int mTopicId;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private HashMap<String, Object> extParams;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String defaultDisplayTabCode;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private boolean hasClickRandomRecName;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private boolean hasChangeRoomTitle;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private boolean hasChangeRoomType;

    @NotNull
    public Map<Integer, View> S = new LinkedHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private String chatGroupId = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String groupJoinCode = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String joinCode = "";

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private String tagName = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private String source = "0";

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private String mFmCode = "";

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private String mBackgroundId = "";

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private String changeTitle = "";

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String mLastPageId = "unknown";

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private boolean isFirstTabSwitch = true;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    @NotNull
    private final Lazy mPlayTypeList = kotlin.j.b(CreateChatRoomNewActivity$mPlayTypeList$2.INSTANCE);

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    @NotNull
    private final Lazy mGameTypeList = kotlin.j.b(CreateChatRoomNewActivity$mGameTypeList$2.INSTANCE);

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    @NotNull
    private final Lazy playTypeAdapter = kotlin.j.b(CreateChatRoomNewActivity$playTypeAdapter$2.INSTANCE);

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    @NotNull
    private final Lazy gameTypeAdapter = kotlin.j.b(CreateChatRoomNewActivity$gameTypeAdapter$2.INSTANCE);

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    @NotNull
    private final Lazy soulLoadingDialog = kotlin.j.b(CreateChatRoomNewActivity$soulLoadingDialog$2.INSTANCE);

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: CreateChatRoomNewActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\f"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/CreateChatRoomNewActivity$a;", "", "", "CREATE_ROOM_TITLE_MAX_LENGTH", "I", "DEFAULT_LOCATION_TAB_POSITION", "", "REMAINDER_TIMES", "Ljava/lang/String;", "SONG_MACHINE_TAG", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(q qVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomNewActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/CreateChatRoomNewActivity$b", "Lcn/soulapp/lib/basic/utils/OnSoftKeyBoardChangeListener;", "", "height", "Lkotlin/w;", "keyBoardShow", "keyBoardHide", "onViewChanged", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class b implements OnSoftKeyBoardChangeListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        b() {
        }

        @Override // cn.soulapp.lib.basic.utils.OnSoftKeyBoardChangeListener
        public void keyBoardHide(int i11) {
            boolean z11 = true;
            if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
                return;
            }
            ShapeEditText roomNameEt = CreateChatRoomNewActivity.r(CreateChatRoomNewActivity.this).f131041l.getRoomNameEt();
            if (roomNameEt != null) {
                roomNameEt.clearFocus();
            }
            String roomName = CreateChatRoomNewActivity.r(CreateChatRoomNewActivity.this).f131041l.getRoomName();
            RoomBean roomBean = CreateChatRoomNewActivity.this.mRoomBean;
            if (v.e(roomName, roomBean != null ? roomBean.getLastTopic() : null)) {
                return;
            }
            CreateChatRoomNewActivity.this.J0().a(roomName.length() == 0 ? StringUtils.SPACE : roomName);
            CreateChatRoomNewActivity createChatRoomNewActivity = CreateChatRoomNewActivity.this;
            if (createChatRoomNewActivity.hasClickRandomRecName && v.e(roomName, CreateChatRoomNewActivity.this.changeTitle)) {
                z11 = false;
            }
            createChatRoomNewActivity.hasChangeRoomTitle = z11;
        }

        @Override // cn.soulapp.lib.basic.utils.OnSoftKeyBoardChangeListener
        public void keyBoardShow(int i11) {
        }

        @Override // cn.soulapp.lib.basic.utils.OnSoftKeyBoardChangeListener
        public void onViewChanged() {
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomNewActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\b"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/CreateChatRoomNewActivity$c", "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "Lkotlin/w;", "onTabSelected", "onTabUnselected", "onTabReselected", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c implements TabLayout.OnTabSelectedListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        c() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(@Nullable TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@Nullable TabLayout.Tab tab) {
            if (PatchProxy.proxy(new Object[]{tab}, this, changeQuickRedirect, false, 2, new Class[]{TabLayout.Tab.class}, Void.TYPE).isSupported) {
                return;
            }
            int position = tab != null ? tab.getPosition() : 0;
            if (!CreateChatRoomNewActivity.this.isFirstTabSwitch) {
                k30.c.f229065a.k((String) CreateChatRoomNewActivity.this.B0().get(CreateChatRoomNewActivity.this.currentSelectedTabPosition), (String) CreateChatRoomNewActivity.this.B0().get(position), CreateChatRoomNewActivity.this.q0());
            }
            CreateChatRoomNewActivity.this.currentSelectedTabPosition = position;
            CreateChatRoomNewActivity.this.p0(tab, true);
            String str = (String) CollectionsKt___CollectionsKt.v0(CreateChatRoomNewActivity.this.B0(), CreateChatRoomNewActivity.this.currentSelectedTabPosition);
            Object obj = null;
            if (v.e(str, TabEnum.TAB_PLAY.getTabCode())) {
                for (Object obj2 : CreateChatRoomNewActivity.this.A0()) {
                    if (((PlayTypeModel) obj2).getHasSelected()) {
                        obj = obj2;
                        break;
                    }
                }
                if (!(obj != null)) {
                    PlayTypeModel playTypeModel = (PlayTypeModel) CollectionsKt___CollectionsKt.u0(CreateChatRoomNewActivity.this.A0());
                    if (playTypeModel != null) {
                        playTypeModel.h(true);
                    }
                    CreateChatRoomNewActivity.this.E0().notifyItemChanged(0);
                }
            } else if (v.e(str, TabEnum.TAB_GAME.getTabCode())) {
                for (Object obj3 : CreateChatRoomNewActivity.this.z0()) {
                    if (((PlayTypeModel) obj3).getHasSelected()) {
                        obj = obj3;
                        break;
                    }
                }
                if (!(obj != null)) {
                    PlayTypeModel playTypeModel2 = (PlayTypeModel) CollectionsKt___CollectionsKt.u0(CreateChatRoomNewActivity.this.z0());
                    if (playTypeModel2 != null) {
                        playTypeModel2.h(true);
                    }
                    CreateChatRoomNewActivity.this.v0().notifyItemChanged(0);
                }
            }
            if (!CreateChatRoomNewActivity.this.isFirstTabSwitch) {
                CreateChatRoomNewActivity createChatRoomNewActivity = CreateChatRoomNewActivity.this;
                createChatRoomNewActivity.N0(Integer.valueOf(createChatRoomNewActivity.s0()), Integer.valueOf(CreateChatRoomNewActivity.this.s0()));
            }
            boolean z11 = CreateChatRoomNewActivity.this.s0() == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154997v.getId();
            CreateChatRoomNewActivity.r(CreateChatRoomNewActivity.this).f131041l.setShowOnlyFriendOption(z11);
            CreateChatRoomNewActivity.r(CreateChatRoomNewActivity.this).f131041l.q(z11);
            CreateChatRoomNewActivity.this.isFirstTabSwitch = false;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(@Nullable TabLayout.Tab tab) {
            if (PatchProxy.proxy(new Object[]{tab}, this, changeQuickRedirect, false, 3, new Class[]{TabLayout.Tab.class}, Void.TYPE).isSupported) {
                return;
            }
            CreateChatRoomNewActivity.this.p0(tab, false);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class d implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130756a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CreateChatRoomNewActivity f130758c;

        public d(View view, long j11, CreateChatRoomNewActivity createChatRoomNewActivity) {
            this.f130756a = view;
            this.f130757b = j11;
            this.f130758c = createChatRoomNewActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130756a) >= this.f130757b) {
                k30.c.f229065a.f(this.f130758c.q0(), true);
                PartyChangeBgDialog partyChangeBgDialog = new PartyChangeBgDialog();
                RoomConfigListModel roomConfigListModel = this.f130758c.configModel;
                partyChangeBgDialog.e(roomConfigListModel != null ? roomConfigListModel.a() : null, this.f130758c.mBackgroundIsSelected);
                partyChangeBgDialog.show(this.f130758c.getSupportFragmentManager(), PartyChangeBgDialog.class.getSimpleName());
            }
            ExtensionsKt.setLastClickTime(this.f130756a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class e implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130759a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130760b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CreateChatRoomNewActivity f130761c;

        public e(View view, long j11, CreateChatRoomNewActivity createChatRoomNewActivity) {
            this.f130759a = view;
            this.f130760b = j11;
            this.f130761c = createChatRoomNewActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130759a) >= this.f130760b) {
                this.f130761c.finish();
            }
            ExtensionsKt.setLastClickTime(this.f130759a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class f implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130762a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130763b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CreateChatRoomNewActivity f130764c;

        public f(View view, long j11, CreateChatRoomNewActivity createChatRoomNewActivity) {
            this.f130762a = view;
            this.f130763b = j11;
            this.f130764c = createChatRoomNewActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130762a) >= this.f130763b) {
                if (VoiceRtcEngine.C().q()) {
                    k30.c.f229065a.d(this.f130764c.q0(), !y.g() ? "网络未连接" : "正在语音通话中", true);
                } else {
                    SoulHouseDriver soulHouseDriverI0 = SoulHouseExtensionKt.i0();
                    boolean z11 = soulHouseDriverI0 != null && soulHouseDriverI0.getJoinMode() == 2;
                    IAudioService iAudioServiceC = j5.a.c();
                    if (iAudioServiceC == null || !iAudioServiceC.isRunning() || z11 || iAudioServiceC.getHolderType() != HolderType.ChatRoom) {
                        HolderType holderType = HolderType.WereWolf;
                        if (l2.f(true, holderType)) {
                            k30.c.e(k30.c.f229065a, this.f130764c.q0(), holderType.getToastDes(), false, 4, null);
                        } else if (lg.a.a(1101)) {
                            k30.c.e(k30.c.f229065a, this.f130764c.q0(), "checkLevitateConflict", false, 4, null);
                        } else {
                            x80.a.C1791a.f246595i.a().a(this.f130764c).f(this.f130764c.getSupportFragmentManager()).i("Soul想访问你的麦克风").d("为了您能正常体验语音输入、语音变声、语音匹配、视频匹配等功能，Soul需要申请麦克风权限。如您拒绝授权，不影响您使用APP的其他功能。").b(this.f130764c.new g()).c().m();
                        }
                    } else {
                        cn.soulapp.lib.widget.toast.e.u("你正在其他派对哦");
                        k30.c.e(k30.c.f229065a, this.f130764c.q0(), "正在其他派对", false, 4, null);
                        cn.soulapp.cpnt_voiceparty.util.track.b.f162373a.h(6, (30 & 2) != 0 ? null : null, (30 & 4) != 0 ? null : null, (30 & 8) != 0 ? null : Boolean.valueOf(ZoomOutManager.f144296a.n()), (30 & 16) != 0 ? null : null);
                    }
                }
            }
            ExtensionsKt.setLastClickTime(this.f130762a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomNewActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/CreateChatRoomNewActivity$g", "Lz80/h;", "Ly80/a;", "permResult", "Lkotlin/w;", "onGranted", "result", "onDenied", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class g extends z80.h {
        public static ChangeQuickRedirect changeQuickRedirect;

        g() {
        }

        @Override // z80.h, z80.b
        public void onDenied(@NotNull y80.a result) {
            if (PatchProxy.proxy(new Object[]{result}, this, changeQuickRedirect, false, 3, new Class[]{y80.a.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(result, "result");
            CreateChatRoomNewActivity.this.G0().g();
            n0.h(CreateChatRoomNewActivity.this.getString(R$string.X3), new Object[0]);
        }

        /* JADX WARN: Code duplicated, block: B:39:0x00d6  */
        @Override // z80.b
        public void onGranted(@NotNull y80.a permResult) {
            Object obj;
            Object next;
            boolean z11;
            Integer playTypeCode;
            if (PatchProxy.proxy(new Object[]{permResult}, this, changeQuickRedirect, false, 2, new Class[]{y80.a.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(permResult, "permResult");
            int i11 = SKV.single().getInt(cn.soulapp.android.client.component.middle.platform.utils.user.a.x() + "_AUCTION_PK_TIME", 1);
            Iterator it = CreateChatRoomNewActivity.this.A0().iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    playTypeCode = ((PlayTypeModel) next).getPlayTypeCode();
                }
            } while (!(playTypeCode != null && playTypeCode.intValue() == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154989n.getId()));
            if (!(next != null)) {
                CreateChatRoomNewActivity.this.P1();
                return;
            }
            if (i11 > 3) {
                CreateChatRoomNewActivity.this.P1();
                return;
            }
            if (!v.e(CollectionsKt___CollectionsKt.v0(CreateChatRoomNewActivity.this.B0(), CreateChatRoomNewActivity.this.currentSelectedTabPosition), TabEnum.TAB_PLAY.getTabCode())) {
                CreateChatRoomNewActivity.this.P1();
                return;
            }
            for (Object obj2 : CreateChatRoomNewActivity.this.A0()) {
                PlayTypeModel playTypeModel = (PlayTypeModel) obj2;
                if (playTypeModel.getHasSelected()) {
                    Integer playTypeCode2 = playTypeModel.getPlayTypeCode();
                    int id2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154985j.getId();
                    if (playTypeCode2 != null && playTypeCode2.intValue() == id2) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                } else {
                    z11 = false;
                }
                if (z11) {
                    obj = obj2;
                    break;
                }
            }
            if (((PlayTypeModel) obj) == null) {
                CreateChatRoomNewActivity.this.P1();
                return;
            }
            CreateChatRoomNewActivity.this.H1();
            SKV.single().putInt(cn.soulapp.android.client.component.middle.platform.utils.user.a.x() + "_AUCTION_PK_TIME", i11 + 1);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class h implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130766a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130767b;

        public h(View view, long j11) {
            this.f130766a = view;
            this.f130767b = j11;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130766a) >= this.f130767b) {
                SoulRouter.j().e("soul://ul.soulapp.cn/reactnative/container?pageId=soul_rn_creatorx&subPage=CreatorCenter").d();
            }
            ExtensionsKt.setLastClickTime(this.f130766a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class i implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130768a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130769b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CreateChatRoomNewActivity f130770c;

        public i(View view, long j11, CreateChatRoomNewActivity createChatRoomNewActivity) {
            this.f130768a = view;
            this.f130769b = j11;
            this.f130770c = createChatRoomNewActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130768a) >= this.f130769b) {
                if (!this.f130770c.c1()) {
                    k30.c.f229065a.g(this.f130770c.q0(), true);
                    this.f130770c.I1();
                } else if (ModeConflictConfiguration.f154904a.e(Integer.valueOf(this.f130770c.s0()), this.f130770c.t0())) {
                    CreateChatRoomNewActivity.r(this.f130770c).f131041l.setFmCodeTv(this.f130770c.F0(false));
                    ExtensionsKt.toast("当前互动玩法和唱片机冲突，无法开启");
                } else {
                    CreateChatRoomNewActivity createChatRoomNewActivity = this.f130770c;
                    createChatRoomNewActivity.isOpenSongMachine = !createChatRoomNewActivity.isOpenSongMachine;
                    if (this.f130770c.isOpenSongMachine) {
                        CreateChatRoomNewActivity.r(this.f130770c).f131041l.setFmCodeTv(this.f130770c.F0(true));
                        k30.c.f229065a.j(this.f130770c.q0(), true, true);
                        ExtensionsKt.toast("唱片机已打开");
                    } else {
                        CreateChatRoomNewActivity.r(this.f130770c).f131041l.setFmCodeTv(this.f130770c.F0(false));
                        ExtensionsKt.toast("唱片机已关闭");
                        k30.c.f229065a.j(this.f130770c.q0(), false, true);
                    }
                }
            }
            ExtensionsKt.setLastClickTime(this.f130768a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class j implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130771a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130772b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CreateChatRoomNewActivity f130773c;

        public j(View view, long j11, CreateChatRoomNewActivity createChatRoomNewActivity) {
            this.f130771a = view;
            this.f130772b = j11;
            this.f130773c = createChatRoomNewActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130771a) >= this.f130772b) {
                k30.c.f229065a.h(this.f130773c.q0(), true);
                this.f130773c.D0().show(this.f130773c.getSupportFragmentManager(), this.f130773c.D0().getClass().getSimpleName());
            }
            ExtensionsKt.setLastClickTime(this.f130771a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class k implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130774a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130775b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CreateChatRoomNewActivity f130776c;

        public k(View view, long j11, CreateChatRoomNewActivity createChatRoomNewActivity) {
            this.f130774a = view;
            this.f130775b = j11;
            this.f130776c = createChatRoomNewActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130774a) >= this.f130775b) {
                String roomName = CreateChatRoomNewActivity.r(this.f130776c).f131041l.getRoomName();
                if (roomName.length() > 0) {
                    cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.Z0(true);
                    if (!this.f130776c.aiNameRequesting) {
                        this.f130776c.aiNameRequesting = true;
                        final CreateChatRoomNewActivity createChatRoomNewActivity = this.f130776c;
                        createChatRoomNewActivity.K1(null, roomName, new Function1<TopicPolish, w>() { // from class: cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity$listenRandomNameBtnClickEvent$1$1
                            public static ChangeQuickRedirect changeQuickRedirect;

                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ w invoke(TopicPolish topicPolish) {
                                invoke2(topicPolish);
                                return w.f231958a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(@Nullable TopicPolish topicPolish) {
                                String newTopic;
                                if (PatchProxy.proxy(new Object[]{topicPolish}, this, changeQuickRedirect, false, 2, new Class[]{TopicPolish.class}, Void.TYPE).isSupported) {
                                    return;
                                }
                                createChatRoomNewActivity.aiNameRequesting = false;
                                if (topicPolish == null || (newTopic = topicPolish.getNewTopic()) == null) {
                                    return;
                                }
                                CreateChatRoomNewActivity createChatRoomNewActivity2 = createChatRoomNewActivity;
                                CreateChatRoomNewActivity.r(createChatRoomNewActivity2).f131041l.setRoomName(newTopic);
                                CreateRoomPageRoomInfoView createRoomPageRoomInfoView = CreateChatRoomNewActivity.r(createChatRoomNewActivity2).f131041l;
                                v.i(createRoomPageRoomInfoView, "binding.roomInfoContainer");
                                CreateRoomPageRoomInfoView.setWarmContentTv$default(createRoomPageRoomInfoView, false, null, 2, null);
                            }
                        });
                    }
                } else {
                    cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.Z0(false);
                    CreateChatRoomNewActivity createChatRoomNewActivity2 = this.f130776c;
                    createChatRoomNewActivity2.hasClickRandomRecName = true ^ createChatRoomNewActivity2.hasChangeRoomTitle;
                    ShapeEditText roomNameEt = CreateChatRoomNewActivity.r(this.f130776c).f131041l.getRoomNameEt();
                    if (roomNameEt != null) {
                        roomNameEt.clearFocus();
                    }
                    this.f130776c.J0().o(Integer.valueOf(this.f130776c.mClassifyCode), Integer.valueOf(this.f130776c.s0()));
                }
            }
            ExtensionsKt.setLastClickTime(this.f130774a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomNewActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/CreateChatRoomNewActivity$l", "Lcn/soulapp/cpnt_voiceparty/dialog/AuctionPkSwitchDialog$IAuctionPkSwitchInterface;", "", "auctionType", "Lkotlin/w;", "onSwitchAuctionMode", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class l implements AuctionPkSwitchDialog.IAuctionPkSwitchInterface {
        public static ChangeQuickRedirect changeQuickRedirect;

        l() {
        }

        @Override // cn.soulapp.cpnt_voiceparty.dialog.AuctionPkSwitchDialog.IAuctionPkSwitchInterface
        public void onSwitchAuctionMode(int i11) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
                return;
            }
            for (PlayTypeModel playTypeModel : CreateChatRoomNewActivity.this.A0()) {
                Integer playTypeCode = playTypeModel.getPlayTypeCode();
                playTypeModel.h(playTypeCode != null && i11 == playTypeCode.intValue());
            }
            CreateChatRoomNewActivity.this.P1();
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomNewActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0016J$\u0010\u000e\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\u000f"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/CreateChatRoomNewActivity$m", "Lty/u;", "Lcn/soulapp/android/net/HttpResult;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/TopicPolish;", "t", "Lkotlin/w;", "onNext", "onComplete", "", "code", "", "msg", "", l11l11I1111l.l111l1111lIl, "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class m extends u<HttpResult<TopicPolish>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1<TopicPolish, w> f130778a;

        /* JADX WARN: Multi-variable type inference failed */
        m(Function1<? super TopicPolish, w> function1) {
            this.f130778a = function1;
        }

        @Override // ty.u
        public void onComplete() {
            if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Void.TYPE).isSupported) {
                return;
            }
            super.onComplete();
        }

        @Override // ty.u
        public void onError(int i11, @Nullable String str, @Nullable Throwable th2) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str, th2}, this, changeQuickRedirect, false, 4, new Class[]{Integer.TYPE, String.class, Throwable.class}, Void.TYPE).isSupported) {
                return;
            }
            this.f130778a.invoke(null);
            if (str != null) {
                ExtensionsKt.toast(str);
            }
        }

        @Override // ty.u
        public void onNext(@Nullable HttpResult<TopicPolish> httpResult) {
            if (PatchProxy.proxy(new Object[]{httpResult}, this, changeQuickRedirect, false, 2, new Class[]{HttpResult.class}, Void.TYPE).isSupported) {
                return;
            }
            this.f130778a.invoke(httpResult != null ? httpResult.getData() : null);
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomNewActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0014\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/CreateChatRoomNewActivity$n", "Lcn/soulapp/android/lib/analyticsV2/IPageParams;", "", "id", "", "", "params", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class n implements IPageParams {
        public static ChangeQuickRedirect changeQuickRedirect;

        n() {
        }

        @Override // cn.soulapp.android.lib.analyticsV2.IPageParams
        @NotNull
        public String id() {
            return "GroupChat_CreateRoom";
        }

        @Override // cn.soulapp.android.lib.analyticsV2.IPageParams
        @NotNull
        public Map<String, Object> params() {
            String lastPlayTypeMappingTabCode;
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Map.class);
            if (patchProxyResultProxy.isSupported) {
                return (Map) patchProxyResultProxy.result;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("createroom_source", CreateChatRoomNewActivity.this.q0());
            RoomBean roomBean = CreateChatRoomNewActivity.this.mRoomBean;
            if (roomBean == null || (lastPlayTypeMappingTabCode = roomBean.getLastPlayTypeMappingTabCode()) == null) {
                lastPlayTypeMappingTabCode = "yuliao";
            }
            linkedHashMap.put("createroom_tab", lastPlayTypeMappingTabCode);
            linkedHashMap.put("createroom_version", k30.c.f229065a.b());
            return linkedHashMap;
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomNewActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/CreateChatRoomNewActivity$o", "Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomTopicRecDialog$TopicClickListener;", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomTopicBean;", "roomTopicBean", "Lkotlin/w;", "onTopicItemClick", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class o implements RoomTopicRecDialog.TopicClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RoomTopicRecDialog f130781b;

        o(RoomTopicRecDialog roomTopicRecDialog) {
            this.f130781b = roomTopicRecDialog;
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomTopicRecDialog.TopicClickListener
        public void onTopicItemClick(@Nullable ChatRoomTopicBean chatRoomTopicBean) {
            if (PatchProxy.proxy(new Object[]{chatRoomTopicBean}, this, changeQuickRedirect, false, 2, new Class[]{ChatRoomTopicBean.class}, Void.TYPE).isSupported) {
                return;
            }
            CreateChatRoomNewActivity.this.G1(chatRoomTopicBean);
            this.f130781b.dismiss();
            a1.f162146a.i();
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class p implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130782a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130783b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CreateChatRoomNewActivity f130784c;

        public p(View view, long j11, CreateChatRoomNewActivity createChatRoomNewActivity) {
            this.f130782a = view;
            this.f130783b = j11;
            this.f130784c = createChatRoomNewActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130782a) >= this.f130783b) {
                RoomTopicRecDialog roomTopicRecDialogA = RoomTopicRecDialog.INSTANCE.a(1, "");
                roomTopicRecDialogA.U(this.f130784c.new o(roomTopicRecDialogA));
                roomTopicRecDialogA.show(this.f130784c.getSupportFragmentManager(), "partyTopicRec");
                a1.f162146a.c();
            }
            ExtensionsKt.setLastClickTime(this.f130782a, jCurrentTimeMillis);
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 103, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    public CreateChatRoomNewActivity() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.isOpenGameTabSwitch = kotlin.j.a(lazyThreadSafetyMode, CreateChatRoomNewActivity$isOpenGameTabSwitch$2.INSTANCE);
        this.pageTabCodeList = kotlin.j.a(lazyThreadSafetyMode, new Function0<ArrayList<String>>() { // from class: cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity$pageTabCodeList$2
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ArrayList<String> invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], ArrayList.class);
                if (patchProxyResultProxy.isSupported) {
                    return (ArrayList) patchProxyResultProxy.result;
                }
                return this.this$0.b1() ? kotlin.collections.v.g("yuliao", "youxi", "ktv", "wanfa") : kotlin.collections.v.g("yuliao", "ktv", "wanfa");
            }
        });
        this.pageTitles = kotlin.j.b(new Function0<ArrayList<String>>() { // from class: cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity$pageTitles$2
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ArrayList<String> invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], ArrayList.class);
                if (patchProxyResultProxy.isSupported) {
                    return (ArrayList) patchProxyResultProxy.result;
                }
                return this.this$0.b1() ? kotlin.collections.v.g("派对", "开黑", "KTV", "玩法") : kotlin.collections.v.g("派对", "KTV", "玩法");
            }
        });
        this.viewModel = kotlin.j.b(new Function0<CreateChatRoomViewModel>() { // from class: cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity$viewModel$2
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CreateChatRoomViewModel invoke() {
                PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], CreateChatRoomViewModel.class);
                return patchProxyResultProxy.isSupported ? (CreateChatRoomViewModel) patchProxyResultProxy.result : (CreateChatRoomViewModel) new ViewModelProvider(this.this$0).get(CreateChatRoomViewModel.class);
            }
        });
        this.partyPlayTypeDialog = kotlin.j.b(CreateChatRoomNewActivity$partyPlayTypeDialog$2.INSTANCE);
        this.keyboardUtil = kotlin.j.b(CreateChatRoomNewActivity$keyboardUtil$2.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<PlayTypeModel> A0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) this.mPlayTypeList.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A1(CreateChatRoomNewActivity this$0, RoomTypeModel roomTypeModel) {
        List<RoomTypeBean> list;
        Object next;
        String str;
        if (PatchProxy.proxy(new Object[]{this$0, roomTypeModel}, null, changeQuickRedirect, true, 96, new Class[]{CreateChatRoomNewActivity.class, RoomTypeModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        if (roomTypeModel == null || (list = roomTypeModel.res) == null) {
            return;
        }
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((RoomTypeBean) next).f24105id == this$0.mClassifyCode));
        RoomTypeBean roomTypeBean = (RoomTypeBean) next;
        if (roomTypeBean == null || (str = roomTypeBean.classifyName) == null) {
            str = ((RoomTypeBean) CollectionsKt___CollectionsKt.s0(list)).classifyName;
        }
        this$0.getBinding().f131041l.setPartyTypeTitle(str);
        if (this$0.mClassifyCode == 0) {
            this$0.n0(((RoomTypeBean) CollectionsKt___CollectionsKt.s0(list)).f24105id);
        }
        this$0.D0().d(list, Integer.valueOf(this$0.mClassifyCode));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ArrayList<String> B0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], ArrayList.class);
        return patchProxyResultProxy.isSupported ? (ArrayList) patchProxyResultProxy.result : (ArrayList) this.pageTabCodeList.getValue();
    }

    private final void B1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 57, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        J0().m().observe(this, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.createroom.m
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) throws JSONException {
                CreateChatRoomNewActivity.C1(this.f130806a, obj);
            }
        });
    }

    private final ArrayList<String> C0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], ArrayList.class);
        return patchProxyResultProxy.isSupported ? (ArrayList) patchProxyResultProxy.result : (ArrayList) this.pageTitles.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x005f  */
    public static final void C1(CreateChatRoomNewActivity this$0, Object obj) throws JSONException {
        String topicId;
        RecTopicInfo recTopicInfo;
        ArrayList<Integer> supportedClassifyList;
        if (PatchProxy.proxy(new Object[]{this$0, obj}, null, changeQuickRedirect, true, 94, new Class[]{CreateChatRoomNewActivity.class, Object.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        if (this$0.currentTopicBean == null) {
            topicId = "";
        } else {
            RoomConfigListModel roomConfigListModel = this$0.configModel;
            if ((roomConfigListModel == null || (recTopicInfo = roomConfigListModel.getRecTopicInfo()) == null || (supportedClassifyList = recTopicInfo.getSupportedClassifyList()) == null || !supportedClassifyList.contains(Integer.valueOf(this$0.mClassifyCode))) ? false : true) {
                ChatRoomTopicBean chatRoomTopicBean = this$0.currentTopicBean;
                topicId = chatRoomTopicBean != null ? chatRoomTopicBean.getTopicId() : null;
            } else {
                topicId = "";
            }
        }
        CreateChatRoomViewModel createChatRoomViewModelJ0 = this$0.J0();
        int i11 = this$0.mClassifyCode;
        createChatRoomViewModelJ0.b(i11, ((Number) ia0.f.a(i11 == 7, Integer.valueOf(this$0.mTopicId), 0)).intValue(), this$0.u0(), this$0.mBackgroundId, this$0.s0(), this$0.mFmCode, topicId, this$0.privateStatus, this$0.source, kotlin.collections.u.e(this$0.isOpenSongMachine ? "live_song" : ""), this$0.chatGroupId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PartyPlayTypeDialog D0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 11, new Class[0], PartyPlayTypeDialog.class);
        return patchProxyResultProxy.isSupported ? (PartyPlayTypeDialog) patchProxyResultProxy.result : (PartyPlayTypeDialog) this.partyPlayTypeDialog.getValue();
    }

    private final void D1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 66, new Class[0], Void.TYPE).isSupported || this.hasChangeRoomTitle || this.currentTopicBean != null) {
            return;
        }
        CreateRoomPageRoomInfoView createRoomPageRoomInfoView = getBinding().f131041l;
        RoomBean roomBean = this.mRoomBean;
        createRoomPageRoomInfoView.setRoomName(roomBean != null ? roomBean.getLastTopic() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CreateChatRoomPlayTypeAdapter E0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], CreateChatRoomPlayTypeAdapter.class);
        return patchProxyResultProxy.isSupported ? (CreateChatRoomPlayTypeAdapter) patchProxyResultProxy.result : (CreateChatRoomPlayTypeAdapter) this.playTypeAdapter.getValue();
    }

    private final void E1(TabLayout.Tab tab) {
        if (PatchProxy.proxy(new Object[]{tab}, this, changeQuickRedirect, false, 46, new Class[]{TabLayout.Tab.class}, Void.TYPE).isSupported) {
            return;
        }
        String str = (String) CollectionsKt___CollectionsKt.v0(B0(), tab != null ? tab.getPosition() : -1);
        if (v.e(str, TabEnum.TAB_PLAY.getTabCode())) {
            ViewExtKt.l(getBinding().f131040k);
            ViewExtKt.j(getBinding().f131038i);
        } else if (v.e(str, TabEnum.TAB_GAME.getTabCode())) {
            ViewExtKt.j(getBinding().f131040k);
            ViewExtKt.l(getBinding().f131038i);
        } else {
            ViewExtKt.j(getBinding().f131040k);
            ViewExtKt.j(getBinding().f131038i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String F0(boolean isOpen) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Byte(isOpen ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 33, new Class[]{Boolean.TYPE}, String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("唱片机·");
        sb2.append(isOpen ? "开" : "关");
        return sb2.toString();
    }

    private final void F1(int i11) {
        if (!PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 20, new Class[]{Integer.TYPE}, Void.TYPE).isSupported && i11 >= 0 && i11 < getBinding().f131042m.getTabCount()) {
            getBinding().f131042m.removeTabAt(i11);
            C0().remove(i11);
            B0().remove(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LoadingDialog G0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], LoadingDialog.class);
        return patchProxyResultProxy.isSupported ? (LoadingDialog) patchProxyResultProxy.result : (LoadingDialog) this.soulLoadingDialog.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G1(ChatRoomTopicBean chatRoomTopicBean) {
        if (PatchProxy.proxy(new Object[]{chatRoomTopicBean}, this, changeQuickRedirect, false, 35, new Class[]{ChatRoomTopicBean.class}, Void.TYPE).isSupported) {
            return;
        }
        this.currentTopicBean = chatRoomTopicBean;
        if (chatRoomTopicBean != null) {
            String topicName = chatRoomTopicBean.getTopicName();
            if (topicName == null) {
                topicName = "";
            }
            getBinding().f131041l.setRoomName(topicName);
            CreateRoomPageRoomInfoView createRoomPageRoomInfoView = getBinding().f131041l;
            v.i(createRoomPageRoomInfoView, "binding.roomInfoContainer");
            CreateRoomPageRoomInfoView.setWarmContentTv$default(createRoomPageRoomInfoView, false, null, 2, null);
        }
    }

    private final RecyclerView H0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 79, new Class[0], RecyclerView.class);
        return patchProxyResultProxy.isSupported ? (RecyclerView) patchProxyResultProxy.result : getBinding().f131041l.getTopicRv();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 56, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        AuctionPkSwitchDialog auctionPkSwitchDialogA = AuctionPkSwitchDialog.INSTANCE.a();
        auctionPkSwitchDialogA.e(new l());
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        v.i(supportFragmentManager, "supportFragmentManager");
        auctionPkSwitchDialogA.show(supportFragmentManager, "AuctionPkSwitchDialog");
    }

    private final View I0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 78, new Class[0], View.class);
        return patchProxyResultProxy.isSupported ? (View) patchProxyResultProxy.result : getBinding().f131041l.getMoreTopicBtn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 55, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        List<UserFmAsset> list = this.userFmAssetList;
        if (list == null || list.isEmpty()) {
            ExtensionsKt.toast("系统繁忙，请稍后重试");
            return;
        }
        RoomMoreFMCodeDialog roomMoreFMCodeDialogA = RoomMoreFMCodeDialog.INSTANCE.a(this.mFmCode, this.userFmAssetList, true);
        roomMoreFMCodeDialogA.s(new Function2<String, String, w>() { // from class: cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity$showMoreFmCodeDialog$1$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ w mo3invoke(String str, String str2) {
                invoke2(str, str2);
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable String str, @Nullable String str2) {
                if (PatchProxy.proxy(new Object[]{str, str2}, this, changeQuickRedirect, false, 2, new Class[]{String.class, String.class}, Void.TYPE).isSupported) {
                    return;
                }
                CreateChatRoomNewActivity.r(this.this$0).f131041l.setFmCodeTv(str);
                CreateChatRoomNewActivity createChatRoomNewActivity = this.this$0;
                if (str2 == null) {
                    str2 = "";
                }
                createChatRoomNewActivity.mFmCode = str2;
                ExtensionsKt.toast("FM号码已切换");
            }
        });
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        v.i(supportFragmentManager, "supportFragmentManager");
        roomMoreFMCodeDialogA.show(supportFragmentManager, "RoomMoreFMCodeDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CreateChatRoomViewModel J0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 10, new Class[0], CreateChatRoomViewModel.class);
        return patchProxyResultProxy.isSupported ? (CreateChatRoomViewModel) patchProxyResultProxy.result : (CreateChatRoomViewModel) this.viewModel.getValue();
    }

    private final int J1(String tabCode) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{tabCode}, this, changeQuickRedirect, false, 21, new Class[]{String.class}, Integer.TYPE);
        return patchProxyResultProxy.isSupported ? ((Integer) patchProxyResultProxy.result).intValue() : B0().indexOf(tabCode);
    }

    private final void K0(final CreateRoomModel createRoomModel) {
        if (PatchProxy.proxy(new Object[]{createRoomModel}, this, changeQuickRedirect, false, 68, new Class[]{CreateRoomModel.class}, Void.TYPE).isSupported) {
            return;
        }
        if (createRoomModel == null) {
            G0().g();
            ah.l.t(this, "");
            return;
        }
        if (!createRoomModel.createResult) {
            G0().g();
            if (!TextUtils.isEmpty(createRoomModel.createFailedDesc)) {
                n0.h(createRoomModel.createFailedDesc, new Object[0]);
            }
            k30.c.f229065a.d(q0(), createRoomModel.createFailedDesc, true);
            return;
        }
        k30.c.e(k30.c.f229065a, q0(), null, true, 2, null);
        c80.a.b(new af.d());
        G0().g();
        if (this.privateStatus == 1) {
            cn.soulapp.android.client.component.middle.platform.utils.track.d.e(Const.EventType.CLICK, "openprivatechatroom", "pagesource", "1", "roomId", createRoomModel.roomId, CrashHianalyticsData.TIME, String.valueOf(System.currentTimeMillis()));
        }
        cn.soulapp.android.client.component.middle.platform.utils.track.d.e(Const.EventType.CLICK, "create_chatroom_success", "create_chatroom_source", this.source);
        c80.a.b(new l30.d(this.source));
        n0.g(getString(cn.soulapp.android.chatroom.R$string.f23790l), 500, new Object[0]);
        finish();
        cn.soulapp.cpnt_voiceparty.util.track.d.f162381a.i("cp_begin", createRoomModel.roomId);
        a60.l.i(a60.l.f1777a, createRoomModel.roomId, 0, null, null, w0(), this.groupJoinCode, null, 76, null);
        EventBus.c().m(new dg.o(-376066692));
        String str = createRoomModel.createRoomInvisibilityCloakOpenStatusMsg;
        if (str != null && (kotlin.text.q.w(str) ^ true)) {
            AnyExtKt.h(1500L, Boolean.TRUE, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity$goChatRoomActivity$1
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
                    String str2 = createRoomModel.createRoomInvisibilityCloakOpenStatusMsg;
                    if (str2 == null) {
                        str2 = "";
                    }
                    ExtensionsKt.toast(str2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K1(String str, String str2, Function1<? super TopicPolish, w> function1) {
        if (PatchProxy.proxy(new Object[]{str, str2, function1}, this, changeQuickRedirect, false, 85, new Class[]{String.class, String.class, Function1.class}, Void.TYPE).isSupported || str2 == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (str != null) {
            linkedHashMap.put("roomId", str);
        }
        linkedHashMap.put("topic", str2);
        ty.q.J(((ISoulHouse) ty.q.z(ISoulHouse.class)).topicPolish(linkedHashMap), new m(function1));
    }

    private final void L0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 44, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        J0().g();
    }

    private final void L1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 15, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SoulAnalyticsV2.getInstance().onPageStart(new n());
    }

    private final void M0(Integer playCode, Integer playType) {
        if (PatchProxy.proxy(new Object[]{playCode, playType}, this, changeQuickRedirect, false, 27, new Class[]{Integer.class, Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!this.hasChangeRoomType) {
            o0(playCode);
        }
        if (this.hasChangeRoomTitle || this.currentTopicBean != null) {
            return;
        }
        J0().o(Integer.valueOf(this.mClassifyCode), playType);
    }

    private final void M1(RoomLowQualityBean roomLowQualityBean) {
        if (PatchProxy.proxy(new Object[]{roomLowQualityBean}, this, changeQuickRedirect, false, 64, new Class[]{RoomLowQualityBean.class}, Void.TYPE).isSupported) {
            return;
        }
        Boolean isLowQualityTopic = roomLowQualityBean.getIsLowQualityTopic();
        boolean zBooleanValue = isLowQualityTopic != null ? isLowQualityTopic.booleanValue() : false;
        CreateRoomPageRoomInfoView createRoomPageRoomInfoView = getBinding().f131041l;
        String reminderMsg = roomLowQualityBean.getReminderMsg();
        if (reminderMsg == null) {
            reminderMsg = "";
        }
        createRoomPageRoomInfoView.setWarmContentTv(zBooleanValue, reminderMsg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N0(Integer playCode, Integer playType) {
        if (PatchProxy.proxy(new Object[]{playCode, playType}, this, changeQuickRedirect, false, 26, new Class[]{Integer.class, Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        RoomBean roomBean = this.mRoomBean;
        if (roomBean != null ? v.e(roomBean.getNewUser(), Boolean.TRUE) : false) {
            M0(playCode, playType);
            return;
        }
        RoomBean roomBean2 = this.mRoomBean;
        if (roomBean2 != null ? v.e(roomBean2.getLastTopicFromRec(), Boolean.TRUE) : false) {
            M0(playCode, playType);
        } else {
            if (this.hasChangeRoomType) {
                return;
            }
            o0(playCode);
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00a7  */
    private final void N1() {
        w wVar;
        RecTopicInfo recTopicInfo;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 29, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        RoomConfigListModel roomConfigListModel = this.configModel;
        if (roomConfigListModel == null || (recTopicInfo = roomConfigListModel.getRecTopicInfo()) == null) {
            wVar = null;
        } else {
            ArrayList<Integer> supportedClassifyList = recTopicInfo.getSupportedClassifyList();
            if (supportedClassifyList != null && supportedClassifyList.contains(Integer.valueOf(this.mClassifyCode))) {
                ArrayList<ChatRoomTopicBean> topicList = recTopicInfo.getTopicList();
                if (topicList == null || topicList.isEmpty()) {
                    getBinding().f131041l.s(false);
                } else {
                    getBinding().f131041l.s(true);
                    if (this.topicAdapter == null) {
                        a1.f162146a.g();
                        this.topicAdapter = new CreateChatRoomTopicAdapter();
                        View viewI0 = I0();
                        if (viewI0 != null) {
                            viewI0.setOnClickListener(new p(viewI0, 500L, this));
                        }
                        RecyclerView recyclerViewH0 = H0();
                        if (recyclerViewH0 != null) {
                            recyclerViewH0.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity$updateRecTopicData$1$2
                                public static ChangeQuickRedirect changeQuickRedirect;

                                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                                public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                                    if (PatchProxy.proxy(new Object[]{outRect, view, parent, state}, this, changeQuickRedirect, false, 2, new Class[]{Rect.class, View.class, RecyclerView.class, RecyclerView.State.class}, Void.TYPE).isSupported) {
                                        return;
                                    }
                                    v.j(outRect, "outRect");
                                    v.j(view, "view");
                                    v.j(parent, "parent");
                                    v.j(state, "state");
                                    super.getItemOffsets(outRect, view, parent, state);
                                    RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
                                    int position = layoutManager != null ? layoutManager.getPosition(view) : 0;
                                    CreateChatRoomTopicAdapter createChatRoomTopicAdapter = this.f130785a.topicAdapter;
                                    if (position == (createChatRoomTopicAdapter != null ? createChatRoomTopicAdapter.getItemCount() : 1) - 1) {
                                        outRect.right = 0;
                                    } else {
                                        outRect.right = (int) TypedValue.applyDimension(1, 8, Resources.getSystem().getDisplayMetrics());
                                    }
                                }
                            });
                        }
                        CreateChatRoomTopicAdapter createChatRoomTopicAdapter = this.topicAdapter;
                        if (createChatRoomTopicAdapter != null) {
                            createChatRoomTopicAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.createroom.d
                                @Override // com.chad.library.adapter.base.listener.OnItemClickListener
                                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                                    CreateChatRoomNewActivity.O1(this.f130791a, baseQuickAdapter, view, i11);
                                }
                            });
                        }
                        RecyclerView recyclerViewH1 = H0();
                        if (recyclerViewH1 != null) {
                            recyclerViewH1.setAdapter(this.topicAdapter);
                        }
                        CreateChatRoomTopicAdapter createChatRoomTopicAdapter2 = this.topicAdapter;
                        if (createChatRoomTopicAdapter2 != null) {
                            createChatRoomTopicAdapter2.setNewInstance(recTopicInfo.getTopicList());
                        }
                    }
                }
            } else {
                getBinding().f131041l.s(false);
            }
            wVar = w.f231958a;
        }
        if (wVar == null) {
            getBinding().f131041l.s(false);
        }
    }

    private final void O0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 18, new Class[0], Void.TYPE).isSupported || getIntent() == null || getIntent().getExtras() == null) {
            return;
        }
        Intent intent = getIntent();
        Serializable serializableExtra = intent != null ? intent.getSerializableExtra("historyRoomBean") : null;
        this.mRoomBean = serializableExtra instanceof RoomBean ? (RoomBean) serializableExtra : null;
        Bundle extras = getIntent().getExtras();
        this.mRemainCounts = extras != null ? extras.getInt("remainderTimes", 0) : 0;
        Intent intent2 = getIntent();
        String stringExtra = intent2 != null ? intent2.getStringExtra("tagName") : null;
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.tagName = stringExtra;
        Intent intent3 = getIntent();
        String stringExtra2 = intent3 != null ? intent3.getStringExtra(SocialConstants.PARAM_SOURCE) : null;
        if (stringExtra2 == null) {
            stringExtra2 = "";
        }
        this.source = stringExtra2;
        Intent intent4 = getIntent();
        this.defaultTabCode = intent4 != null ? intent4.getStringExtra("defaultTabCode") : null;
        Intent intent5 = getIntent();
        this.defaultPlayType = intent5 != null ? intent5.getStringExtra("defaultPlayType") : null;
        Intent intent6 = getIntent();
        String stringExtra3 = intent6 != null ? intent6.getStringExtra("chatGroupId") : null;
        this.chatGroupId = stringExtra3 != null ? stringExtra3 : "";
        Intent intent7 = getIntent();
        this.mClassifyCode = intent7 != null ? intent7.getIntExtra("defaultClassifyCode", 0) : 0;
        Intent intent8 = getIntent();
        Serializable serializableExtra2 = intent8 != null ? intent8.getSerializableExtra("extParams") : null;
        HashMap<String, Object> map = serializableExtra2 instanceof HashMap ? (HashMap) serializableExtra2 : null;
        this.extParams = map;
        Object obj = map != null ? map.get("defaultDisplayTabCode") : null;
        this.defaultDisplayTabCode = obj instanceof String ? (String) obj : null;
        HashMap<String, Object> map2 = this.extParams;
        Object obj2 = map2 != null ? map2.get("groupJoinCode") : null;
        this.groupJoinCode = obj2 instanceof String ? (String) obj2 : null;
        Intent intent9 = getIntent();
        this.joinCode = intent9 != null ? intent9.getStringExtra("joinCode") : null;
        j0(this.mRoomBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O1(CreateChatRoomNewActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, baseQuickAdapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 91, new Class[]{CreateChatRoomNewActivity.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        v.j(baseQuickAdapter, "<anonymous parameter 0>");
        v.j(view, "<anonymous parameter 1>");
        CreateChatRoomTopicAdapter createChatRoomTopicAdapter = this$0.topicAdapter;
        this$0.G1(createChatRoomTopicAdapter != null ? createChatRoomTopicAdapter.getItem(i11) : null);
        a1.f162146a.d();
    }

    private final void P0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 40, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ShapeEditText roomNameEt = getBinding().f131041l.getRoomNameEt();
        if (roomNameEt != null) {
            roomNameEt.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: cn.soulapp.cpnt_voiceparty.createroom.c
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
                    return CreateChatRoomNewActivity.Q0(textView, i11, keyEvent);
                }
            });
        }
        x0().e(this, new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 49, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        e0.f26113a.g(SystemClock.elapsedRealtime());
        G0().s();
        J0().q(u0(), new Function1<String, w>() { // from class: cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity$validateRoomTopic$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(String str) {
                invoke2(str);
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String errorMsg) {
                if (PatchProxy.proxy(new Object[]{errorMsg}, this, changeQuickRedirect, false, 2, new Class[]{String.class}, Void.TYPE).isSupported) {
                    return;
                }
                v.j(errorMsg, "errorMsg");
                k30.c.f229065a.d(this.this$0.q0(), errorMsg, true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Q0(TextView textView, int i11, KeyEvent keyEvent) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{textView, new Integer(i11), keyEvent}, null, changeQuickRedirect, true, 93, new Class[]{TextView.class, Integer.TYPE, KeyEvent.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        return keyEvent != null && keyEvent.getKeyCode() == 66;
    }

    private final void Q1(Integer playType) {
        if (PatchProxy.proxy(new Object[]{playType}, this, changeQuickRedirect, false, 30, new Class[]{Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        int id2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.A.getId();
        if (playType != null && playType.intValue() == id2) {
            View vgFmCode = getBinding().f131041l.getVgFmCode();
            if (vgFmCode != null) {
                ViewExtKt.j(vgFmCode);
                return;
            }
            return;
        }
        View vgFmCode2 = getBinding().f131041l.getVgFmCode();
        if (vgFmCode2 != null) {
            ViewExtKt.l(vgFmCode2);
        }
    }

    private final void R0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 39, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        getBinding().f131041l.setListener(this);
        P0();
    }

    private final void S0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 38, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        D0().e(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.createroom.b
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                CreateChatRoomNewActivity.T0(this.f130790a, baseQuickAdapter, view, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(CreateChatRoomNewActivity this$0, BaseQuickAdapter adapter, View view, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, adapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 92, new Class[]{CreateChatRoomNewActivity.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        v.j(adapter, "adapter");
        v.j(view, "<anonymous parameter 1>");
        RoomTypeBean roomTypeBean = (RoomTypeBean) adapter.getItem(i11);
        this$0.mTopicId = 0;
        this$0.getBinding().f131041l.setPartyTypeTitle(roomTypeBean != null ? roomTypeBean.classifyName : null);
        this$0.n0(roomTypeBean != null ? roomTypeBean.f24105id : 0);
        RoomBean roomBean = this$0.mRoomBean;
        if (!(roomBean != null ? v.e(roomBean.getLastTopicFromRec(), Boolean.TRUE) : false)) {
            this$0.D1();
        } else if (!this$0.hasChangeRoomTitle) {
            this$0.J0().o(Integer.valueOf(this$0.mClassifyCode), Integer.valueOf(this$0.s0()));
        }
        this$0.hasChangeRoomType = true;
        this$0.D0().dismiss();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private final void U0(RecyclerView recyclerView, final CreateChatRoomPlayTypeAdapter createChatRoomPlayTypeAdapter, final List<PlayTypeModel> list) {
        if (PatchProxy.proxy(new Object[]{recyclerView, createChatRoomPlayTypeAdapter, list}, this, changeQuickRedirect, false, 25, new Class[]{RecyclerView.class, CreateChatRoomPlayTypeAdapter.class, List.class}, Void.TYPE).isSupported) {
            return;
        }
        recyclerView.setAdapter(createChatRoomPlayTypeAdapter);
        recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity$initPlayTypeRecyclerView$1$1
            public static ChangeQuickRedirect changeQuickRedirect;

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                if (PatchProxy.proxy(new Object[]{outRect, view, parent, state}, this, changeQuickRedirect, false, 2, new Class[]{Rect.class, View.class, RecyclerView.class, RecyclerView.State.class}, Void.TYPE).isSupported) {
                    return;
                }
                v.j(outRect, "outRect");
                v.j(view, "view");
                v.j(parent, "parent");
                v.j(state, "state");
                super.getItemOffsets(outRect, view, parent, state);
                outRect.right = (int) TypedValue.applyDimension(1, 16, Resources.getSystem().getDisplayMetrics());
            }
        });
        createChatRoomPlayTypeAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: cn.soulapp.cpnt_voiceparty.createroom.k
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                CreateChatRoomNewActivity.V0(createChatRoomPlayTypeAdapter, list, this, baseQuickAdapter, view, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V0(CreateChatRoomPlayTypeAdapter typeAdapter, List typeList, CreateChatRoomNewActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        if (PatchProxy.proxy(new Object[]{typeAdapter, typeList, this$0, baseQuickAdapter, view, new Integer(i11)}, null, changeQuickRedirect, true, 90, new Class[]{CreateChatRoomPlayTypeAdapter.class, List.class, CreateChatRoomNewActivity.class, BaseQuickAdapter.class, View.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        v.j(typeAdapter, "$typeAdapter");
        v.j(typeList, "$typeList");
        v.j(this$0, "this$0");
        v.j(baseQuickAdapter, "<anonymous parameter 0>");
        v.j(view, "<anonymous parameter 1>");
        PlayTypeModel item = typeAdapter.getItem(i11);
        Integer playTypeCode = item.getPlayTypeCode();
        Integer numValueOf = (playTypeCode != null && playTypeCode.intValue() == -1) ? Integer.valueOf(cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154982g.getId()) : item.getPlayTypeCode();
        if (item.getHasSelected()) {
            return;
        }
        Iterator it = typeList.iterator();
        while (it.hasNext()) {
            PlayTypeModel playTypeModel = (PlayTypeModel) it.next();
            playTypeModel.h(v.e(playTypeModel.getPlayTypeCode(), item.getPlayTypeCode()));
        }
        this$0.N0(item.getPlayTypeCode(), numValueOf);
        boolean z11 = this$0.s0() == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154997v.getId();
        this$0.getBinding().f131041l.setShowOnlyFriendOption(z11);
        this$0.getBinding().f131041l.q(z11);
        Integer playTypeCode2 = typeAdapter.getItem(i11).getPlayTypeCode();
        this$0.mTopicId = playTypeCode2 != null ? playTypeCode2.intValue() : 0;
        Integer playTypeCode3 = typeAdapter.getItem(i11).getPlayTypeCode();
        int id2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154989n.getId();
        if (playTypeCode3 != null && playTypeCode3.intValue() == id2) {
            SoulAnalyticsV2.getInstance().onEvent(Const.EventType.CLICK, "PaiZhan_Build_clk", r0.j());
        }
        typeAdapter.notifyDataSetChanged();
    }

    private final void W0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 23, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ChangeQuickRedirect changeQuickRedirect2 = d0.changeQuickRedirect;
        String string = getString(R$string.W);
        v.i(string, "getString(R.string.c_vp_…hat_room_remainder_times)");
        String str = String.format(string, Arrays.copyOf(new Object[]{String.valueOf(this.mRemainCounts)}, 1));
        v.i(str, "format(format, *args)");
        getBinding().f131037h.setText(str);
    }

    private final void X0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 24, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        if (this.tagName.length() > 0) {
            getBinding().f131041l.setRoomName(this.tagName);
        }
    }

    private final void Y0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 22, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        TabLayoutMediator tabLayoutMediator = new TabLayoutMediator(getBinding().f131042m, getBinding().f131043n, new TabLayoutMediator.TabConfigurationStrategy() { // from class: cn.soulapp.cpnt_voiceparty.createroom.j
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i11) {
                CreateChatRoomNewActivity.Z0(this.f130801a, tab, i11);
            }
        });
        this.tabLayoutMediator = tabLayoutMediator;
        tabLayoutMediator.attach();
        getBinding().f131042m.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(CreateChatRoomNewActivity this$0, TabLayout.Tab tab, int i11) {
        if (PatchProxy.proxy(new Object[]{this$0, tab, new Integer(i11)}, null, changeQuickRedirect, true, 89, new Class[]{CreateChatRoomNewActivity.class, TabLayout.Tab.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        v.j(tab, "tab");
        if (tab.getCustomView() == null) {
            tab.setCustomView(R$layout.f129646j1);
            View customView = tab.getCustomView();
            ViewGroup viewGroup = customView instanceof ViewGroup ? (ViewGroup) customView : null;
            TextView textView = viewGroup != null ? (TextView) viewGroup.findViewById(R$id.f128370l00) : null;
            if (textView != null) {
                String str = (String) CollectionsKt___CollectionsKt.v0(this$0.C0(), i11);
                if (str == null) {
                    str = "";
                }
                textView.setText(str);
            }
            if (k30.b.f229063a.b()) {
                String str2 = (String) CollectionsKt___CollectionsKt.v0(this$0.B0(), i11);
                if (v.e(str2 != null ? str2 : "", TabEnum.TAB_GAME.getTabCode())) {
                    View customView2 = tab.getCustomView();
                    ViewGroup viewGroup2 = customView2 instanceof ViewGroup ? (ViewGroup) customView2 : null;
                    TextView textView2 = viewGroup2 != null ? (TextView) viewGroup2.findViewById(R$id.f128182i9) : null;
                    if (textView2 != null) {
                        ViewExtKt.l(textView2);
                    }
                    if (textView2 != null) {
                        textView2.setText("内测");
                    }
                }
            }
            this$0.p0(tab, i11 == 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a1(CreateChatRoomNewActivity this$0, View view, MotionEvent motionEvent) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{this$0, view, motionEvent}, null, changeQuickRedirect, true, 88, new Class[]{CreateChatRoomNewActivity.class, View.class, MotionEvent.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        v.j(this$0, "this$0");
        int action = motionEvent.getAction();
        if (action == 0) {
            this$0.originX = motionEvent.getX();
            this$0.originY = motionEvent.getY();
        } else if (action == 2 && Math.abs(motionEvent.getY() - this$0.originY) > Math.abs(motionEvent.getX() - this$0.originX)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean b1() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : ((Boolean) this.isOpenGameTabSwitch.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean c1() {
        List<String> listB;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 34, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        RoomConfigListModel roomConfigListModel = this.configModel;
        return (roomConfigListModel == null || (listB = roomConfigListModel.b()) == null || !listB.contains("live_song")) ? false : true;
    }

    private final void d1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 50, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        TextView textView = getBinding().f131034e;
        textView.setOnClickListener(new d(textView, 500L, this));
    }

    private final void e0() {
        ArrayList arrayList;
        List<OperationModel> listD;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 32, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        RoomConfigListModel roomConfigListModel = this.configModel;
        if (roomConfigListModel == null || (listD = roomConfigListModel.d()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (Object obj : listD) {
                String content = ((OperationModel) obj).getContent();
                if (!(content == null || content.length() == 0)) {
                    arrayList.add(obj);
                }
            }
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        getBinding().f131032c.setData(arrayList);
        ViewExtKt.l(getBinding().f131032c);
    }

    private final void e1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 36, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f1();
        g1();
        d1();
        k1();
        j1();
        i1();
        h1();
    }

    private final void f0() {
        List<TabConfigData> listG;
        Object next;
        List<PlayTypeModel> playTypeConfigList;
        Object next2;
        Integer playTypeCode;
        TabConfigData tabConfigData;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 72, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        String str = (String) CollectionsKt___CollectionsKt.v0(B0(), this.currentSelectedTabPosition);
        RoomConfigListModel roomConfigListModel = this.configModel;
        String previewBackground = null;
        if (roomConfigListModel != null && (listG = roomConfigListModel.g()) != null) {
            Iterator<T> it = listG.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    tabConfigData = (TabConfigData) next;
                }
            } while (!v.e(tabConfigData != null ? tabConfigData.getTabCode() : null, str));
            TabConfigData tabConfigData2 = (TabConfigData) next;
            if (tabConfigData2 != null && (playTypeConfigList = tabConfigData2.getPlayTypeConfigList()) != null) {
                Iterator<T> it2 = playTypeConfigList.iterator();
                do {
                    if (!it2.hasNext()) {
                        next2 = null;
                        break;
                    } else {
                        next2 = it2.next();
                        playTypeCode = ((PlayTypeModel) next2).getPlayTypeCode();
                    }
                } while (!(playTypeCode != null && playTypeCode.intValue() == s0()));
                PlayTypeModel playTypeModel = (PlayTypeModel) next2;
                if (playTypeModel != null) {
                    previewBackground = playTypeModel.getPreviewBackground();
                }
            }
        }
        if (previewBackground == null) {
            previewBackground = "";
        }
        if (!(!kotlin.text.q.w(previewBackground))) {
            getBinding().f131039j.m();
            getBinding().f131039j.D();
            ViewExtKt.j(getBinding().f131039j);
        } else {
            ViewExtKt.l(getBinding().f131039j);
            getBinding().f131039j.D();
            getBinding().f131039j.setAnimationFromUrl(previewBackground);
            getBinding().f131039j.A();
        }
    }

    private final void f1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 47, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ImageView imageView = getBinding().f131035f;
        imageView.setOnClickListener(new e(imageView, 500L, this));
    }

    private final void g0() {
        List<BackgroundClassifyModel> listA;
        Integer lastBackgroundId;
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 71, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        RoomConfigListModel roomConfigListModel = this.configModel;
        if (roomConfigListModel != null && (listA = roomConfigListModel.a()) != null) {
            Iterator<T> it = listA.iterator();
            boolean z12 = false;
            while (it.hasNext()) {
                List<BackgroundDataModel> listA2 = ((BackgroundClassifyModel) it.next()).a();
                if (listA2 != null) {
                    for (BackgroundDataModel backgroundDataModel : listA2) {
                        Long id2 = backgroundDataModel.getId();
                        RoomBean roomBean = this.mRoomBean;
                        backgroundDataModel.z(id2 != null && id2.longValue() == ((long) ((roomBean == null || (lastBackgroundId = roomBean.getLastBackgroundId()) == null) ? 0 : lastBackgroundId.intValue())));
                        if (backgroundDataModel.getIsSelected()) {
                            this.mBackgroundId = String.valueOf(backgroundDataModel.getMediaId());
                            ImageView imageView = getBinding().f131031b;
                            v.i(imageView, "binding.backgroundIv");
                            RequestBuilder<Drawable> requestBuilderM = cn.soulapp.android.chatroom.dynamic.b.d(imageView).m(backgroundDataModel.getBackgroundUrl());
                            int i11 = R$drawable.f127160d5;
                            requestBuilderM.placeholder(i11).error(i11).into(getBinding().f131031b);
                            z12 = true;
                        } else if ((this.mBackgroundId.length() == 0) && backgroundDataModel.s()) {
                            this.mBackgroundId = String.valueOf(backgroundDataModel.getMediaId());
                            ImageView imageView2 = getBinding().f131031b;
                            v.i(imageView2, "binding.backgroundIv");
                            RequestBuilder<Drawable> requestBuilderM2 = cn.soulapp.android.chatroom.dynamic.b.d(imageView2).m(backgroundDataModel.getBackgroundUrl());
                            int i12 = R$drawable.f127160d5;
                            requestBuilderM2.placeholder(i12).error(i12).into(getBinding().f131031b);
                        }
                    }
                }
            }
            z11 = z12;
        }
        this.mBackgroundIsSelected = z11;
        n1();
    }

    private final void g1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 48, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        ShapeTextView shapeTextView = getBinding().f131036g;
        shapeTextView.setOnClickListener(new f(shapeTextView, 500L, this));
    }

    private final void h0(List<PlayTypeModel> list) {
        final PlayTypeModel playTypeModel;
        Integer numValueOf;
        Object next;
        Object next2;
        Integer playTypeCode;
        RoomBean roomBean;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 76, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        z0().clear();
        if (list == null) {
            int currentItem = getBinding().f131043n.getCurrentItem();
            TabEnum tabEnum = TabEnum.TAB_GAME;
            if (currentItem == J1(tabEnum.getTabCode())) {
                m1(0);
            }
            F1(B0().indexOf(tabEnum.getTabCode()));
            k30.c cVar = k30.c.f229065a;
            cVar.c(kotlin.text.q.C(cVar.b(), ",youxi", "", false, 4, null));
            return;
        }
        final ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            playTypeModel = null;
            Object obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next3 = it.next();
            PlayTypeModel playTypeModel2 = (PlayTypeModel) next3;
            for (Object obj2 : b0.f142548a.d()) {
                BaseRoomFunction baseRoomFunction = (BaseRoomFunction) obj2;
                int id2 = baseRoomFunction.h().getId();
                Integer playTypeCode2 = playTypeModel2.getPlayTypeCode();
                if ((playTypeCode2 != null && id2 == playTypeCode2.intValue()) || baseRoomFunction.h().getGroupType() == 3 || baseRoomFunction.h().getGroupType() == 4) {
                    obj = obj2;
                    break;
                }
            }
            if (obj != null) {
                arrayList.add(next3);
            }
        }
        String str = this.defaultPlayType;
        if (str == null || str.length() == 0) {
            Iterator it2 = arrayList.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                } else {
                    next2 = it2.next();
                    playTypeCode = ((PlayTypeModel) next2).getPlayTypeCode();
                    roomBean = this.mRoomBean;
                }
            } while (!(playTypeCode != null && playTypeCode.intValue() == cn.soulapp.lib.utils.ext.n.d(roomBean != null ? roomBean.getLastPlayType() : null)));
            if (next2 != null) {
                RoomBean roomBean2 = this.mRoomBean;
                numValueOf = Integer.valueOf(cn.soulapp.lib.utils.ext.n.d(roomBean2 != null ? roomBean2.getLastPlayType() : null));
            } else {
                PlayTypeModel playTypeModel3 = (PlayTypeModel) CollectionsKt___CollectionsKt.u0(arrayList);
                numValueOf = playTypeModel3 != null ? playTypeModel3.getPlayTypeCode() : null;
            }
        } else {
            numValueOf = Integer.valueOf(cn.soulapp.lib.utils.ext.n.d(this.defaultPlayType));
        }
        Iterator it3 = arrayList.iterator();
        do {
            if (!it3.hasNext()) {
                next = null;
                break;
            }
            next = it3.next();
        } while (!v.e(((PlayTypeModel) next).getPlayTypeCode(), numValueOf));
        PlayTypeModel playTypeModel4 = (PlayTypeModel) next;
        if (playTypeModel4 != null) {
            playTypeModel4.h(true);
            playTypeModel = playTypeModel4;
        }
        z0().addAll(arrayList);
        v0().setNewInstance(CollectionsKt___CollectionsKt.t1(z0()));
        if (playTypeModel != null) {
            getBinding().f131038i.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.createroom.e
                @Override // java.lang.Runnable
                public final void run() {
                    CreateChatRoomNewActivity.i0(this.f130792a, arrayList, playTypeModel);
                }
            });
        }
    }

    private final void h1() {
        View creatorHallEntry;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 54, new Class[0], Void.TYPE).isSupported || !SwitchUtil.f162115a.d() || (creatorHallEntry = getBinding().f131041l.getCreatorHallEntry()) == null) {
            return;
        }
        creatorHallEntry.setOnClickListener(new h(creatorHallEntry, 500L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(CreateChatRoomNewActivity this$0, List listData, PlayTypeModel playTypeModel) {
        if (PatchProxy.proxy(new Object[]{this$0, listData, playTypeModel}, null, changeQuickRedirect, true, 102, new Class[]{CreateChatRoomNewActivity.class, List.class, PlayTypeModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        v.j(listData, "$listData");
        this$0.getBinding().f131038i.scrollToPosition(listData.indexOf(playTypeModel));
    }

    private final void i1() {
        View fmCodeBtn;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 53, new Class[0], Void.TYPE).isSupported || (fmCodeBtn = getBinding().f131041l.getFmCodeBtn()) == null) {
            return;
        }
        fmCodeBtn.setOnClickListener(new i(fmCodeBtn, 500L, this));
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void initViewPager() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 19, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        v.i(supportFragmentManager, "supportFragmentManager");
        Lifecycle lifecycle = getLifecycle();
        v.i(lifecycle, "lifecycle");
        CreateRoomPagerAdapter createRoomPagerAdapter = new CreateRoomPagerAdapter(supportFragmentManager, lifecycle);
        int size = C0().size();
        int i11 = 0;
        while (i11 < size) {
            i11++;
            createRoomPagerAdapter.a(CreateRoomPageCommonFragment.INSTANCE.a());
        }
        ViewPager2 viewPager2 = getBinding().f131043n;
        View childAt = viewPager2.getChildAt(0);
        RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
        if (recyclerView != null) {
            recyclerView.setOnTouchListener(new View.OnTouchListener() { // from class: cn.soulapp.cpnt_voiceparty.createroom.n
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return CreateChatRoomNewActivity.a1(this.f130807a, view, motionEvent);
                }
            });
        }
        viewPager2.setAdapter(createRoomPagerAdapter);
        viewPager2.setCurrentItem(0);
    }

    private final void j0(RoomBean roomBean) {
        String lastPlayTypeMappingTabCode;
        List<RoomTypeBean> list;
        RoomTypeBean roomTypeBean;
        Integer lastClassifyCode;
        Integer lastClassifyCode2;
        int iIntValue = 0;
        if (PatchProxy.proxy(new Object[]{roomBean}, this, changeQuickRedirect, false, 65, new Class[]{RoomBean.class}, Void.TYPE).isSupported) {
            return;
        }
        this.mRoomBean = roomBean;
        ArrayList<String> arrayListB0 = B0();
        if (roomBean == null || (lastPlayTypeMappingTabCode = roomBean.getLastPlayTypeMappingTabCode()) == null) {
            lastPlayTypeMappingTabCode = "yuliao";
        }
        this.currentSelectedTabPosition = Math.max(0, arrayListB0.indexOf(lastPlayTypeMappingTabCode));
        if (this.mClassifyCode == 0) {
            if (kotlin.collections.v.g(1, 2, 4, 5, 6, 10).contains(Integer.valueOf((roomBean == null || (lastClassifyCode2 = roomBean.getLastClassifyCode()) == null) ? 0 : lastClassifyCode2.intValue()))) {
                if (roomBean != null && (lastClassifyCode = roomBean.getLastClassifyCode()) != null) {
                    iIntValue = lastClassifyCode.intValue();
                }
                n0(iIntValue);
            } else {
                RoomTypeModel value = J0().k().getValue();
                if (value != null && (list = value.res) != null && (roomTypeBean = (RoomTypeBean) CollectionsKt___CollectionsKt.s0(list)) != null) {
                    iIntValue = roomTypeBean.f24105id;
                }
                n0(iIntValue);
            }
        }
        J0().j();
        l1(roomBean != null ? roomBean.getUserFmAssetList() : null);
        D1();
    }

    private final void j1() {
        View partyTypeBtn;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 52, new Class[0], Void.TYPE).isSupported || (partyTypeBtn = getBinding().f131041l.getPartyTypeBtn()) == null) {
            return;
        }
        partyTypeBtn.setOnClickListener(new j(partyTypeBtn, 500L, this));
    }

    private final void k0(List<PlayTypeModel> list) {
        final PlayTypeModel playTypeModel;
        Integer numValueOf;
        Object next;
        Object next2;
        Integer playTypeCode;
        RoomBean roomBean;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 73, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        A0().clear();
        if (list == null) {
            int currentItem = getBinding().f131043n.getCurrentItem();
            TabEnum tabEnum = TabEnum.TAB_PLAY;
            if (currentItem == J1(tabEnum.getTabCode())) {
                m1(0);
            }
            F1(B0().indexOf(tabEnum.getTabCode()));
            k30.c cVar = k30.c.f229065a;
            cVar.c(kotlin.text.q.C(cVar.b(), ",wanfa", "", false, 4, null));
            return;
        }
        final ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            playTypeModel = null;
            Object obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next3 = it.next();
            PlayTypeModel playTypeModel2 = (PlayTypeModel) next3;
            for (Object obj2 : b0.f142548a.d()) {
                BaseRoomFunction baseRoomFunction = (BaseRoomFunction) obj2;
                int id2 = baseRoomFunction.h().getId();
                Integer playTypeCode2 = playTypeModel2.getPlayTypeCode();
                if ((playTypeCode2 != null && id2 == playTypeCode2.intValue()) || baseRoomFunction.h().getGroupType() == 3 || baseRoomFunction.h().getGroupType() == 4) {
                    obj = obj2;
                    break;
                }
            }
            if (obj != null) {
                arrayList.add(next3);
            }
        }
        String str = this.defaultPlayType;
        if (str == null || str.length() == 0) {
            Iterator it2 = arrayList.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                } else {
                    next2 = it2.next();
                    playTypeCode = ((PlayTypeModel) next2).getPlayTypeCode();
                    roomBean = this.mRoomBean;
                }
            } while (!(playTypeCode != null && playTypeCode.intValue() == cn.soulapp.lib.utils.ext.n.d(roomBean != null ? roomBean.getLastPlayType() : null)));
            if (next2 != null) {
                RoomBean roomBean2 = this.mRoomBean;
                numValueOf = Integer.valueOf(cn.soulapp.lib.utils.ext.n.d(roomBean2 != null ? roomBean2.getLastPlayType() : null));
            } else {
                PlayTypeModel playTypeModel3 = (PlayTypeModel) CollectionsKt___CollectionsKt.u0(arrayList);
                numValueOf = playTypeModel3 != null ? playTypeModel3.getPlayTypeCode() : null;
            }
        } else {
            numValueOf = Integer.valueOf(cn.soulapp.lib.utils.ext.n.d(this.defaultPlayType));
        }
        Iterator it3 = arrayList.iterator();
        do {
            if (!it3.hasNext()) {
                next = null;
                break;
            }
            next = it3.next();
        } while (!v.e(((PlayTypeModel) next).getPlayTypeCode(), numValueOf));
        PlayTypeModel playTypeModel4 = (PlayTypeModel) next;
        if (playTypeModel4 != null) {
            playTypeModel4.h(true);
            playTypeModel = playTypeModel4;
        }
        A0().addAll(arrayList);
        E0().setNewInstance(CollectionsKt___CollectionsKt.t1(A0()));
        if (playTypeModel != null) {
            getBinding().f131040k.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.createroom.f
                @Override // java.lang.Runnable
                public final void run() {
                    CreateChatRoomNewActivity.l0(this.f130795a, arrayList, playTypeModel);
                }
            });
        }
    }

    private final void k1() {
        ImageView randomNameBtn;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 51, new Class[0], Void.TYPE).isSupported || (randomNameBtn = getBinding().f131041l.getRandomNameBtn()) == null) {
            return;
        }
        randomNameBtn.setOnClickListener(new k(randomNameBtn, 500L, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(CreateChatRoomNewActivity this$0, List listData, PlayTypeModel playTypeModel) {
        if (PatchProxy.proxy(new Object[]{this$0, listData, playTypeModel}, null, changeQuickRedirect, true, 101, new Class[]{CreateChatRoomNewActivity.class, List.class, PlayTypeModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        v.j(listData, "$listData");
        this$0.getBinding().f131040k.scrollToPosition(listData.indexOf(playTypeModel));
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0051  */
    /* JADX WARN: Code duplicated, block: B:25:0x005b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0071  */
    /* JADX WARN: Code duplicated, block: B:36:0x0079  */
    /* JADX WARN: Code duplicated, block: B:51:0x0075 A[SYNTHETIC] */
    private final void l1(List<UserFmAsset> list) {
        List<UserFmAsset> list2;
        UserFmAsset userFmAsset;
        Iterator<T> it;
        Object next;
        Integer state;
        boolean z11;
        Object next2;
        String showFmCode;
        RoomBean roomBean;
        if (PatchProxy.proxy(new Object[]{list}, this, changeQuickRedirect, false, 67, new Class[]{List.class}, Void.TYPE).isSupported) {
            return;
        }
        this.userFmAssetList = list;
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                } else {
                    next2 = it2.next();
                    showFmCode = ((UserFmAsset) next2).getShowFmCode();
                    roomBean = this.mRoomBean;
                }
            } while (!v.e(showFmCode, roomBean != null ? roomBean.getLastShowFmCode() : null));
            userFmAsset = (UserFmAsset) next2;
            if (userFmAsset == null) {
                list2 = this.userFmAssetList;
                if (list2 != null) {
                    it = list2.iterator();
                    do {
                        if (it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        state = ((UserFmAsset) next).getState();
                        if (state == null && state.intValue() == 1) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                    } while (!z11);
                    userFmAsset = (UserFmAsset) next;
                } else {
                    userFmAsset = null;
                }
            }
        } else {
            list2 = this.userFmAssetList;
            if (list2 != null) {
                it = list2.iterator();
                do {
                    if (it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    state = ((UserFmAsset) next).getState();
                    if (state == null) {
                        z11 = false;
                    } else {
                        z11 = true;
                    }
                } while (!z11);
                userFmAsset = (UserFmAsset) next;
            } else {
                userFmAsset = null;
            }
        }
        String fmCode = userFmAsset != null ? userFmAsset.getFmCode() : null;
        if (fmCode == null) {
            fmCode = "";
        }
        this.mFmCode = fmCode;
        getBinding().f131041l.setFmCodeTv(userFmAsset != null ? userFmAsset.getShowFmCode() : null);
    }

    private final void m0() {
        Boolean bool;
        HashMap<String, Boolean> mapC;
        boolean z11 = false;
        if (!PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 31, new Class[0], Void.TYPE).isSupported && c1()) {
            RoomConfigListModel roomConfigListModel = this.configModel;
            if (roomConfigListModel == null || (mapC = roomConfigListModel.c()) == null || (bool = mapC.get("live_song")) == null) {
                bool = Boolean.FALSE;
            }
            boolean zBooleanValue = bool.booleanValue();
            if (!ModeConflictConfiguration.f154904a.e(Integer.valueOf(s0()), t0()) && zBooleanValue) {
                z11 = true;
            }
            this.isOpenSongMachine = z11;
            getBinding().f131041l.setFmCodeTv(F0(this.isOpenSongMachine));
            getBinding().f131041l.setSongMachineIconIv(R$drawable.f127391oh);
        }
    }

    private final void m1(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 74, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        getBinding().f131043n.setCurrentItem(i11);
    }

    private final void n0(int i11) {
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 70, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        this.mClassifyCode = i11;
        N1();
    }

    private final void n1() {
        boolean z11 = false;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 84, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        getBinding().f131036g.setEnabled(false);
        if (u0().length() > 15) {
            n0.i("派对标题最长不超过15个字");
            return;
        }
        int i11 = this.mClassifyCode;
        if (i11 == 0) {
            return;
        }
        if ((i11 == 7 && this.mTopicId == 0) || TextUtils.isEmpty(this.mBackgroundId)) {
            return;
        }
        ShapeTextView shapeTextView = getBinding().f131036g;
        if (!TextUtils.isEmpty(u0())) {
            ShapeEditText roomNameEt = getBinding().f131041l.getRoomNameEt();
            if (!v.e(roomNameEt != null ? roomNameEt.getTag() : null, "default")) {
                z11 = true;
            }
        }
        shapeTextView.setEnabled(z11);
    }

    private final void o0(Integer playType) {
        PlayTypeClassifyMapping playTypeClassifyMapping;
        Object next;
        Integer classifyCode;
        List<PlayTypeClassifyMapping> playTypeClassifyMappingList;
        Object next2;
        if (PatchProxy.proxy(new Object[]{playType}, this, changeQuickRedirect, false, 28, new Class[]{Integer.class}, Void.TYPE).isSupported) {
            return;
        }
        RoomBean roomBean = this.mRoomBean;
        String str = null;
        if (roomBean == null || (playTypeClassifyMappingList = roomBean.getPlayTypeClassifyMappingList()) == null) {
            playTypeClassifyMapping = null;
        } else {
            Iterator<T> it = playTypeClassifyMappingList.iterator();
            do {
                if (!it.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it.next();
            } while (!v.e(((PlayTypeClassifyMapping) next2).getPlayType(), playType));
            playTypeClassifyMapping = (PlayTypeClassifyMapping) next2;
        }
        this.mClassifyCode = (playTypeClassifyMapping == null || (classifyCode = playTypeClassifyMapping.getClassifyCode()) == null) ? this.mClassifyCode : classifyCode.intValue();
        CreateRoomPageRoomInfoView createRoomPageRoomInfoView = getBinding().f131041l;
        List<RoomTypeBean> listB = D0().b();
        if (listB != null) {
            Iterator<T> it2 = listB.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!(((RoomTypeBean) next).f24105id == this.mClassifyCode));
            RoomTypeBean roomTypeBean = (RoomTypeBean) next;
            if (roomTypeBean != null) {
                str = roomTypeBean.classifyName;
            }
        }
        createRoomPageRoomInfoView.setPartyTypeTitle(str);
        N1();
        f0();
        Q1(playType);
        m0();
    }

    private final void o1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 61, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        J0().c().observe(this, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.createroom.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                CreateChatRoomNewActivity.p1(this.f130805a, (BackgroundDataModel) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0(TabLayout.Tab tab, boolean z11) {
        View customView;
        View customView2;
        if (PatchProxy.proxy(new Object[]{tab, new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 45, new Class[]{TabLayout.Tab.class, Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        View viewFindViewById = null;
        TextView textView = (tab == null || (customView2 = tab.getCustomView()) == null) ? null : (TextView) customView2.findViewById(R$id.f128370l00);
        if (textView != null) {
            textView.setTextColor(Color.parseColor(z11 ? "#FFFFFF" : "#99FFFFFF"));
        }
        if (textView != null) {
            textView.setTypeface(z11 ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        }
        if (tab != null && (customView = tab.getCustomView()) != null) {
            viewFindViewById = customView.findViewById(R$id.Gl);
        }
        if (viewFindViewById != null) {
            ExtensionsKt.visibleOrInvisible(viewFindViewById, z11);
        }
        E1(tab);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p1(CreateChatRoomNewActivity this$0, BackgroundDataModel backgroundDataModel) {
        if (PatchProxy.proxy(new Object[]{this$0, backgroundDataModel}, null, changeQuickRedirect, true, 98, new Class[]{CreateChatRoomNewActivity.class, BackgroundDataModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        this$0.mBackgroundId = String.valueOf(backgroundDataModel.getId());
        ImageView imageView = this$0.getBinding().f131031b;
        v.i(imageView, "binding.backgroundIv");
        RequestBuilder<Drawable> requestBuilderM = cn.soulapp.android.chatroom.dynamic.b.d(imageView).m(backgroundDataModel.getBackgroundUrl());
        int i11 = R$drawable.f127160d5;
        requestBuilderM.placeholder(i11).error(i11).into(this$0.getBinding().f131031b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String q0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 16, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        if (v.e(this.source, "MAIN_HALL#TAB_RECOMMEND")) {
            return this.source;
        }
        if (v.e(this.mLastPageId, "GroupChat_RoomList")) {
            return "2";
        }
        if (v.e(this.source, "SQUARE#PUBLISHER") || v.e(this.source, "PLANET#ROOMLIST") || v.e(this.source, "CHATGROUP#BOTTOM")) {
            return this.source;
        }
        String str = this.mLastPageId;
        return str == null ? "unknow" : str;
    }

    private final void q1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 60, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        J0().d().observe(this, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.createroom.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                CreateChatRoomNewActivity.r1(this.f130799a, (CreateRoomModel) obj);
            }
        });
    }

    public static final /* synthetic */ CVpActivityCreateChatRoomNewLayoutBinding r(CreateChatRoomNewActivity createChatRoomNewActivity) {
        return createChatRoomNewActivity.getBinding();
    }

    private final PlayTypeModel r0() {
        List<TabConfigData> listG;
        Object next;
        List<PlayTypeModel> playTypeConfigList;
        TabConfigData tabConfigData;
        List<TabConfigData> listG2;
        Object next2;
        List<PlayTypeModel> playTypeConfigList2;
        TabConfigData tabConfigData2;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 41, new Class[0], PlayTypeModel.class);
        if (patchProxyResultProxy.isSupported) {
            return (PlayTypeModel) patchProxyResultProxy.result;
        }
        String str = (String) CollectionsKt___CollectionsKt.v0(B0(), this.currentSelectedTabPosition);
        Object obj = null;
        if (v.e(str, TabEnum.TAB_NORMAL.getTabCode())) {
            RoomConfigListModel roomConfigListModel = this.configModel;
            if (roomConfigListModel == null || (listG2 = roomConfigListModel.g()) == null) {
                return null;
            }
            Iterator<T> it = listG2.iterator();
            do {
                if (!it.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it.next();
                tabConfigData2 = (TabConfigData) next2;
            } while (!v.e(tabConfigData2 != null ? tabConfigData2.getTabCode() : null, TabEnum.TAB_NORMAL.getTabCode()));
            TabConfigData tabConfigData3 = (TabConfigData) next2;
            if (tabConfigData3 == null || (playTypeConfigList2 = tabConfigData3.getPlayTypeConfigList()) == null) {
                return null;
            }
            return (PlayTypeModel) CollectionsKt___CollectionsKt.v0(playTypeConfigList2, 0);
        }
        if (v.e(str, TabEnum.TAB_KTV.getTabCode())) {
            RoomConfigListModel roomConfigListModel2 = this.configModel;
            if (roomConfigListModel2 == null || (listG = roomConfigListModel2.g()) == null) {
                return null;
            }
            Iterator<T> it2 = listG.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                tabConfigData = (TabConfigData) next;
            } while (!v.e(tabConfigData != null ? tabConfigData.getTabCode() : null, TabEnum.TAB_KTV.getTabCode()));
            TabConfigData tabConfigData4 = (TabConfigData) next;
            if (tabConfigData4 == null || (playTypeConfigList = tabConfigData4.getPlayTypeConfigList()) == null) {
                return null;
            }
            return (PlayTypeModel) CollectionsKt___CollectionsKt.v0(playTypeConfigList, 0);
        }
        if (v.e(str, TabEnum.TAB_PLAY.getTabCode())) {
            for (Object obj2 : A0()) {
                if (((PlayTypeModel) obj2).getHasSelected()) {
                    obj = obj2;
                    break;
                }
            }
            return (PlayTypeModel) obj;
        }
        if (!v.e(str, TabEnum.TAB_GAME.getTabCode())) {
            return null;
        }
        for (Object obj3 : z0()) {
            if (((PlayTypeModel) obj3).getHasSelected()) {
                obj = obj3;
                break;
            }
        }
        return (PlayTypeModel) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r1(CreateChatRoomNewActivity this$0, CreateRoomModel createRoomModel) {
        if (PatchProxy.proxy(new Object[]{this$0, createRoomModel}, null, changeQuickRedirect, true, 97, new Class[]{CreateChatRoomNewActivity.class, CreateRoomModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        this$0.K0(createRoomModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int s0() {
        Integer playTypeCode;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 42, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        PlayTypeModel playTypeModelR0 = r0();
        if (playTypeModelR0 == null || (playTypeCode = playTypeModelR0.getPlayTypeCode()) == null) {
            return 0;
        }
        return playTypeCode.intValue();
    }

    private final void s1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 37, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        B1();
        v1();
        z1();
        q1();
        o1();
        t1();
        x1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Integer t0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 43, new Class[0], Integer.class);
        if (patchProxyResultProxy.isSupported) {
            return (Integer) patchProxyResultProxy.result;
        }
        PlayTypeModel playTypeModelR0 = r0();
        if (playTypeModelR0 != null) {
            return playTypeModelR0.getTechType();
        }
        return null;
    }

    private final void t1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 62, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        J0().e().observe(this, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.createroom.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                CreateChatRoomNewActivity.u1(this.f130788a, (RandomRecBean) obj);
            }
        });
    }

    private final String u0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 77, new Class[0], String.class);
        return patchProxyResultProxy.isSupported ? (String) patchProxyResultProxy.result : getBinding().f131041l.getRoomName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u1(CreateChatRoomNewActivity this$0, RandomRecBean randomRecBean) {
        String recRoomName;
        if (PatchProxy.proxy(new Object[]{this$0, randomRecBean}, null, changeQuickRedirect, true, 99, new Class[]{CreateChatRoomNewActivity.class, RandomRecBean.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        if (randomRecBean != null) {
            String str = "";
            if (this$0.hasClickRandomRecName && (recRoomName = randomRecBean.getRecRoomName()) != null) {
                str = recRoomName;
            }
            this$0.changeTitle = str;
            this$0.getBinding().f131041l.setRoomName(randomRecBean.getRecRoomName());
            CreateRoomPageRoomInfoView createRoomPageRoomInfoView = this$0.getBinding().f131041l;
            v.i(createRoomPageRoomInfoView, "binding.roomInfoContainer");
            CreateRoomPageRoomInfoView.setWarmContentTv$default(createRoomPageRoomInfoView, false, null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CreateChatRoomPlayTypeAdapter v0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], CreateChatRoomPlayTypeAdapter.class);
        return patchProxyResultProxy.isSupported ? (CreateChatRoomPlayTypeAdapter) patchProxyResultProxy.result : (CreateChatRoomPlayTypeAdapter) this.gameTypeAdapter.getValue();
    }

    private final void v1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 58, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        J0().h().observe(this, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.createroom.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                CreateChatRoomNewActivity.w1(this.f130798a, (RoomConfigListModel) obj);
            }
        });
    }

    private final String w0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 69, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        String str = this.source;
        int iHashCode = str.hashCode();
        if (iHashCode != -2095917017) {
            if (iHashCode != -1119695228) {
                if (iHashCode == 429094390 && str.equals("SQUARE#PUBLISHER")) {
                    return "SQUARE:CREATE_ROOM";
                }
            } else if (str.equals("PLANET#ROOMLIST")) {
                return "PLANET:CREATE_ROOM";
            }
        } else if (str.equals("CHATGROUP#BOTTOM")) {
            return "CHATGROUP:CREATE_ROOM";
        }
        String str2 = this.joinCode;
        if (str2 == null || str2.length() == 0) {
            return ag.b.a("CREATE_ROOM");
        }
        String str3 = this.joinCode;
        v.g(str3);
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x0072  */
    public static final void w1(CreateChatRoomNewActivity this$0, RoomConfigListModel roomConfigListModel) {
        List<PlayTypeModel> playTypeConfigList;
        Object next;
        TabConfigData tabConfigData;
        Object next2;
        TabConfigData tabConfigData2;
        if (PatchProxy.proxy(new Object[]{this$0, roomConfigListModel}, null, changeQuickRedirect, true, 95, new Class[]{CreateChatRoomNewActivity.class, RoomConfigListModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        if (roomConfigListModel != null) {
            this$0.configModel = roomConfigListModel;
            this$0.getBinding().f131041l.setRoomConfigListMode(roomConfigListModel);
            this$0.g0();
            List<TabConfigData> listG = roomConfigListModel.g();
            List<PlayTypeModel> playTypeConfigList2 = null;
            if (listG != null) {
                Iterator<T> it = listG.iterator();
                do {
                    if (!it.hasNext()) {
                        next2 = null;
                        break;
                    } else {
                        next2 = it.next();
                        tabConfigData2 = (TabConfigData) next2;
                    }
                } while (!v.e(tabConfigData2 != null ? tabConfigData2.getTabCode() : null, TabEnum.TAB_PLAY.getTabCode()));
                TabConfigData tabConfigData3 = (TabConfigData) next2;
                if (tabConfigData3 != null) {
                    playTypeConfigList = tabConfigData3.getPlayTypeConfigList();
                } else {
                    playTypeConfigList = null;
                }
            } else {
                playTypeConfigList = null;
            }
            this$0.k0(playTypeConfigList);
            List<TabConfigData> listG2 = roomConfigListModel.g();
            if (listG2 != null) {
                Iterator<T> it2 = listG2.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it2.next();
                        tabConfigData = (TabConfigData) next;
                    }
                } while (!v.e(tabConfigData != null ? tabConfigData.getTabCode() : null, TabEnum.TAB_GAME.getTabCode()));
                TabConfigData tabConfigData4 = (TabConfigData) next;
                if (tabConfigData4 != null) {
                    playTypeConfigList2 = tabConfigData4.getPlayTypeConfigList();
                }
            }
            this$0.h0(playTypeConfigList2);
            this$0.f0();
            this$0.l1(roomConfigListModel.h());
            this$0.N1();
            this$0.Q1(Integer.valueOf(this$0.s0()));
            this$0.m0();
            this$0.e0();
            boolean z11 = this$0.s0() == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154997v.getId();
            this$0.getBinding().f131041l.setShowOnlyFriendOption(z11);
            this$0.getBinding().f131041l.q(z11);
        }
    }

    private final l0 x0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 12, new Class[0], l0.class);
        return patchProxyResultProxy.isSupported ? (l0) patchProxyResultProxy.result : (l0) this.keyboardUtil.getValue();
    }

    private final void x1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 63, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        J0().i().observe(this, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.createroom.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                CreateChatRoomNewActivity.y1(this.f130800a, (RoomLowQualityBean) obj);
            }
        });
    }

    private final int y0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 75, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        String str = this.defaultDisplayTabCode;
        boolean z11 = true;
        String str2 = !(str == null || str.length() == 0) ? this.defaultDisplayTabCode : this.defaultTabCode;
        if (!(str2 == null || str2.length() == 0)) {
            TabEnum tabEnum = TabEnum.TAB_PLAY;
            if (v.e(str2, tabEnum.getTabCode())) {
                return J1(tabEnum.getTabCode());
            }
            TabEnum tabEnum2 = TabEnum.TAB_KTV;
            if (v.e(str2, tabEnum2.getTabCode())) {
                return J1(tabEnum2.getTabCode());
            }
            TabEnum tabEnum3 = TabEnum.TAB_GAME;
            if (v.e(str2, tabEnum3.getTabCode()) && k30.b.f229063a.a()) {
                return J1(tabEnum3.getTabCode());
            }
            return 0;
        }
        if (v.e(this.source, "MAIN_HALL#TAB_MUSIC")) {
            return J1(TabEnum.TAB_KTV.getTabCode());
        }
        RoomBean roomBean = this.mRoomBean;
        String lastPlayTypeMappingTabCode = roomBean != null ? roomBean.getLastPlayTypeMappingTabCode() : null;
        if (lastPlayTypeMappingTabCode != null && lastPlayTypeMappingTabCode.length() != 0) {
            z11 = false;
        }
        if (z11) {
            return 0;
        }
        TabEnum tabEnum4 = TabEnum.TAB_PLAY;
        if (v.e(lastPlayTypeMappingTabCode, tabEnum4.getTabCode())) {
            return J1(tabEnum4.getTabCode());
        }
        TabEnum tabEnum5 = TabEnum.TAB_KTV;
        if (v.e(lastPlayTypeMappingTabCode, tabEnum5.getTabCode())) {
            return J1(tabEnum5.getTabCode());
        }
        TabEnum tabEnum6 = TabEnum.TAB_GAME;
        if (v.e(lastPlayTypeMappingTabCode, tabEnum6.getTabCode()) && k30.b.f229063a.a()) {
            return J1(tabEnum6.getTabCode());
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y1(CreateChatRoomNewActivity this$0, RoomLowQualityBean roomLowQualityBean) {
        if (PatchProxy.proxy(new Object[]{this$0, roomLowQualityBean}, null, changeQuickRedirect, true, 100, new Class[]{CreateChatRoomNewActivity.class, RoomLowQualityBean.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(this$0, "this$0");
        if (roomLowQualityBean != null) {
            this$0.M1(roomLowQualityBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<PlayTypeModel> z0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : (List) this.mGameTypeList.getValue();
    }

    private final void z1() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 59, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        J0().k().observe(this, new Observer() { // from class: cn.soulapp.cpnt_voiceparty.createroom.o
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                CreateChatRoomNewActivity.A1(this.f130808a, (RoomTypeModel) obj);
            }
        });
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingActivity
    public void _$_clearFindViewByIdCache() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 86, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        this.S.clear();
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingActivity
    @Nullable
    public View _$_findCachedViewById(int i11) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 87, new Class[]{Integer.TYPE}, View.class);
        if (patchProxyResultProxy.isSupported) {
            return (View) patchProxyResultProxy.result;
        }
        Map<Integer, View> map = this.S;
        View view = map.get(Integer.valueOf(i11));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i11);
        if (viewFindViewById == null) {
            return null;
        }
        map.put(Integer.valueOf(i11), viewFindViewById);
        return viewFindViewById;
    }

    @Override // android.app.Activity
    public void finish() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 80, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.finish();
        overridePendingTransition(0, R.anim.push_top_out);
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingActivity
    public void initView() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 17, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        List<String> pageIdsIgnoreBackApp = ParamsUtils.getPageIdsIgnoreBackApp();
        if (!(pageIdsIgnoreBackApp == null || pageIdsIgnoreBackApp.isEmpty())) {
            this.mLastPageId = pageIdsIgnoreBackApp.get(pageIdsIgnoreBackApp.size() - 1);
        }
        O0();
        initViewPager();
        Y0();
        W0();
        X0();
        RecyclerView recyclerView = getBinding().f131040k;
        v.i(recyclerView, "binding.playTypeRv");
        U0(recyclerView, E0(), A0());
        RecyclerView recyclerView2 = getBinding().f131038i;
        v.i(recyclerView2, "binding.gameTypeRv");
        U0(recyclerView2, v0(), z0());
        e1();
        s1();
        S0();
        R0();
        L0();
        int iY0 = y0();
        if (iY0 > 0) {
            m1(iY0);
        } else {
            this.isFirstTabSwitch = false;
        }
    }

    @Override // cn.soulapp.android.client.component.middle.platform.base.BaseBindingActivity, cn.soulapp.lib.basic.mvp.MartianActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        if (PatchProxy.proxy(new Object[]{bundle}, this, changeQuickRedirect, false, 13, new Class[]{Bundle.class}, Void.TYPE).isSupported) {
            return;
        }
        super.onCreate(bundle);
        overridePendingTransition(R$anim.f4797e, 0);
        setSwipeBackEnable(false);
    }

    @Override // cn.soulapp.lib.basic.mvp.MartianActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 81, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onDestroy();
        TabLayoutMediator tabLayoutMediator = this.tabLayoutMediator;
        if (tabLayoutMediator != null) {
            tabLayoutMediator.detach();
        }
        this.tabLayoutMediator = null;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 14, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        super.onResume();
        cn.soul.insight.log.core.a.f15353b.iOnlyPrint("create", "上一个页面" + this.mLastPageId);
        L1();
    }

    @Override // cn.soulapp.cpnt_voiceparty.createroom.ui.ICreateRoomInfoListener
    public void roomNameEditTextChanged(@NotNull String content) {
        if (PatchProxy.proxy(new Object[]{content}, this, changeQuickRedirect, false, 82, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(content, "content");
        n1();
    }

    @Override // cn.soulapp.cpnt_voiceparty.createroom.ui.ICreateRoomInfoListener
    public void roomPrivateBtnClick() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 83, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        k30.c.f229065a.i(q0(), true);
    }

    @Override // cn.soulapp.cpnt_voiceparty.createroom.ui.ICreateRoomInfoListener
    public void roomPrivateStatusChanged(int i11) {
        this.privateStatus = i11;
    }
}