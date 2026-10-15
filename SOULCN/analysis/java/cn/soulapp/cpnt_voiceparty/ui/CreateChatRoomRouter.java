package cn.soulapp.cpnt_voiceparty.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.viewbinding.ViewBinding;
import cn.android.lib.soul_interface.audio.IAudioService;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.middle.platform.newui.UnifyUIStyleManager;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.android.service.audio_service.HolderType;
import cn.soul.lib_dialog.SoulDialog;
import cn.soul.lib_dialog.util.SoulDialogType;
import cn.soulapp.android.chatroom.R$layout;
import cn.soulapp.android.chatroom.bean.CreateChatRoomPreCheckBean;
import cn.soulapp.android.chatroom.bean.CreateRoomModel;
import cn.soulapp.android.chatroom.bean.GroupBaseResultBean;
import cn.soulapp.android.chatroom.bean.RoomLimitConfig;
import cn.soulapp.android.chatroom.bean.RoomerRole;
import cn.soulapp.android.chatroom.bean.SpecialWordModel;
import cn.soulapp.android.chatroom.bean.UserUsageBean;
import cn.soulapp.android.chatroom.utils.RoomChatEventUtilsV2;
import cn.soulapp.android.client.component.middle.platform.base.BaseBindingActivity;
import cn.soulapp.android.client.component.middle.platform.base.dialog.LoadingDialog;
import cn.soulapp.android.client.component.middle.platform.utils.application.AppListenerHelper;
import cn.soulapp.android.client.component.middle.platform.utils.l2;
import cn.soulapp.android.client.component.middle.platform.utils.mediacall.VoiceRtcEngine;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.android.lib.common.bean.KeyWordUrl;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.android.lib.common.utils.PathUtil;
import cn.soulapp.android.lib.common.utils.mmkv.SKV;
import cn.soulapp.android.lib.common.view.CommonGuideDialog;
import cn.soulapp.android.lib.common.view.OnDialogViewClick;
import cn.soulapp.cpnt_voiceparty.ChatRoomModule;
import cn.soulapp.cpnt_voiceparty.R$id;
import cn.soulapp.cpnt_voiceparty.R$string;
import cn.soulapp.cpnt_voiceparty.bean.MsgBizParam;
import cn.soulapp.cpnt_voiceparty.bean.QuickJoinRoomBean;
import cn.soulapp.cpnt_voiceparty.bean.QuickJoinRoomConfigBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomBean;
import cn.soulapp.cpnt_voiceparty.bean.RoomCreateCallbackState;
import cn.soulapp.cpnt_voiceparty.bean.RoomCreateParams;
import cn.soulapp.cpnt_voiceparty.createroom.CreateChatRoomNewActivity;
import cn.soulapp.cpnt_voiceparty.soulhouse.ZoomOutManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.QuickJoinRoomDialog;
import cn.soulapp.cpnt_voiceparty.util.AbnormalExitChecker;
import cn.soulapp.cpnt_voiceparty.util.AnyExtKt;
import cn.soulapp.cpnt_voiceparty.util.SwitchUtil;
import cn.soulapp.lib.executors.LightExecutor;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.ss.ttm.player.C;
import com.ss.ttm.player.MediaPlayer;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import com.vanniktech.emoji.TextViewFixTouchConsume;
import com.walid.rxretrofit.HttpSubscriber;
import com.walid.rxretrofit.interfaces.SimpleHttpCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: CreateChatRoomRouter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(bv = {}, d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 r2\u00020\u0001:\u0001]B\u0007¢\u0006\u0004\bp\u0010qJ½\u0001\u0010\u0016\u001a\u00020\u00112\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J½\u0001\u0010\u001b\u001a\u00020\u00112\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u001b\u0010\u0017J\n\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002J\u0094\u0001\u0010\u001e\u001a\u00020\u00112\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0002J\u0012\u0010\u001f\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010 \u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0096\u0001\u0010$\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\b2\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\b\b\u0002\u0010\u0005\u001a\u00020\u00042\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J$\u0010*\u001a\u00020\u00112\b\u0010%\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010'\u001a\u00020&2\u0006\u0010)\u001a\u00020(H\u0002J¤\u0001\u0010.\u001a\u00020\u00112\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0002JV\u0010/\u001a\u00020\u00112\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0003J\u0080\u0001\u00108\u001a\u00020\u00112\u0006\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u00020\u00042\u0016\u00105\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\b\u0001\u0012\u00020403022\n\b\u0002\u00107\u001a\u0004\u0018\u0001062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002JX\u0010:\u001a\u00020\u00112\u0006\u00109\u001a\u0002002\u0006\u0010\u0005\u001a\u00020\u00042\b\u00107\u001a\u0004\u0018\u0001062*\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J®\u0001\u0010=\u001a\u00020\u00112\u0006\u0010<\u001a\u00020;2\b\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010-\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0002J \u0010B\u001a\u0004\u0018\u00010A2\u0006\u0010>\u001a\u00020\u00042\f\u0010@\u001a\b\u0012\u0004\u0012\u00020?0\"H\u0002J5\u0010F\u001a\u00020\u00112\b\u0010D\u001a\u0004\u0018\u00010C2\b\u0010E\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\bF\u0010GJ\u0095\u0001\u0010J\u001a\u00020\u00112\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010H\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010I\u001a\u0004\u0018\u00010C2,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\bJ\u0010KJ<\u0010L\u001a\u00020\u00112\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010H\u001a\u00020\u00022\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010J\u0086\u0001\u0010Q\u001a\u00020\u00112\b\u0010M\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\u0016\b\u0002\u0010P\u001a\u0010\u0012\u0004\u0012\u00020O\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010J\u008a\u0001\u0010U\u001a\u00020\u00112\u0006\u0010R\u001a\u00020\u00042\b\u0010S\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010H\u001a\u00020\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010T\u001a\u0004\u0018\u00010\u0004JÒ\u0001\u0010[\u001a\u00020\u00112\u0006\u0010V\u001a\u00020C2\u0006\u0010W\u001a\u00020C2\u0006\u0010X\u001a\u00020\u00042\b\u0010Y\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010N\u001a\u00020C2\n\b\u0002\u0010Z\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2,\b\u0002\u0010\u000f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u000e2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0007R\u0018\u0010_\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0014\u0010b\u001a\u00020C8\u0002X\u0082D¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010R\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010S\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010dR\u0018\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010E\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010dR#\u0010o\u001a\n j*\u0004\u0018\u00010i0i8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bk\u0010l\u001a\u0004\bm\u0010n¨\u0006s"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/ui/CreateChatRoomRouter;", "", "", "isSlideRoom", "", SocialConstants.PARAM_SOURCE, "Lcn/soulapp/cpnt_voiceparty/bean/QuickJoinRoomConfigBean;", "configBean", "Lcn/soulapp/cpnt_voiceparty/bean/RoomCreateParams;", "roomCreateParams", "chatGroupId", "joinCode", "isQuickCreateRoom", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "extParams", "Lkotlin/Function1;", "Lkotlin/w;", "callBack", "activityName", "Lcn/soulapp/cpnt_voiceparty/bean/g;", "intentData", "C", "(ZLjava/lang/String;Lcn/soulapp/cpnt_voiceparty/bean/QuickJoinRoomConfigBean;Lcn/soulapp/cpnt_voiceparty/bean/RoomCreateParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcn/soulapp/cpnt_voiceparty/bean/g;)V", "Lcn/soulapp/android/chatroom/bean/UserUsageBean;", "bean", "X", ExifInterface.LONGITUDE_EAST, "Landroidx/fragment/app/FragmentManager;", "K", "v", "P", "J", "L", "", "functionCodeList", "s", "msg", "", "delayTime", "Landroid/app/Application;", "applicationContext", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcn/soulapp/android/chatroom/bean/RoomerRole;", "roomerRole", "showCountDown", ExifInterface.GPS_DIRECTION_TRUE, "O", "Lcn/soulapp/android/chatroom/bean/RoomLimitConfig;", "it", "Ljava/lang/Class;", "Lcn/soulapp/android/client/component/middle/platform/base/BaseBindingActivity;", "Landroidx/viewbinding/ViewBinding;", "clz", "Lcn/soulapp/cpnt_voiceparty/bean/RoomBean;", "roomBean", "Y", "limitConfig", "Q", "Landroid/app/Dialog;", "dialog", "R", "content", "Lcn/soulapp/android/lib/common/bean/KeyWordUrl;", "keyWordUrls", "Landroid/text/SpannableStringBuilder;", "M", "", "defaultClassifyCode", "defaultPlayType", "F", "(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V", "needCheckConflictInRoom", "sceneCode", "H", "(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/HashMap;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V", "B", "sceneId", "playType", "Lcn/soulapp/cpnt_voiceparty/bean/f;", "createCb", "z", "groupId", "tagName", "openSource", "x", "classifyId", "topicId", "roomName", "backgroundId", "mFmCode", "r", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "tvConfirm", ExpcompatUtils.COMPAT_VALUE_780, "I", "THREE_SEC", "c", "Ljava/lang/String;", "d", l11l11I1111l.l111l1111lIl, "Ljava/lang/Integer;", "f", "Lcn/soulapp/android/client/component/middle/platform/base/dialog/LoadingDialog;", "kotlin.jvm.PlatformType", "g", "Lkotlin/Lazy;", "N", "()Lcn/soulapp/android/client/component/middle/platform/base/dialog/LoadingDialog;", "soulLoadingDialog", AppAgent.CONSTRUCT, "()V", "h", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CreateChatRoomRouter {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private static final Set<String> f160207i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    private static final Set<Integer> f160208j;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private TextView tvConfirm;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private Integer defaultClassifyCode;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String defaultPlayType;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final int THREE_SEC = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String groupId = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String tagName = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy soulLoadingDialog = kotlin.j.b(CreateChatRoomRouter$soulLoadingDialog$2.INSTANCE);

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: CreateChatRoomRouter.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\"\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001c\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\fR\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\fR\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\fR\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\fR\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\fR\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\fR\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\fR\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\fR\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\fR\u0014\u0010\u0018\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\fR\u0014\u0010\u0019\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\fR\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00070\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001c¨\u0006 "}, d2 = {"Lcn/soulapp/cpnt_voiceparty/ui/CreateChatRoomRouter$a;", "", "", "sceneId", "playType", "", ExpcompatUtils.COMPAT_VALUE_780, "", "ACTION_TYPE_CREATE", "I", "ACTION_TYPE_JOIN", "CREATE_PARAMS_SCENE_CEREMONY", "Ljava/lang/String;", "CREATE_PARAMS_SCENE_CREATE_ROOM_TASK", "CREATE_PARAMS_SCENE_GAME_MATCH", "CREATE_PARAMS_SCENE_HIGHLIGHT_TAB", "CREATE_PARAMS_SCENE_HIGHLIGHT_TAB_SHARE", "CREATE_PARAMS_SCENE_PRIVATE_AIGC_CREATE", "CREATE_PARAMS_SCENE_PRIVATE_CHAT_ANCHOR", "CREATE_PARAMS_SCENE_PRIVATE_CHAT_MORE", "CREATE_PARAMS_SCENE_PRIVATE_CHAT_PLAY_TOGETHER", "CREATE_PARAMS_SCENE_PRIVATE_CHAT_QUICK_GAME", "CREATE_PARAMS_SCENE_SONG_LIST_SHARE", "EXT_CREATE_PRIVATE_ROOM", "EXT_CREATE_ROOM_TYPE", "JOIN_CODE_PLUS_PLAY_TOGETHER", "", "QUICK_ENTRY_GAME_PLAY_TYPES", "Ljava/util/Set;", "QUICK_ENTRY_SCENE_IDS", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.q qVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean b(String sceneId, String playType) {
            Integer numM;
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{sceneId, playType}, this, changeQuickRedirect, false, 2, new Class[]{String.class, String.class}, Boolean.TYPE);
            if (patchProxyResultProxy.isSupported) {
                return ((Boolean) patchProxyResultProxy.result).booleanValue();
            }
            if (!cn.soulapp.cpnt_voiceparty.util.e.f162158a.I() || sceneId == null || !CreateChatRoomRouter.f160207i.contains(sceneId) || playType == null || (numM = kotlin.text.p.m(playType)) == null) {
                return false;
            }
            return CreateChatRoomRouter.f160208j.contains(Integer.valueOf(numM.intValue()));
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomRouter.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/ui/CreateChatRoomRouter$b", "Lcom/walid/rxretrofit/interfaces/SimpleHttpCallback;", "Lcn/soulapp/android/chatroom/bean/RoomerRole;", "roomerRole", "Lkotlin/w;", "a", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class b extends SimpleHttpCallback<RoomerRole> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RoomCreateParams f160216a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CreateChatRoomRouter f160217b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f160218c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ QuickJoinRoomConfigBean f160219d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f160220e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f160221f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ HashMap<String, Object> f160222g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ cn.soulapp.cpnt_voiceparty.bean.g f160223h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, kotlin.w> f160224i;

        /* JADX WARN: Multi-variable type inference failed */
        b(RoomCreateParams roomCreateParams, CreateChatRoomRouter createChatRoomRouter, String str, QuickJoinRoomConfigBean quickJoinRoomConfigBean, String str2, String str3, HashMap<String, Object> map, cn.soulapp.cpnt_voiceparty.bean.g gVar, Function1<? super Boolean, kotlin.w> function1) {
            this.f160216a = roomCreateParams;
            this.f160217b = createChatRoomRouter;
            this.f160218c = str;
            this.f160219d = quickJoinRoomConfigBean;
            this.f160220e = str2;
            this.f160221f = str3;
            this.f160222g = map;
            this.f160223h = gVar;
            this.f160224i = function1;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RoomerRole roomerRole) throws JSONException {
            Function1<cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> function1;
            if (PatchProxy.proxy(new Object[]{roomerRole}, this, changeQuickRedirect, false, 2, new Class[]{RoomerRole.class}, Void.TYPE).isSupported) {
                return;
            }
            if (roomerRole == null) {
                RoomCreateParams roomCreateParams = this.f160216a;
                if (roomCreateParams == null || (function1 = roomCreateParams.get_createCb()) == null) {
                    return;
                }
                function1.invoke(new cn.soulapp.cpnt_voiceparty.bean.f());
                return;
            }
            if (roomerRole.noticeShow && !SKV.single().getBoolean("role_dialog_confirm_clicked", false)) {
                this.f160217b.T(roomerRole, true, this.f160218c, this.f160219d, this.f160216a, this.f160220e, this.f160221f, this.f160222g, this.f160223h, this.f160224i);
                return;
            }
            QuickJoinRoomConfigBean quickJoinRoomConfigBean = this.f160219d;
            if (quickJoinRoomConfigBean == null) {
                RoomCreateParams roomCreateParams2 = this.f160216a;
                if (roomCreateParams2 != null) {
                    CreateChatRoomRouter.u(this.f160217b, roomCreateParams2, this.f160224i, this.f160218c, null, this.f160220e, this.f160222g, this.f160221f, this.f160223h, 8, null);
                    return;
                } else {
                    this.f160217b.O(this.f160218c, this.f160220e, this.f160222g, this.f160223h);
                    return;
                }
            }
            Integer classifyCode = quickJoinRoomConfigBean.getClassifyCode();
            int iIntValue = classifyCode != null ? classifyCode.intValue() : 0;
            String topic = this.f160219d.getTopic();
            if (topic == null) {
                topic = "";
            }
            String str = topic;
            String backgroundId = this.f160219d.getBackgroundId();
            Integer playType = this.f160219d.getPlayType();
            CreateChatRoomRouter.t(this.f160217b, iIntValue, 0, str, backgroundId, playType != null ? playType.intValue() : 0, null, this.f160221f, this.f160218c, this.f160219d.getFunctionCodeList(), this.f160220e, this.f160224i, null, this.f160222g, this.f160223h, 2080, null);
        }

        @Override // com.walid.rxretrofit.interfaces.SimpleHttpCallback, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            b80.n0.h(str, new Object[0]);
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomRouter.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/ui/CreateChatRoomRouter$c", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RoomCreateParams;", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c extends ty.s<RoomCreateParams> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, kotlin.w> f160225c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function1<cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> f160226d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f160227e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ HashMap<String, Object> f160228f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f160229g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ CreateChatRoomRouter f160230h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ String f160231i;

        /* JADX WARN: Multi-variable type inference failed */
        c(Function1<? super Boolean, kotlin.w> function1, Function1<? super cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> function2, String str, HashMap<String, Object> map, String str2, CreateChatRoomRouter createChatRoomRouter, String str3) {
            this.f160225c = function1;
            this.f160226d = function2;
            this.f160227e = str;
            this.f160228f = map;
            this.f160229g = str2;
            this.f160230h = createChatRoomRouter;
            this.f160231i = str3;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RoomCreateParams roomCreateParams) throws JSONException {
            String joinCode;
            if (PatchProxy.proxy(new Object[]{roomCreateParams}, this, changeQuickRedirect, false, 2, new Class[]{RoomCreateParams.class}, Void.TYPE).isSupported) {
                return;
            }
            if (roomCreateParams == null) {
                Function1<Boolean, kotlin.w> function1 = this.f160225c;
                if (function1 != null) {
                    function1.invoke(Boolean.FALSE);
                }
                Function1<cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> function2 = this.f160226d;
                if (function2 != null) {
                    function2.invoke(new cn.soulapp.cpnt_voiceparty.bean.f());
                    return;
                }
                return;
            }
            String str = this.f160227e;
            if (kotlin.jvm.internal.v.e(str, "1")) {
                joinCode = "CHATROOM_DETAIL:INVITATION:CEREROOM";
            } else {
                joinCode = kotlin.jvm.internal.v.e(str, Constants.VIA_REPORT_TYPE_DATALINE) ? "CHATDETAIL:MORE:PLAY:CREATE_ROOM" : roomCreateParams.getJoinCode();
            }
            roomCreateParams.set_joinCode(joinCode);
            roomCreateParams.set_createCb(this.f160226d);
            String str2 = this.f160227e;
            if (kotlin.jvm.internal.v.e(str2, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ)) {
                HashMap<String, Object> map = this.f160228f;
                Object obj = map != null ? map.get("playType") : null;
                String str3 = obj instanceof String ? (String) obj : null;
                roomCreateParams.setPlayType(str3 != null ? Integer.valueOf(cn.soulapp.lib.utils.ext.n.d(str3)) : null);
            } else if (kotlin.jvm.internal.v.e(str2, Constants.VIA_REPORT_TYPE_DATALINE)) {
                HashMap<String, Object> map2 = this.f160228f;
                Object obj2 = map2 != null ? map2.get("playType") : null;
                String str4 = obj2 instanceof String ? (String) obj2 : null;
                if (str4 != null) {
                    Integer numValueOf = Integer.valueOf(cn.soulapp.lib.utils.ext.n.d(str4));
                    Integer num = numValueOf.intValue() > 0 ? numValueOf : null;
                    if (num != null) {
                        roomCreateParams.setPlayType(Integer.valueOf(num.intValue()));
                    }
                }
            }
            if (CreateChatRoomRouter.INSTANCE.b(this.f160227e, this.f160229g)) {
                k40.a.f229076a.l();
            }
            String createRoomSource = roomCreateParams.getCreateRoomSource();
            if (createRoomSource == null) {
                createRoomSource = "";
            }
            CreateChatRoomRouter.D(this.f160230h, false, createRoomSource, null, roomCreateParams, this.f160231i, null, null, this.f160228f, this.f160225c, null, null, 1637, null);
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
            Function1<Boolean, kotlin.w> function1 = this.f160225c;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            Function1<cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> function2 = this.f160226d;
            if (function2 != null) {
                function2.invoke(new cn.soulapp.cpnt_voiceparty.bean.f());
            }
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomRouter.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/ui/CreateChatRoomRouter$d", "Lcom/walid/rxretrofit/interfaces/SimpleHttpCallback;", "Lcn/soulapp/android/chatroom/bean/CreateChatRoomPreCheckBean;", "data", "Lkotlin/w;", "a", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class d extends SimpleHttpCallback<CreateChatRoomPreCheckBean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RoomCreateParams f160241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CreateChatRoomRouter f160242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f160243c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ QuickJoinRoomConfigBean f160244d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f160245e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f160246f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ HashMap<String, Object> f160247g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ cn.soulapp.cpnt_voiceparty.bean.g f160248h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, kotlin.w> f160249i;

        /* JADX WARN: Multi-variable type inference failed */
        d(RoomCreateParams roomCreateParams, CreateChatRoomRouter createChatRoomRouter, String str, QuickJoinRoomConfigBean quickJoinRoomConfigBean, String str2, String str3, HashMap<String, Object> map, cn.soulapp.cpnt_voiceparty.bean.g gVar, Function1<? super Boolean, kotlin.w> function1) {
            this.f160241a = roomCreateParams;
            this.f160242b = createChatRoomRouter;
            this.f160243c = str;
            this.f160244d = quickJoinRoomConfigBean;
            this.f160245e = str2;
            this.f160246f = str3;
            this.f160247g = map;
            this.f160248h = gVar;
            this.f160249i = function1;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable CreateChatRoomPreCheckBean createChatRoomPreCheckBean) {
            Function1<cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> function1;
            if (PatchProxy.proxy(new Object[]{createChatRoomPreCheckBean}, this, changeQuickRedirect, false, 2, new Class[]{CreateChatRoomPreCheckBean.class}, Void.TYPE).isSupported) {
                return;
            }
            if (createChatRoomPreCheckBean != null && createChatRoomPreCheckBean.getRoomCreateQualification()) {
                RoomCreateParams roomCreateParams = this.f160241a;
                if (roomCreateParams != null) {
                    this.f160242b.v(this.f160243c, this.f160244d, roomCreateParams, this.f160245e, this.f160246f, this.f160247g, this.f160248h, this.f160249i);
                    return;
                } else {
                    CreateChatRoomRouter.w(this.f160242b, this.f160243c, this.f160244d, null, this.f160245e, this.f160246f, this.f160247g, this.f160248h, this.f160249i, 4, null);
                    return;
                }
            }
            SoulRouter.j().e(createChatRoomPreCheckBean != null ? createChatRoomPreCheckBean.getIdentifyUrl() : null).d();
            Function1<Boolean, kotlin.w> function2 = this.f160249i;
            if (function2 != null) {
                function2.invoke(Boolean.FALSE);
            }
            RoomCreateParams roomCreateParams2 = this.f160241a;
            if (roomCreateParams2 == null || (function1 = roomCreateParams2.get_createCb()) == null) {
                return;
            }
            cn.soulapp.cpnt_voiceparty.bean.f fVar = new cn.soulapp.cpnt_voiceparty.bean.f();
            fVar.c(RoomCreateCallbackState.TO_REAL_NAME_VERIFY);
            function1.invoke(fVar);
        }

        @Override // com.walid.rxretrofit.interfaces.SimpleHttpCallback, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            Function1<cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> function1;
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            b80.n0.h("当前网络不可用", new Object[0]);
            Function1<Boolean, kotlin.w> function2 = this.f160249i;
            if (function2 != null) {
                function2.invoke(Boolean.FALSE);
            }
            RoomCreateParams roomCreateParams = this.f160241a;
            if (roomCreateParams == null || (function1 = roomCreateParams.get_createCb()) == null) {
                return;
            }
            function1.invoke(new cn.soulapp.cpnt_voiceparty.bean.f());
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomRouter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\t"}, d2 = {"cn/soulapp/cpnt_voiceparty/ui/CreateChatRoomRouter$e", "Lv10/e;", "Landroid/view/View;", "widget", "Lkotlin/w;", "onClick", "Landroid/text/TextPaint;", "ds", "updateDrawState", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class e extends v10.e {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ KeyWordUrl f160273b;

        e(KeyWordUrl keyWordUrl) {
            this.f160273b = keyWordUrl;
        }

        @Override // v10.e, android.text.style.ClickableSpan
        public void onClick(@NotNull View widget) {
            if (PatchProxy.proxy(new Object[]{widget}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(widget, "widget");
            SoulRouter.j().r("/H5/H5Activity").A("url", ih.a.b(this.f160273b.url, null)).o("isShare", false).d();
        }

        @Override // v10.e, android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NotNull TextPaint ds2) {
            if (PatchProxy.proxy(new Object[]{ds2}, this, changeQuickRedirect, false, 3, new Class[]{TextPaint.class}, Void.TYPE).isSupported) {
                return;
            }
            kotlin.jvm.internal.v.j(ds2, "ds");
            super.updateDrawState(ds2);
            ds2.setColor(Color.parseColor(MsgBizParam.HIGHLIGHT_COLOR));
        }
    }

    /* JADX INFO: compiled from: CreateChatRoomRouter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/ui/CreateChatRoomRouter$f", "Lcom/walid/rxretrofit/interfaces/SimpleHttpCallback;", "Lcn/soulapp/android/chatroom/bean/RoomLimitConfig;", "t", "Lkotlin/w;", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class f extends SimpleHttpCallback<RoomLimitConfig> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f160275b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f160276c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ HashMap<String, Object> f160277d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ cn.soulapp.cpnt_voiceparty.bean.g f160278e;

        /* JADX INFO: compiled from: CreateChatRoomRouter.kt */
        @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/ui/CreateChatRoomRouter$f$a", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RoomBean;", "model", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
        public static final class a extends ty.s<RoomBean> {
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ CreateChatRoomRouter f160279c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ RoomLimitConfig f160280d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f160281e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f160282f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ HashMap<String, Object> f160283g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ cn.soulapp.cpnt_voiceparty.bean.g f160284h;

            a(CreateChatRoomRouter createChatRoomRouter, RoomLimitConfig roomLimitConfig, String str, String str2, HashMap<String, Object> map, cn.soulapp.cpnt_voiceparty.bean.g gVar) {
                this.f160279c = createChatRoomRouter;
                this.f160280d = roomLimitConfig;
                this.f160281e = str;
                this.f160282f = str2;
                this.f160283g = map;
                this.f160284h = gVar;
            }

            @Override // com.walid.rxretrofit.interfaces.IHttpCallback
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void onNext(@Nullable RoomBean roomBean) {
                if (PatchProxy.proxy(new Object[]{roomBean}, this, changeQuickRedirect, false, 2, new Class[]{RoomBean.class}, Void.TYPE).isSupported) {
                    return;
                }
                this.f160279c.Y(this.f160280d, this.f160281e, CreateChatRoomNewActivity.class, roomBean, this.f160282f, this.f160283g, this.f160284h);
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
                CreateChatRoomRouter.Z(this.f160279c, this.f160280d, this.f160281e, CreateChatRoomNewActivity.class, null, this.f160282f, this.f160283g, this.f160284h, 8, null);
            }
        }

        f(String str, String str2, HashMap<String, Object> map, cn.soulapp.cpnt_voiceparty.bean.g gVar) {
            this.f160275b = str;
            this.f160276c = str2;
            this.f160277d = map;
            this.f160278e = gVar;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RoomLimitConfig roomLimitConfig) {
            if (PatchProxy.proxy(new Object[]{roomLimitConfig}, this, changeQuickRedirect, false, 2, new Class[]{RoomLimitConfig.class}, Void.TYPE).isSupported || roomLimitConfig == null) {
                return;
            }
            CreateChatRoomRouter createChatRoomRouter = CreateChatRoomRouter.this;
            String str = this.f160275b;
            String str2 = this.f160276c;
            HashMap<String, Object> map = this.f160277d;
            cn.soulapp.cpnt_voiceparty.bean.g gVar = this.f160278e;
            if (roomLimitConfig.surplusCreateRoomCount > 0) {
                h30.g.f225309a.l6().subscribeWith(HttpSubscriber.create(new a(createChatRoomRouter, roomLimitConfig, str, str2, map, gVar)));
            } else {
                b80.n0.e(ChatRoomModule.f126959a.g().getText(R$string.C1));
            }
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 29, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
        f160207i = kotlin.collections.z0.k("7", Constants.VIA_REPORT_TYPE_WPA_STATE);
        f160208j = kotlin.collections.z0.k(300001, 100001);
    }

    private final void C(final boolean isSlideRoom, final String source, final QuickJoinRoomConfigBean configBean, final RoomCreateParams roomCreateParams, final String chatGroupId, final String joinCode, final Boolean isQuickCreateRoom, final HashMap<String, Object> extParams, final Function1<? super Boolean, kotlin.w> callBack, final String activityName, final cn.soulapp.cpnt_voiceparty.bean.g intentData) throws JSONException {
        if (PatchProxy.proxy(new Object[]{new Byte(isSlideRoom ? (byte) 1 : (byte) 0), source, configBean, roomCreateParams, chatGroupId, joinCode, isQuickCreateRoom, extParams, callBack, activityName, intentData}, this, changeQuickRedirect, false, 3, new Class[]{Boolean.TYPE, String.class, QuickJoinRoomConfigBean.class, RoomCreateParams.class, String.class, String.class, Boolean.class, HashMap.class, Function1.class, String.class, cn.soulapp.cpnt_voiceparty.bean.g.class}, Void.TYPE).isSupported) {
            return;
        }
        if (SwitchUtil.f162115a.g()) {
            AbnormalExitChecker abnormalExitChecker = AbnormalExitChecker.f161878a;
            if (!abnormalExitChecker.f()) {
                abnormalExitChecker.a(3, new Function1<UserUsageBean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter$doCreateWork$1
                    public static ChangeQuickRedirect changeQuickRedirect;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.w invoke(UserUsageBean userUsageBean) throws JSONException {
                        invoke2(userUsageBean);
                        return kotlin.w.f231958a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable UserUsageBean userUsageBean) throws JSONException {
                        if (PatchProxy.proxy(new Object[]{userUsageBean}, this, changeQuickRedirect, false, 2, new Class[]{UserUsageBean.class}, Void.TYPE).isSupported) {
                            return;
                        }
                        if (userUsageBean != null) {
                            AbnormalExitChecker abnormalExitChecker2 = AbnormalExitChecker.f161878a;
                            if (abnormalExitChecker2.e(userUsageBean) && abnormalExitChecker2.c(userUsageBean)) {
                                this.this$0.X(userUsageBean);
                                Function1<Boolean, kotlin.w> function1 = callBack;
                                if (function1 != null) {
                                    function1.invoke(Boolean.FALSE);
                                    return;
                                }
                                return;
                            }
                        }
                        this.this$0.E(isSlideRoom, source, configBean, roomCreateParams, chatGroupId, joinCode, isQuickCreateRoom, extParams, callBack, activityName, intentData);
                    }
                }, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter$doCreateWork$2
                    public static ChangeQuickRedirect changeQuickRedirect;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.w invoke() throws JSONException {
                        invoke2();
                        return kotlin.w.f231958a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() throws JSONException {
                        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                            return;
                        }
                        this.this$0.E(isSlideRoom, source, configBean, roomCreateParams, chatGroupId, joinCode, isQuickCreateRoom, extParams, callBack, activityName, intentData);
                    }
                });
                return;
            }
        }
        E(isSlideRoom, source, configBean, roomCreateParams, chatGroupId, joinCode, isQuickCreateRoom, extParams, callBack, activityName, intentData);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void D(CreateChatRoomRouter createChatRoomRouter, boolean z11, String str, QuickJoinRoomConfigBean quickJoinRoomConfigBean, RoomCreateParams roomCreateParams, String str2, String str3, Boolean bool, HashMap map, Function1 function1, String str4, cn.soulapp.cpnt_voiceparty.bean.g gVar, int i11, Object obj) throws JSONException {
        createChatRoomRouter.C((i11 & 1) != 0 ? false : z11, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? null : quickJoinRoomConfigBean, (i11 & 8) != 0 ? null : roomCreateParams, (i11 & 16) != 0 ? null : str2, (i11 & 32) != 0 ? null : str3, (i11 & 64) != 0 ? Boolean.FALSE : bool, (i11 & 128) != 0 ? null : map, (i11 & 256) != 0 ? null : function1, (i11 & 512) != 0 ? null : str4, (i11 & 1024) == 0 ? gVar : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(boolean isSlideRoom, String source, QuickJoinRoomConfigBean configBean, RoomCreateParams roomCreateParams, String chatGroupId, String joinCode, Boolean isQuickCreateRoom, HashMap<String, Object> extParams, Function1<? super Boolean, kotlin.w> callBack, String activityName, cn.soulapp.cpnt_voiceparty.bean.g intentData) throws JSONException {
        if (PatchProxy.proxy(new Object[]{new Byte(isSlideRoom ? (byte) 1 : (byte) 0), source, configBean, roomCreateParams, chatGroupId, joinCode, isQuickCreateRoom, extParams, callBack, activityName, intentData}, this, changeQuickRedirect, false, 5, new Class[]{Boolean.TYPE, String.class, QuickJoinRoomConfigBean.class, RoomCreateParams.class, String.class, String.class, Boolean.class, HashMap.class, Function1.class, String.class, cn.soulapp.cpnt_voiceparty.bean.g.class}, Void.TYPE).isSupported) {
            return;
        }
        if (isSlideRoom) {
            RoomChatEventUtilsV2.O();
        } else if (roomCreateParams == null) {
            RoomChatEventUtilsV2.C(!kotlin.jvm.internal.v.e(isQuickCreateRoom, Boolean.TRUE) ? 1 : 0, activityName);
        }
        if (!kotlin.jvm.internal.v.e(extParams != null ? extParams.get("ext_create_room_type") : null, "create_private_chat_room")) {
            xe.d.e(new d(roomCreateParams, this, source, configBean, chatGroupId, joinCode, extParams, intentData, callBack));
        } else if (roomCreateParams != null) {
            u(this, roomCreateParams, callBack, source, null, chatGroupId, extParams, joinCode, intentData, 8, null);
        }
    }

    public static /* synthetic */ void G(CreateChatRoomRouter createChatRoomRouter, Integer num, String str, boolean z11, String str2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z11 = false;
        }
        if ((i11 & 8) != 0) {
            str2 = "0";
        }
        createChatRoomRouter.F(num, str, z11, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void I(CreateChatRoomRouter createChatRoomRouter, boolean z11, boolean z12, String str, String str2, Integer num, HashMap map, Function1 function1, String str3, int i11, Object obj) {
        createChatRoomRouter.H((i11 & 1) != 0 ? false : z11, (i11 & 2) != 0 ? true : z12, (i11 & 4) != 0 ? "0" : str, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : num, (i11 & 32) != 0 ? null : map, (i11 & 64) != 0 ? null : function1, (i11 & 128) == 0 ? str3 : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:31:0x0067 A[ORIG_RETURN, RETURN] */
    public final String J(String source) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{source}, this, changeQuickRedirect, false, 16, new Class[]{String.class}, String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        if (source == null) {
            return "0";
        }
        switch (source.hashCode()) {
            case -1457641660:
                if (source.equals("MAIN_HALL#TAB_ALL#ONESETP")) {
                    return "3";
                }
                return "0";
            case 136393183:
                if (source.equals("MAIN_HALL#TAB_RECOMMEND#ONESETP")) {
                    return "3";
                }
                return "0";
            case 236930303:
                return !source.equals("MAIN_HALL#TAB_ALL#FRIEND#ONESETP") ? "0" : "1";
            case 518763216:
                if (source.equals("MAIN_HALL#TAB_FOLLOW#ONESETP")) {
                    return "3";
                }
                return "0";
            case 1160378184:
                if (source.equals("MAIN_HALL#TAB_MUSIC#ONESETP")) {
                    return "3";
                }
                return "0";
            case 2089809918:
                if (source.equals("MAIN_HALL#TAB_LOCAL_CITY#ONESETP")) {
                    return "3";
                }
                return "0";
            default:
                return "0";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentManager K() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 12, new Class[0], FragmentManager.class);
        if (patchProxyResultProxy.isSupported) {
            return (FragmentManager) patchProxyResultProxy.result;
        }
        FragmentActivity fragmentActivity = (FragmentActivity) AppListenerHelper.x();
        if (fragmentActivity != null) {
            return fragmentActivity.getSupportFragmentManager();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final String L(String source) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{source}, this, changeQuickRedirect, false, 17, new Class[]{String.class}, String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        switch (source.hashCode()) {
            case -2095917017:
                if (source.equals("CHATGROUP#BOTTOM")) {
                    return "CHATGROUP:CREATE_ROOM";
                }
                break;
            case -1119695228:
                if (source.equals("PLANET#ROOMLIST")) {
                    return "PLANET:CREATE_ROOM";
                }
                break;
            case -593644049:
                if (source.equals("PLANET#NAVIGATIONBAR#CREATE_ROOM")) {
                    return "PLANET:NAVIGATIONBAR:CREATE_ROOM";
                }
                break;
            case 236930303:
                if (source.equals("MAIN_HALL#TAB_ALL#FRIEND#ONESETP")) {
                    return "MAIN_HALL:FRIENDS:CREATE_ROOM";
                }
                break;
        }
        return ag.b.a("CREATE_ROOM");
    }

    private final SpannableStringBuilder M(String content, List<? extends KeyWordUrl> keyWordUrls) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{content, keyWordUrls}, this, changeQuickRedirect, false, 25, new Class[]{String.class, List.class}, SpannableStringBuilder.class);
        if (patchProxyResultProxy.isSupported) {
            return (SpannableStringBuilder) patchProxyResultProxy.result;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(content);
        if (!b80.p.b(keyWordUrls)) {
            for (KeyWordUrl keyWordUrl : keyWordUrls) {
                String str = keyWordUrl.keyWord;
                kotlin.jvm.internal.v.i(str, "keyWordUrl.keyWord");
                int iZ = StringsKt__StringsKt.Z(content, str, 0, false, 6, null);
                if (iZ != -1) {
                    spannableStringBuilder.setSpan(new e(keyWordUrl), iZ, keyWordUrl.keyWord.length() + iZ, 34);
                }
            }
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LoadingDialog N() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], LoadingDialog.class);
        return patchProxyResultProxy.isSupported ? (LoadingDialog) patchProxyResultProxy.result : (LoadingDialog) this.soulLoadingDialog.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    public final void O(String str, String str2, HashMap<String, Object> map, cn.soulapp.cpnt_voiceparty.bean.g gVar) {
        if (PatchProxy.proxy(new Object[]{str, str2, map, gVar}, this, changeQuickRedirect, false, 21, new Class[]{String.class, String.class, HashMap.class, cn.soulapp.cpnt_voiceparty.bean.g.class}, Void.TYPE).isSupported) {
            return;
        }
        h30.g.f225309a.X3().subscribeWith(HttpSubscriber.create(new f(str, str2, map, gVar)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x006e A[ORIG_RETURN, RETURN] */
    public final boolean P(String source) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{source}, this, changeQuickRedirect, false, 15, new Class[]{String.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (source == null) {
            return false;
        }
        switch (source) {
            case "MAIN_HALL#TAB_ALL#ONESETP":
                return true;
            case "PLANET#NAVIGATIONBAR#CREATE_ROOM":
                return true;
            case "MAIN_HALL#TAB_RECOMMEND#ONESETP":
                return true;
            case "MAIN_HALL#TAB_ALL#FRIEND#ONESETP":
                return true;
            case "MAIN_HALL#TAB_FOLLOW#ONESETP":
                return true;
            case "MAIN_HALL#TAB_MUSIC#ONESETP":
                return true;
            case "MAIN_HALL#TAB_LOCAL_CITY#ONESETP":
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0055  */
    /* JADX WARN: Code duplicated, block: B:17:0x0058  */
    /* JADX WARN: Code duplicated, block: B:34:0x007d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0084  */
    /* JADX WARN: Code duplicated, block: B:38:0x0087  */
    /* JADX WARN: Code duplicated, block: B:94:0x017d  */
    private final void Q(RoomLimitConfig roomLimitConfig, String str, RoomBean roomBean, HashMap<String, Object> map, cn.soulapp.cpnt_voiceparty.bean.g gVar) {
        String strB;
        String str2;
        String strA;
        if (PatchProxy.proxy(new Object[]{roomLimitConfig, str, roomBean, map, gVar}, this, changeQuickRedirect, false, 23, new Class[]{RoomLimitConfig.class, String.class, RoomBean.class, HashMap.class, cn.soulapp.cpnt_voiceparty.bean.g.class}, Void.TYPE).isSupported) {
            return;
        }
        if (roomBean == null) {
            strB = "{}";
        } else {
            strB = cn.soulapp.imlib.utils.j.b(roomBean);
            if (strB != null) {
                kotlin.jvm.internal.v.i(strB, "entityToJson(bean)");
                if (!(strB.length() > 0)) {
                    strB = null;
                }
            } else {
                strB = null;
            }
            if (strB == null) {
                strB = "{}";
            }
        }
        Object obj = map != null ? map.get("defaultLandToTabCode") : null;
        String strB2 = obj instanceof String ? (String) obj : null;
        if (strB2 == null) {
            if (gVar != null) {
                strB2 = gVar.getDefaultTabCode();
            } else {
                strB2 = null;
            }
            if (strB2 == null) {
                strB2 = "";
            }
        } else {
            if (!(strB2.length() > 0)) {
                strB2 = null;
            }
            if (strB2 == null) {
                if (gVar != null) {
                    strB2 = gVar.getDefaultTabCode();
                } else {
                    strB2 = null;
                }
                if (strB2 == null) {
                    strB2 = "";
                }
            }
        }
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme(PathUtil.PATH_ROOT).authority("ul.soulapp.cn").appendPath("reactnative").appendPath("container").appendQueryParameter(MediationConstant.KEY_USE_POLICY_PAGE_ID, "soul_rn_club_party").appendQueryParameter("subPage", "CreateRoomPage").appendQueryParameter("present", "true").appendQueryParameter("animated", "false").appendQueryParameter("transparent", "true").appendQueryParameter("historyData", strB).appendQueryParameter("remainTimes", String.valueOf(roomLimitConfig.surplusCreateRoomCount)).appendQueryParameter(SocialConstants.PARAM_SOURCE, str).appendQueryParameter("defaultDisplayTabCode", strB2).appendQueryParameter("isShowPartyIcon", String.valueOf(!k30.b.f229063a.b()));
        String str3 = this.groupId;
        if (!(str3 == null || str3.length() == 0)) {
            builderAppendQueryParameter.appendQueryParameter("groupId", this.groupId);
        }
        String str4 = this.tagName;
        if (!(str4 == null || str4.length() == 0)) {
            builderAppendQueryParameter.appendQueryParameter("tagName", this.tagName);
        }
        Object obj2 = map != null ? map.get("groupJoinCode") : null;
        String str5 = obj2 instanceof String ? (String) obj2 : null;
        if (!(str5 == null || str5.length() == 0)) {
            builderAppendQueryParameter.appendQueryParameter("groupJoinCode", str5);
        }
        String strC = gVar != null ? gVar.getJoinCode() : null;
        if (!(strC == null || strC.length() == 0)) {
            builderAppendQueryParameter.appendQueryParameter("joinCode", strC);
        }
        if (gVar == null || (strA = gVar.getDefaultPlayType()) == null) {
            str2 = this.defaultPlayType;
        } else {
            str2 = strA.length() > 0 ? strA : null;
            if (str2 == null) {
                str2 = this.defaultPlayType;
            }
        }
        if (!(str2 == null || str2.length() == 0)) {
            builderAppendQueryParameter.appendQueryParameter("defaultPlayType", str2);
        }
        Integer num = this.defaultClassifyCode;
        if (num != null && num.intValue() > 0) {
            builderAppendQueryParameter.appendQueryParameter("defaultClassifyCode", num.toString());
        }
        String string = builderAppendQueryParameter.build().toString();
        kotlin.jvm.internal.v.i(string, "uriBuilder.build().toString()");
        cn.soul.insight.log.core.a.f15353b.i("跳转RN页面", "url:" + string);
        SoulRouter.j().e(string).d();
    }

    private final void R(final Dialog dialog, RoomerRole roomerRole, boolean z11, final String str, final QuickJoinRoomConfigBean quickJoinRoomConfigBean, final RoomCreateParams roomCreateParams, final String str2, final String str3, final HashMap<String, Object> map, final cn.soulapp.cpnt_voiceparty.bean.g gVar, final Function1<? super Boolean, kotlin.w> function1) {
        if (PatchProxy.proxy(new Object[]{dialog, roomerRole, new Byte(z11 ? (byte) 1 : (byte) 0), str, quickJoinRoomConfigBean, roomCreateParams, str2, str3, map, gVar, function1}, this, changeQuickRedirect, false, 24, new Class[]{Dialog.class, RoomerRole.class, Boolean.TYPE, String.class, QuickJoinRoomConfigBean.class, RoomCreateParams.class, String.class, String.class, HashMap.class, cn.soulapp.cpnt_voiceparty.bean.g.class, Function1.class}, Void.TYPE).isSupported) {
            return;
        }
        TextView textView = (TextView) dialog.findViewById(R$id.Cn0);
        this.tvConfirm = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.ui.z0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws JSONException {
                    CreateChatRoomRouter.S(dialog, quickJoinRoomConfigBean, this, str3, str, str2, function1, map, gVar, roomCreateParams, view);
                }
            });
        }
        LinearLayout linearLayout = (LinearLayout) dialog.findViewById(R$id.aH);
        linearLayout.removeAllViews();
        if (roomerRole == null || roomerRole.noticeContents == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        int length = roomerRole.noticeContents.length;
        for (int i11 = 0; i11 < length; i11++) {
            arrayList.clear();
            String role = roomerRole.noticeContents[i11];
            SpecialWordModel[] specialWordModelArr = roomerRole.specialWords;
            if (specialWordModelArr != null) {
                kotlin.jvm.internal.v.i(specialWordModelArr, "roomerRole.specialWords");
                for (SpecialWordModel specialWordModel : specialWordModelArr) {
                    String replaceStr = specialWordModel.wordMark;
                    if (!TextUtils.isEmpty(replaceStr)) {
                        kotlin.jvm.internal.v.i(role, "role");
                        kotlin.jvm.internal.v.i(replaceStr, "replaceStr");
                        if (StringsKt__StringsKt.M(role, replaceStr, false, 2, null)) {
                            String userAgreement = specialWordModel.word;
                            String str4 = specialWordModel.url;
                            if (!TextUtils.isEmpty(userAgreement) && !TextUtils.isEmpty(str4)) {
                                arrayList.add(new KeyWordUrl(userAgreement, str4));
                            }
                            kotlin.jvm.internal.v.i(role, "role");
                            Regex regex = new Regex(replaceStr);
                            kotlin.jvm.internal.v.i(userAgreement, "userAgreement");
                            role = regex.replace(role, userAgreement);
                        }
                    }
                }
            }
            View viewInflate = LayoutInflater.from(ChatRoomModule.f126959a.g()).inflate(R$layout.f23768w0, (ViewGroup) null);
            TextView textView2 = (TextView) viewInflate.findViewById(cn.soulapp.android.chatroom.R$id.f23699z7);
            textView2.setMovementMethod(TextViewFixTouchConsume.a.a());
            kotlin.jvm.internal.v.i(role, "role");
            textView2.setText(M(role, arrayList));
            linearLayout.addView(viewInflate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(Dialog dialog, QuickJoinRoomConfigBean quickJoinRoomConfigBean, CreateChatRoomRouter this$0, String str, String source, String str2, Function1 function1, HashMap map, cn.soulapp.cpnt_voiceparty.bean.g gVar, RoomCreateParams roomCreateParams, View view) throws JSONException {
        if (PatchProxy.proxy(new Object[]{dialog, quickJoinRoomConfigBean, this$0, str, source, str2, function1, map, gVar, roomCreateParams, view}, null, changeQuickRedirect, true, 28, new Class[]{Dialog.class, QuickJoinRoomConfigBean.class, CreateChatRoomRouter.class, String.class, String.class, String.class, Function1.class, HashMap.class, cn.soulapp.cpnt_voiceparty.bean.g.class, RoomCreateParams.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(dialog, "$dialog");
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(source, "$source");
        SKV.single().putBoolean("role_dialog_confirm_clicked", true);
        dialog.dismiss();
        if (quickJoinRoomConfigBean == null) {
            if (roomCreateParams != null) {
                u(this$0, roomCreateParams, function1, source, null, str2, map, str, gVar, 8, null);
                return;
            } else {
                this$0.O(source, str2, map, gVar);
                return;
            }
        }
        Integer classifyCode = quickJoinRoomConfigBean.getClassifyCode();
        int iIntValue = classifyCode != null ? classifyCode.intValue() : 0;
        String topic = quickJoinRoomConfigBean.getTopic();
        if (topic == null) {
            topic = "";
        }
        String str3 = topic;
        String backgroundId = quickJoinRoomConfigBean.getBackgroundId();
        Integer playType = quickJoinRoomConfigBean.getPlayType();
        t(this$0, iIntValue, 0, str3, backgroundId, playType != null ? playType.intValue() : 0, null, str, source, quickJoinRoomConfigBean.getFunctionCodeList(), str2, function1, null, map, gVar, 2080, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(final RoomerRole roomerRole, final boolean z11, final String str, final QuickJoinRoomConfigBean quickJoinRoomConfigBean, final RoomCreateParams roomCreateParams, final String str2, final String str3, final HashMap<String, Object> map, final cn.soulapp.cpnt_voiceparty.bean.g gVar, final Function1<? super Boolean, kotlin.w> function1) {
        if (PatchProxy.proxy(new Object[]{roomerRole, new Byte(z11 ? (byte) 1 : (byte) 0), str, quickJoinRoomConfigBean, roomCreateParams, str2, str3, map, gVar, function1}, this, changeQuickRedirect, false, 20, new Class[]{RoomerRole.class, Boolean.TYPE, String.class, QuickJoinRoomConfigBean.class, RoomCreateParams.class, String.class, String.class, HashMap.class, cn.soulapp.cpnt_voiceparty.bean.g.class, Function1.class}, Void.TYPE).isSupported) {
            return;
        }
        CommonGuideDialog commonGuideDialog = new CommonGuideDialog(AppListenerHelper.x(), cn.soulapp.cpnt_voiceparty.R$layout.G4);
        commonGuideDialog.setBgTransparent();
        commonGuideDialog.setConfig(new OnDialogViewClick() { // from class: cn.soulapp.cpnt_voiceparty.ui.x0
            @Override // cn.soulapp.android.lib.common.view.OnDialogViewClick
            public final void initViewAndClick(Dialog dialog) {
                CreateChatRoomRouter.U(this.f161828a, roomerRole, z11, str, quickJoinRoomConfigBean, roomCreateParams, str2, str3, map, gVar, function1, dialog);
            }
        }, true);
        commonGuideDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(CreateChatRoomRouter this$0, RoomerRole roomerRole, boolean z11, String source, QuickJoinRoomConfigBean quickJoinRoomConfigBean, RoomCreateParams roomCreateParams, String str, String str2, HashMap map, cn.soulapp.cpnt_voiceparty.bean.g gVar, Function1 function1, Dialog dialog) {
        if (PatchProxy.proxy(new Object[]{this$0, roomerRole, new Byte(z11 ? (byte) 1 : (byte) 0), source, quickJoinRoomConfigBean, roomCreateParams, str, str2, map, gVar, function1, dialog}, null, changeQuickRedirect, true, 27, new Class[]{CreateChatRoomRouter.class, RoomerRole.class, Boolean.TYPE, String.class, QuickJoinRoomConfigBean.class, RoomCreateParams.class, String.class, String.class, HashMap.class, cn.soulapp.cpnt_voiceparty.bean.g.class, Function1.class, Dialog.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(this$0, "this$0");
        kotlin.jvm.internal.v.j(roomerRole, "$roomerRole");
        kotlin.jvm.internal.v.j(source, "$source");
        kotlin.jvm.internal.v.g(dialog);
        this$0.R(dialog, roomerRole, z11, source, quickJoinRoomConfigBean, roomCreateParams, str, str2, map, gVar, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V(final String str, long j11, final Application application) {
        if (PatchProxy.proxy(new Object[]{str, new Long(j11), application}, this, changeQuickRedirect, false, 19, new Class[]{String.class, Long.TYPE, Application.class}, Void.TYPE).isSupported) {
            return;
        }
        LightExecutor.l0(j11, new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.ui.y0
            @Override // java.lang.Runnable
            public final void run() {
                CreateChatRoomRouter.W(application, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(Application applicationContext, String str) {
        if (PatchProxy.proxy(new Object[]{applicationContext, str}, null, changeQuickRedirect, true, 26, new Class[]{Application.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(applicationContext, "$applicationContext");
        Toast toast = new Toast(applicationContext);
        toast.setDuration(0);
        toast.setGravity(17, 0, 0);
        View viewInflate = View.inflate(applicationContext, cn.soulapp.lib.widget.R$layout.f172093j, null);
        if (viewInflate == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView textView = (TextView) viewInflate;
        textView.setText(str);
        toast.setView(textView);
        toast.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X(final UserUsageBean userUsageBean) {
        if (PatchProxy.proxy(new Object[]{userUsageBean}, this, changeQuickRedirect, false, 4, new Class[]{UserUsageBean.class}, Void.TYPE).isSupported) {
            return;
        }
        AbnormalExitChecker.h(AbnormalExitChecker.f161878a, userUsageBean, 3, null, new Function1<Boolean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter$showOwnerBuildEntryDialog$1
            public static ChangeQuickRedirect changeQuickRedirect;

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.w invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return kotlin.w.f231958a;
            }

            public final void invoke(boolean z11) {
                if (!PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported && z11) {
                    a60.l.j(a60.l.f1777a, String.valueOf(userUsageBean.getRoomId()), null, null, 6, null);
                }
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(RoomLimitConfig roomLimitConfig, String str, Class<? extends BaseBindingActivity<? extends ViewBinding>> cls, RoomBean roomBean, String str2, HashMap<String, Object> map, cn.soulapp.cpnt_voiceparty.bean.g gVar) {
        if (PatchProxy.proxy(new Object[]{roomLimitConfig, str, cls, roomBean, str2, map, gVar}, this, changeQuickRedirect, false, 22, new Class[]{RoomLimitConfig.class, String.class, Class.class, RoomBean.class, String.class, HashMap.class, cn.soulapp.cpnt_voiceparty.bean.g.class}, Void.TYPE).isSupported) {
            return;
        }
        if (kotlin.jvm.internal.v.e(str, "PLANET#NAVIGATIONBAR#CREATE_ROOM")) {
            Q(roomLimitConfig, str, roomBean, map, gVar);
            return;
        }
        if (cn.soulapp.cpnt_voiceparty.util.e.f162158a.h()) {
            Q(roomLimitConfig, str, roomBean, map, gVar);
            return;
        }
        ChatRoomModule chatRoomModule = ChatRoomModule.f126959a;
        Application applicationG = chatRoomModule.g();
        Intent intentAddFlags = new Intent(chatRoomModule.g(), cls).addFlags(C.ENCODING_PCM_MU_LAW);
        Bundle bundle = new Bundle();
        bundle.putInt("remainderTimes", roomLimitConfig.surplusCreateRoomCount);
        if (roomBean != null) {
            bundle.putSerializable("historyRoomBean", roomBean);
        }
        bundle.putString("groupId", this.groupId);
        bundle.putString("tagName", this.tagName);
        bundle.putString(SocialConstants.PARAM_SOURCE, str);
        bundle.putString("chatGroupId", str2);
        bundle.putString("defaultTabCode", gVar != null ? gVar.getDefaultTabCode() : null);
        bundle.putString("defaultPlayType", gVar != null ? gVar.getDefaultPlayType() : null);
        bundle.putString("joinCode", gVar != null ? gVar.getJoinCode() : null);
        if (map != null) {
            bundle.putSerializable("extParams", map);
        }
        Integer num = this.defaultClassifyCode;
        if (num != null) {
            bundle.putInt("defaultClassifyCode", num.intValue());
        }
        String str3 = this.defaultPlayType;
        if (str3 != null) {
            bundle.putString("defaultPlayType", str3);
        }
        ChangeQuickRedirect changeQuickRedirect2 = kotlin.w.changeQuickRedirect;
        applicationG.startActivity(intentAddFlags.putExtras(bundle));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void Z(CreateChatRoomRouter createChatRoomRouter, RoomLimitConfig roomLimitConfig, String str, Class cls, RoomBean roomBean, String str2, HashMap map, cn.soulapp.cpnt_voiceparty.bean.g gVar, int i11, Object obj) {
        createChatRoomRouter.Y(roomLimitConfig, str, cls, (i11 & 8) != 0 ? null : roomBean, (i11 & 16) != 0 ? null : str2, (i11 & 32) != 0 ? null : map, gVar);
    }

    private final void s(RoomCreateParams roomCreateParams, Function1<? super Boolean, kotlin.w> function1, String str, List<String> list, String str2, HashMap<String, Object> map, String str3, cn.soulapp.cpnt_voiceparty.bean.g gVar) throws JSONException {
        if (PatchProxy.proxy(new Object[]{roomCreateParams, function1, str, list, str2, map, str3, gVar}, this, changeQuickRedirect, false, 18, new Class[]{RoomCreateParams.class, Function1.class, String.class, List.class, String.class, HashMap.class, String.class, cn.soulapp.cpnt_voiceparty.bean.g.class}, Void.TYPE).isSupported) {
            return;
        }
        Integer classifyCode = roomCreateParams.getClassifyCode();
        int iIntValue = classifyCode != null ? classifyCode.intValue() : 0;
        String roomTopic = roomCreateParams.getRoomTopic();
        if (roomTopic == null) {
            roomTopic = "";
        }
        String str4 = roomTopic;
        String backgroundId = roomCreateParams.getBackgroundId();
        Integer playType = roomCreateParams.getPlayType();
        r(iIntValue, 0, str4, backgroundId, playType != null ? playType.intValue() : 0, roomCreateParams.getFmCode(), str3 == null ? roomCreateParams.get_joinCode() : str3, str, list, str2, function1, roomCreateParams, map, gVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void t(CreateChatRoomRouter createChatRoomRouter, int i11, int i12, String str, String str2, int i13, String str3, String str4, String str5, List list, String str6, Function1 function1, RoomCreateParams roomCreateParams, HashMap map, cn.soulapp.cpnt_voiceparty.bean.g gVar, int i14, Object obj) throws JSONException {
        createChatRoomRouter.r(i11, i12, str, str2, (i14 & 16) != 0 ? 0 : i13, (i14 & 32) != 0 ? "" : str3, (i14 & 64) != 0 ? null : str4, (i14 & 128) != 0 ? "0" : str5, (i14 & 256) != 0 ? null : list, (i14 & 512) != 0 ? null : str6, (i14 & 1024) != 0 ? null : function1, (i14 & 2048) != 0 ? null : roomCreateParams, (i14 & 4096) != 0 ? null : map, (i14 & 8192) != 0 ? null : gVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void u(CreateChatRoomRouter createChatRoomRouter, RoomCreateParams roomCreateParams, Function1 function1, String str, List list, String str2, HashMap map, String str3, cn.soulapp.cpnt_voiceparty.bean.g gVar, int i11, Object obj) throws JSONException {
        createChatRoomRouter.s(roomCreateParams, (i11 & 2) != 0 ? null : function1, (i11 & 4) != 0 ? "0" : str, (i11 & 8) != 0 ? null : list, (i11 & 16) != 0 ? null : str2, (i11 & 32) != 0 ? null : map, (i11 & 64) != 0 ? null : str3, (i11 & 128) == 0 ? gVar : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(String str, QuickJoinRoomConfigBean quickJoinRoomConfigBean, RoomCreateParams roomCreateParams, String str2, String str3, HashMap<String, Object> map, cn.soulapp.cpnt_voiceparty.bean.g gVar, Function1<? super Boolean, kotlin.w> function1) {
        if (PatchProxy.proxy(new Object[]{str, quickJoinRoomConfigBean, roomCreateParams, str2, str3, map, gVar, function1}, this, changeQuickRedirect, false, 13, new Class[]{String.class, QuickJoinRoomConfigBean.class, RoomCreateParams.class, String.class, String.class, HashMap.class, cn.soulapp.cpnt_voiceparty.bean.g.class, Function1.class}, Void.TYPE).isSupported) {
            return;
        }
        xe.d.j(0, new b(roomCreateParams, this, str, quickJoinRoomConfigBean, str2, str3, map, gVar, function1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void w(CreateChatRoomRouter createChatRoomRouter, String str, QuickJoinRoomConfigBean quickJoinRoomConfigBean, RoomCreateParams roomCreateParams, String str2, String str3, HashMap map, cn.soulapp.cpnt_voiceparty.bean.g gVar, Function1 function1, int i11, Object obj) {
        createChatRoomRouter.v((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? null : quickJoinRoomConfigBean, (i11 & 4) != 0 ? null : roomCreateParams, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : map, (i11 & 64) != 0 ? null : gVar, (i11 & 128) == 0 ? function1 : null);
    }

    public final void B(@NotNull String source, boolean z11, boolean z12, @Nullable Function1<? super Boolean, kotlin.w> function1) throws JSONException {
        Object[] objArr = {source, new Byte(z11 ? (byte) 1 : (byte) 0), new Byte(z12 ? (byte) 1 : (byte) 0), function1};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Boolean.TYPE;
        if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 9, new Class[]{String.class, cls, cls, Function1.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(source, "source");
        if (VoiceRtcEngine.C().q()) {
            return;
        }
        IAudioService iAudioServiceC = j5.a.c();
        if (iAudioServiceC != null && iAudioServiceC.isRunning() && z12 && iAudioServiceC.getHolderType() == HolderType.ChatRoom) {
            cn.soulapp.lib.widget.toast.e.u("你正在其他派对哦");
            cn.soulapp.cpnt_voiceparty.util.track.b.f162373a.h(6, (30 & 2) != 0 ? null : null, (30 & 4) != 0 ? null : null, (30 & 8) != 0 ? null : Boolean.valueOf(ZoomOutManager.f144296a.n()), (30 & 16) != 0 ? null : null);
        } else {
            if (l2.f(true, HolderType.WereWolf) || lg.a.a(1101)) {
                return;
            }
            D(this, false, source, null, null, null, null, null, null, function1, null, null, 1789, null);
        }
    }

    public final void F(@Nullable Integer defaultClassifyCode, @Nullable String defaultPlayType, boolean isSlideRoom, @NotNull String source) {
        if (PatchProxy.proxy(new Object[]{defaultClassifyCode, defaultPlayType, new Byte(isSlideRoom ? (byte) 1 : (byte) 0), source}, this, changeQuickRedirect, false, 7, new Class[]{Integer.class, String.class, Boolean.TYPE, String.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(source, "source");
        this.defaultClassifyCode = defaultClassifyCode;
        this.defaultPlayType = defaultPlayType;
        I(this, isSlideRoom, false, source, null, null, null, null, null, 250, null);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00f6  */
    public final void H(final boolean isSlideRoom, boolean needCheckConflictInRoom, @NotNull final String source, @Nullable String joinCode, @Nullable final Integer sceneCode, @Nullable final HashMap<String, Object> extParams, @Nullable final Function1<? super Boolean, kotlin.w> callBack, @Nullable final String activityName) {
        String strL;
        final String str;
        Object[] objArr = {new Byte(isSlideRoom ? (byte) 1 : (byte) 0), new Byte(needCheckConflictInRoom ? (byte) 1 : (byte) 0), source, joinCode, sceneCode, extParams, callBack, activityName};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Boolean.TYPE;
        if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 8, new Class[]{cls, cls, String.class, String.class, Integer.class, HashMap.class, Function1.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(source, "source");
        if (VoiceRtcEngine.C().q()) {
            return;
        }
        IAudioService iAudioServiceC = j5.a.c();
        if (iAudioServiceC != null && iAudioServiceC.isRunning() && needCheckConflictInRoom && iAudioServiceC.getHolderType() == HolderType.ChatRoom) {
            cn.soulapp.lib.widget.toast.e.u("你正在其他派对哦");
            cn.soulapp.cpnt_voiceparty.util.track.b.f162373a.h(6, (30 & 2) != 0 ? null : null, (30 & 4) != 0 ? null : null, (30 & 8) != 0 ? null : Boolean.valueOf(ZoomOutManager.f144296a.n()), (30 & 16) != 0 ? null : null);
            return;
        }
        if (l2.f(true, HolderType.WereWolf) || lg.a.a(1101)) {
            return;
        }
        cn.soulapp.cpnt_voiceparty.bean.g gVar = null;
        if (joinCode == null || (strL = StringsKt__StringsKt.Z0(joinCode).toString()) == null) {
            strL = L(source);
            if (!(strL.length() > 0)) {
                str = strL;
            } else {
                str = null;
            }
        } else {
            if (!(strL.length() > 0)) {
                strL = null;
            }
            if (strL == null) {
                strL = L(source);
                if (!(strL.length() > 0)) {
                    str = null;
                }
            }
            str = strL;
        }
        if (str != null) {
            gVar = new cn.soulapp.cpnt_voiceparty.bean.g();
            gVar.f(str);
        }
        final cn.soulapp.cpnt_voiceparty.bean.g gVar2 = gVar;
        h30.g.f225309a.i6(Integer.valueOf(sceneCode != null ? sceneCode.intValue() : 0)).subscribe(HttpSubscriber.create(new ty.s<QuickJoinRoomBean>() { // from class: cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter$doQuickJoinRoomWork$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: compiled from: CreateChatRoomRouter.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"cn/soulapp/cpnt_voiceparty/ui/CreateChatRoomRouter$doQuickJoinRoomWork$1$a", "Lz80/h;", "Ly80/a;", "permResult", "Lkotlin/w;", "onGranted", "result", "onDenied", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
            public static final class a extends z80.h {
                public static ChangeQuickRedirect changeQuickRedirect;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                final /* synthetic */ QuickJoinRoomBean f160262e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                final /* synthetic */ Integer f160263f;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                final /* synthetic */ CreateChatRoomRouter f160264g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                final /* synthetic */ boolean f160265h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                final /* synthetic */ String f160266i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                final /* synthetic */ String f160267j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                final /* synthetic */ HashMap<String, Object> f160268k;

                /* JADX INFO: renamed from: l, reason: collision with root package name */
                final /* synthetic */ Function1<Boolean, kotlin.w> f160269l;

                /* JADX INFO: renamed from: m, reason: collision with root package name */
                final /* synthetic */ String f160270m;

                /* JADX INFO: renamed from: n, reason: collision with root package name */
                final /* synthetic */ cn.soulapp.cpnt_voiceparty.bean.g f160271n;

                /* JADX INFO: renamed from: o, reason: collision with root package name */
                final /* synthetic */ FragmentActivity f160272o;

                /* JADX WARN: Multi-variable type inference failed */
                a(QuickJoinRoomBean quickJoinRoomBean, Integer num, CreateChatRoomRouter createChatRoomRouter, boolean z11, String str, String str2, HashMap<String, Object> map, Function1<? super Boolean, kotlin.w> function1, String str3, cn.soulapp.cpnt_voiceparty.bean.g gVar, FragmentActivity fragmentActivity) {
                    this.f160262e = quickJoinRoomBean;
                    this.f160263f = num;
                    this.f160264g = createChatRoomRouter;
                    this.f160265h = z11;
                    this.f160266i = str;
                    this.f160267j = str2;
                    this.f160268k = map;
                    this.f160269l = function1;
                    this.f160270m = str3;
                    this.f160271n = gVar;
                    this.f160272o = fragmentActivity;
                }

                @Override // z80.h, z80.b
                public void onDenied(@NotNull y80.a result) {
                    if (PatchProxy.proxy(new Object[]{result}, this, changeQuickRedirect, false, 3, new Class[]{y80.a.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    kotlin.jvm.internal.v.j(result, "result");
                    b80.n0.h(this.f160272o.getString(R$string.X3), new Object[0]);
                }

                @Override // z80.b
                public void onGranted(@NotNull y80.a permResult) throws JSONException {
                    ArrayList<QuickJoinRoomConfigBean> recCreateRoomConfigs;
                    if (PatchProxy.proxy(new Object[]{permResult}, this, changeQuickRedirect, false, 2, new Class[]{y80.a.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    kotlin.jvm.internal.v.j(permResult, "permResult");
                    QuickJoinRoomBean quickJoinRoomBean = this.f160262e;
                    QuickJoinRoomConfigBean quickJoinRoomConfigBean = (quickJoinRoomBean == null || (recCreateRoomConfigs = quickJoinRoomBean.getRecCreateRoomConfigs()) == null) ? null : recCreateRoomConfigs.get(0);
                    Integer num = this.f160263f;
                    CreateChatRoomRouter.D(this.f160264g, this.f160265h, this.f160266i, quickJoinRoomConfigBean, null, null, this.f160267j, Boolean.valueOf(num != null && num.intValue() == 1), this.f160268k, this.f160269l, this.f160270m, this.f160271n, 24, null);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(true);
            }

            @Override // com.walid.rxretrofit.interfaces.IHttpCallback
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void onNext(@Nullable QuickJoinRoomBean quickJoinRoomBean) throws JSONException {
                Integer fastCreateType;
                boolean z11 = true;
                if (PatchProxy.proxy(new Object[]{quickJoinRoomBean}, this, changeQuickRedirect, false, 2, new Class[]{QuickJoinRoomBean.class}, Void.TYPE).isSupported) {
                    return;
                }
                int iIntValue = (quickJoinRoomBean == null || (fastCreateType = quickJoinRoomBean.getFastCreateType()) == null) ? 0 : fastCreateType.intValue();
                if (iIntValue != 1) {
                    if (iIntValue == 2) {
                        ArrayList<QuickJoinRoomConfigBean> recCreateRoomConfigs = quickJoinRoomBean != null ? quickJoinRoomBean.getRecCreateRoomConfigs() : null;
                        if (recCreateRoomConfigs != null && !recCreateRoomConfigs.isEmpty()) {
                            z11 = false;
                        }
                        if (!z11) {
                            Activity activityX = AppListenerHelper.x();
                            FragmentActivity fragmentActivity = activityX instanceof FragmentActivity ? (FragmentActivity) activityX : null;
                            if (fragmentActivity != null) {
                                x80.a.C1791a.f246595i.a().a(fragmentActivity).f(fragmentActivity.getSupportFragmentManager()).i("Soul想访问你的麦克风").d("为了您能正常体验语音输入、语音变声、语音匹配、视频匹配等功能，Soul需要申请麦克风权限。如您拒绝授权，不影响您使用APP的其他功能。").b(new a(quickJoinRoomBean, sceneCode, this.f160253c, isSlideRoom, source, str, extParams, callBack, activityName, gVar2, fragmentActivity)).c().m();
                                return;
                            }
                            return;
                        }
                    }
                    CreateChatRoomRouter.D(this.f160253c, false, source, null, null, null, str, null, extParams, callBack, activityName, gVar2, 93, null);
                    return;
                }
                FragmentManager fragmentManagerK = this.f160253c.K();
                if (fragmentManagerK != null) {
                    final String str2 = source;
                    final CreateChatRoomRouter createChatRoomRouter = this.f160253c;
                    final boolean z12 = isSlideRoom;
                    final String str3 = str;
                    final HashMap<String, Object> map = extParams;
                    final Function1<Boolean, kotlin.w> function1 = callBack;
                    final String str4 = activityName;
                    final cn.soulapp.cpnt_voiceparty.bean.g gVar3 = gVar2;
                    QuickJoinRoomDialog quickJoinRoomDialogA = QuickJoinRoomDialog.f148669t.a(quickJoinRoomBean != null ? quickJoinRoomBean.getRecCreateRoomConfigs() : null, str2);
                    quickJoinRoomDialogA.G(new Function2<Integer, QuickJoinRoomConfigBean, kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter$doQuickJoinRoomWork$1$onNext$1$1
                        public static ChangeQuickRedirect changeQuickRedirect;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        /* JADX INFO: renamed from: invoke */
                        public /* bridge */ /* synthetic */ kotlin.w mo3invoke(Integer num, QuickJoinRoomConfigBean quickJoinRoomConfigBean) throws JSONException {
                            invoke(num.intValue(), quickJoinRoomConfigBean);
                            return kotlin.w.f231958a;
                        }

                        public final void invoke(int i11, @Nullable QuickJoinRoomConfigBean quickJoinRoomConfigBean) throws JSONException {
                            if (PatchProxy.proxy(new Object[]{new Integer(i11), quickJoinRoomConfigBean}, this, changeQuickRedirect, false, 2, new Class[]{Integer.TYPE, QuickJoinRoomConfigBean.class}, Void.TYPE).isSupported) {
                                return;
                            }
                            if (i11 == 1) {
                                CreateChatRoomRouter.D(createChatRoomRouter, z12, str2, quickJoinRoomConfigBean, null, null, str3, null, map, function1, str4, gVar3, 88, null);
                                return;
                            }
                            if (i11 == 2) {
                                CreateChatRoomRouter.D(createChatRoomRouter, z12, str2, quickJoinRoomConfigBean, null, null, str3, null, map, function1, str4, gVar3, 88, null);
                                return;
                            }
                            if (i11 == 3) {
                                SoulRouter.j().e("/post/postMoment").d();
                                return;
                            }
                            Function1<Boolean, kotlin.w> function2 = function1;
                            if (function2 != null) {
                                function2.invoke(Boolean.FALSE);
                            }
                        }
                    });
                    quickJoinRoomDialogA.show(fragmentManagerK, "QuickJoinRoomDialog");
                }
            }

            @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
            public void onError(int i11, @Nullable String str2) throws JSONException {
                if (PatchProxy.proxy(new Object[]{new Integer(i11), str2}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                    return;
                }
                super.onError(i11, str2);
                CreateChatRoomRouter.D(this.f160253c, false, source, null, null, null, str, null, extParams, callBack, activityName, gVar2, 93, null);
            }
        }));
    }

    @SuppressLint({"CheckResult"})
    public final void r(int i11, int i12, @NotNull final String roomName, @Nullable String str, int i13, @Nullable String str2, @Nullable final String str3, @NotNull final String source, @Nullable List<String> list, @Nullable final String str4, @Nullable final Function1<? super Boolean, kotlin.w> function1, @Nullable final RoomCreateParams roomCreateParams, @Nullable final HashMap<String, Object> map, @Nullable final cn.soulapp.cpnt_voiceparty.bean.g gVar) throws JSONException {
        String strC0;
        Object[] objArr = {new Integer(i11), new Integer(i12), roomName, str, new Integer(i13), str2, str3, source, list, str4, function1, roomCreateParams, map, gVar};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 14, new Class[]{cls, cls, String.class, String.class, cls, String.class, String.class, String.class, List.class, String.class, Function1.class, RoomCreateParams.class, HashMap.class, cn.soulapp.cpnt_voiceparty.bean.g.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(roomName, "roomName");
        kotlin.jvm.internal.v.j(source, "source");
        N().s();
        h30.g gVar2 = h30.g.f225309a;
        Object obj = map != null ? map.get("privateStatus") : null;
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 0;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("createroom_source", source);
        if (!(str4 == null || str4.length() == 0)) {
            jSONObject.put("groupId", str4);
        }
        if (UnifyUIStyleManager.f11898a.k()) {
            jSONObject.put("uiType", 1);
        }
        ChangeQuickRedirect changeQuickRedirect3 = kotlin.w.changeQuickRedirect;
        String string = jSONObject.toString();
        if (roomCreateParams != null) {
            strC0 = roomCreateParams.getFunctionCodes();
        } else {
            strC0 = list != null ? CollectionsKt___CollectionsKt.C0(list, ",", null, null, 0, null, null, 62, null) : null;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (kotlin.jvm.internal.v.e(map != null ? map.get("ext_create_room_type") : null, "create_private_chat_room")) {
            Object obj2 = map.get("joinUserId");
            if (obj2 == null) {
                obj2 = "";
            }
            jSONObject2.put("joinUserId", obj2);
        }
        Object obj3 = map != null ? map.get("gameId") : null;
        String str5 = obj3 instanceof String ? (String) obj3 : null;
        if (!(str5 == null || str5.length() == 0)) {
            jSONObject2.put("gameId", str5);
        }
        gVar2.T0(i11, i12, roomName, str, (64 & 16) != 0 ? 0 : i13, str2, (64 & 64) != 0 ? "" : null, (64 & 128) != 0 ? 0 : iIntValue, (64 & 256) != 0 ? null : string, (64 & 512) != 0 ? null : strC0, (64 & 1024) != 0 ? null : jSONObject2.toString()).subscribeWith(HttpSubscriber.create(new SimpleHttpCallback<CreateRoomModel>() { // from class: cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter$createChatRoom$3
            public static ChangeQuickRedirect changeQuickRedirect;

            @Override // com.walid.rxretrofit.interfaces.IHttpCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onNext(@Nullable final CreateRoomModel createRoomModel) {
                Function1<cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> function2;
                Function1<cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> function3;
                boolean z11 = true;
                if (PatchProxy.proxy(new Object[]{createRoomModel}, this, changeQuickRedirect, false, 2, new Class[]{CreateRoomModel.class}, Void.TYPE).isSupported) {
                    return;
                }
                if (!(createRoomModel != null && createRoomModel.createResult)) {
                    this.f160232a.N().g();
                    if (!TextUtils.isEmpty(createRoomModel != null ? createRoomModel.createFailedDesc : null)) {
                        b80.n0.h(createRoomModel != null ? createRoomModel.createFailedDesc : null, new Object[0]);
                    }
                    Function1<Boolean, kotlin.w> function4 = function1;
                    if (function4 != null) {
                        function4.invoke(Boolean.FALSE);
                    }
                    RoomCreateParams roomCreateParams2 = roomCreateParams;
                    if (roomCreateParams2 != null && (function2 = roomCreateParams2.get_createCb()) != null) {
                        function2.invoke(new cn.soulapp.cpnt_voiceparty.bean.f());
                    }
                    if (createRoomModel != null && createRoomModel.createFailedCode == 62) {
                        String str6 = createRoomModel.identifyUrl;
                        if (str6 != null && str6.length() != 0) {
                            z11 = false;
                        }
                        if (!z11) {
                            SoulRouter.j().e(createRoomModel.identifyUrl).d();
                        }
                    }
                    if (this.f160232a.P(source)) {
                        this.f160232a.O(source, str4, map, gVar);
                        return;
                    }
                    return;
                }
                c80.a.b(new af.d());
                this.f160232a.N().g();
                Activity activityX = AppListenerHelper.x();
                FragmentActivity fragmentActivity = activityX instanceof FragmentActivity ? (FragmentActivity) activityX : null;
                if (fragmentActivity != null) {
                    this.f160232a.V(fragmentActivity.getResources().getString(cn.soulapp.android.chatroom.R$string.f23790l), 1000L, d6.a.f222652a.a());
                }
                String strL = str3;
                if (strL == null) {
                    strL = this.f160232a.L(source);
                }
                a60.l.i(a60.l.f1777a, createRoomModel.roomId, 0, null, null, strL, null, kotlin.collections.r0.l(kotlin.m.a("joinSource", "create")), 44, null);
                EventBus.c().m(new dg.o(-376066692));
                String str7 = createRoomModel.createRoomInvisibilityCloakOpenStatusMsg;
                if (str7 != null && (kotlin.text.q.w(str7) ^ true)) {
                    AnyExtKt.h(1500L, Boolean.TRUE, new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter$createChatRoom$3$onNext$2
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
                            String str8 = createRoomModel.createRoomInvisibilityCloakOpenStatusMsg;
                            if (str8 == null) {
                                str8 = "";
                            }
                            ExtensionsKt.toast(str8);
                        }
                    });
                }
                RoomCreateParams roomCreateParams3 = roomCreateParams;
                if (roomCreateParams3 != null && (function3 = roomCreateParams3.get_createCb()) != null) {
                    cn.soulapp.cpnt_voiceparty.bean.f fVar = new cn.soulapp.cpnt_voiceparty.bean.f();
                    fVar.d(true);
                    function3.invoke(fVar);
                }
                cn.soulapp.android.client.component.middle.platform.utils.track.d.e(Const.EventType.CLICK, "create_chatroom_success", "create_chatroom_source", this.f160232a.J(source));
            }

            @Override // com.walid.rxretrofit.interfaces.SimpleHttpCallback, com.walid.rxretrofit.interfaces.IHttpCallback
            public void onError(int i14, @Nullable String str6) {
                Function1<cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> function2;
                if (PatchProxy.proxy(new Object[]{new Integer(i14), str6}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                    return;
                }
                super.onError(i14, str6);
                this.f160232a.N().g();
                cn.soul.insight.log.core.a.f15353b.writeClientError(100701009, "创建房间失败," + roomName + " : " + str6);
                if (i14 == 40002) {
                    FragmentActivity fragmentActivity = (FragmentActivity) AppListenerHelper.x();
                    if (fragmentActivity != null) {
                        ah.l.t(fragmentActivity, "");
                    }
                } else {
                    Function1<Boolean, kotlin.w> function3 = function1;
                    if (function3 != null) {
                        function3.invoke(Boolean.FALSE);
                    }
                }
                RoomCreateParams roomCreateParams2 = roomCreateParams;
                if (roomCreateParams2 == null || (function2 = roomCreateParams2.get_createCb()) == null) {
                    return;
                }
                function2.invoke(new cn.soulapp.cpnt_voiceparty.bean.f());
            }
        }));
    }

    public final void x(@NotNull String groupId, @Nullable String str, boolean z11, boolean z12, @Nullable String str2, @Nullable String str3, @Nullable final HashMap<String, Object> map, @Nullable final cn.soulapp.cpnt_voiceparty.bean.g gVar, @Nullable String str4) throws JSONException {
        Object[] objArr = {groupId, str, new Byte(z11 ? (byte) 1 : (byte) 0), new Byte(z12 ? (byte) 1 : (byte) 0), str2, str3, map, gVar, str4};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Boolean.TYPE;
        if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 11, new Class[]{String.class, String.class, cls, cls, String.class, String.class, HashMap.class, cn.soulapp.cpnt_voiceparty.bean.g.class, String.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(groupId, "groupId");
        if (VoiceRtcEngine.C().q()) {
            return;
        }
        IAudioService iAudioServiceC = j5.a.c();
        if (iAudioServiceC != null && iAudioServiceC.isRunning() && z12 && iAudioServiceC.getHolderType() == HolderType.ChatRoom) {
            cn.soulapp.lib.widget.toast.e.u("你正在其他派对哦");
            cn.soulapp.cpnt_voiceparty.util.track.b.f162373a.h(6, (30 & 2) != 0 ? null : null, (30 & 4) != 0 ? null : null, (30 & 8) != 0 ? null : Boolean.valueOf(ZoomOutManager.f144296a.n()), (30 & 16) != 0 ? null : null);
        } else if ((kotlin.jvm.internal.v.e(str4, "werewolfPage") || !l2.f(true, HolderType.WereWolf)) && !lg.a.a(1101)) {
            this.tagName = str;
            if (TextUtils.isEmpty(groupId)) {
                D(this, z11, str3 == null ? "" : str3, null, null, str2, null, null, map, null, null, gVar, 876, null);
            } else {
                this.groupId = groupId;
                xe.a.f246814a.b(groupId).subscribe(HttpSubscriber.create(new ty.s<GroupBaseResultBean>() { // from class: cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter$doCheckWork$1
                    public static ChangeQuickRedirect changeQuickRedirect;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(true);
                    }

                    @Override // com.walid.rxretrofit.interfaces.IHttpCallback
                    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
                    public void onNext(@Nullable final GroupBaseResultBean groupBaseResultBean) throws JSONException {
                        if (PatchProxy.proxy(new Object[]{groupBaseResultBean}, this, changeQuickRedirect, false, 2, new Class[]{GroupBaseResultBean.class}, Void.TYPE).isSupported) {
                            return;
                        }
                        if (groupBaseResultBean != null && groupBaseResultBean.result) {
                            CreateChatRoomRouter.D(this.f160250c, false, null, null, null, null, null, null, map, null, null, gVar, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_AVG_COST_TIME, null);
                            return;
                        }
                        if (groupBaseResultBean != null && groupBaseResultBean.failedCode == 6) {
                            FragmentManager fragmentManagerK = this.f160250c.K();
                            if (fragmentManagerK != null) {
                                SoulDialog.Companion companion = SoulDialog.INSTANCE;
                                SoulDialog.AttributeConfig attributeConfig = new SoulDialog.AttributeConfig();
                                attributeConfig.W(SoulDialogType.P12);
                                attributeConfig.h0("本群正在派对中，\n一起来玩吧");
                                attributeConfig.M("取消");
                                attributeConfig.S("确认");
                                attributeConfig.R(new Function0<kotlin.w>() { // from class: cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter$doCheckWork$1$onNext$1$1$1
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
                                        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || TextUtils.isEmpty(groupBaseResultBean.roomId)) {
                                            return;
                                        }
                                        a60.l.j(a60.l.f1777a, groupBaseResultBean.roomId, null, kotlin.collections.r0.l(kotlin.m.a("joinSource", "create")), 2, null);
                                    }
                                });
                                companion.a(attributeConfig).n(fragmentManagerK);
                            }
                            cn.soul.insight.log.core.a.f15353b.e("文字群组", "文字群组---showVerifyRoomRealNameDialog()");
                            return;
                        }
                        if (!(groupBaseResultBean != null && groupBaseResultBean.failedCode == 4)) {
                            if (TextUtils.isEmpty(groupBaseResultBean != null ? groupBaseResultBean.failedDesc : null)) {
                                return;
                            }
                            b80.n0.h(groupBaseResultBean != null ? groupBaseResultBean.failedDesc : null, new Object[0]);
                            return;
                        }
                        FragmentManager fragmentManagerK2 = this.f160250c.K();
                        if (fragmentManagerK2 != null) {
                            SoulDialog.Companion companion2 = SoulDialog.INSTANCE;
                            SoulDialog.AttributeConfig attributeConfig2 = new SoulDialog.AttributeConfig();
                            attributeConfig2.W(SoulDialogType.P1);
                            attributeConfig2.h0("当前仅群主和管理员可在本群创建派对");
                            attributeConfig2.S("我知道了");
                            companion2.a(attributeConfig2).n(fragmentManagerK2);
                        }
                        cn.soul.insight.log.core.a.f15353b.e("文字群组", "文字群组---showDialog Tip:当前仅群主和管理员可在本群创建派对");
                    }

                    @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
                    public void onError(int i11, @Nullable String str5) {
                        if (PatchProxy.proxy(new Object[]{new Integer(i11), str5}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                            return;
                        }
                        super.onError(i11, str5);
                    }
                }));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0087  */
    public final void z(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Function1<? super Boolean, kotlin.w> function1, @Nullable HashMap<String, Object> map, @Nullable Function1<? super cn.soulapp.cpnt_voiceparty.bean.f, kotlin.w> function2) {
        String string;
        Integer numB;
        if (PatchProxy.proxy(new Object[]{str, str2, str3, function1, map, function2}, this, changeQuickRedirect, false, 10, new Class[]{String.class, String.class, String.class, Function1.class, HashMap.class, Function1.class}, Void.TYPE).isSupported) {
            return;
        }
        if (!kotlin.jvm.internal.v.e(str, Constants.VIA_REPORT_TYPE_DATALINE) || map == null) {
            string = str2;
        } else {
            Object obj = map.get("joinUserId");
            String str4 = obj instanceof String ? (String) obj : null;
            if (str4 == null || str4.length() == 0) {
                string = str2;
            } else {
                k40.a aVar = k40.a.f229076a;
                aVar.c(str4);
                if (!(str2 == null || str2.length() == 0) || (numB = aVar.b(str4)) == null || (string = numB.toString()) == null) {
                    string = str2;
                } else {
                    map.put("playType", string);
                }
            }
        }
        h30.g gVar = h30.g.f225309a;
        if (string == null) {
            string = "";
        }
        gVar.b4(str, string).subscribe(HttpSubscriber.create(new c(function1, function2, str, map, str2, this, str3)));
    }
}