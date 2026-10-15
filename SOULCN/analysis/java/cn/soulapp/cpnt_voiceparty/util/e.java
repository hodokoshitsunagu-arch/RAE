package cn.soulapp.cpnt_voiceparty.util;

import androidx.exifinterface.media.ExifInterface;
import cn.mate.android.config.SConfiger;
import cn.soul.android.base.block_frame.frame.IProvider;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.middle.platform.newui.UnifyUIStyleManager;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.insight.apm.battery.internal.BatteryMonitor;
import cn.soulapp.android.lib.common.api.ApiConstants;
import cn.soulapp.android.lib.common.utils.mmkv.SKV;
import cn.soulapp.cpnt_voiceparty.bean.LevelTrialInfo;
import cn.soulapp.cpnt_voiceparty.bean.PartyAutoJoinCountdownConfig;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import com.alipay.alipaysecuritysdk.common.config.Constant;
import com.baidu.platform.comapi.map.MapBundleKey;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.umeng.analytics.pro.bt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: ChatRoomABTestUtil.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\f\n\u0002\b'\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bq\u0010rJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002J\u001e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0005J\u001c\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f2\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0014\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u0012J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0012J\u0006\u0010\u001a\u001a\u00020\u0012J\u0006\u0010\u001b\u001a\u00020\u0012J\u0006\u0010\u001c\u001a\u00020\u0012J\u0006\u0010\u001d\u001a\u00020\u0012J\u0006\u0010\u001e\u001a\u00020\u0012J\u0006\u0010\u001f\u001a\u00020\u0012J\u0006\u0010 \u001a\u00020\u0012J\u0006\u0010!\u001a\u00020\u0012J\u0006\u0010\"\u001a\u00020\u0012J\u0006\u0010#\u001a\u00020\u0012J\b\u0010%\u001a\u0004\u0018\u00010$J\u0006\u0010&\u001a\u00020\u0007J\u0006\u0010'\u001a\u00020\u0012J\u0006\u0010(\u001a\u00020\u0007J\u0006\u0010)\u001a\u00020\u0012J\u000e\u0010*\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010+\u001a\u00020\u0012J\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010/\u001a\u00020\u00122\u0006\u0010.\u001a\u00020-J\u0006\u00100\u001a\u00020\u0012J\u0006\u00101\u001a\u00020\u0012J\u0006\u00102\u001a\u00020\u0012J\u0006\u00103\u001a\u00020\u0012J\u0006\u00104\u001a\u00020\u0012J\u0006\u00105\u001a\u00020\u0012J\u0006\u00106\u001a\u00020\u0012J\u0006\u00107\u001a\u00020\u0012J\u0006\u00108\u001a\u00020\u0012J\u0006\u00109\u001a\u00020\u0012J\u0006\u0010:\u001a\u00020\u0012J\u0006\u0010;\u001a\u00020\u0012J\u0006\u0010<\u001a\u00020\u0012J\u0006\u0010=\u001a\u00020\u0012J\u0019\u0010?\u001a\u00020\u00122\b\u0010>\u001a\u0004\u0018\u00010\u0002H\u0000¢\u0006\u0004\b?\u0010@J\u0006\u0010A\u001a\u00020\u0012J\u0006\u0010B\u001a\u00020\u0012J\u0006\u0010C\u001a\u00020\u0012J\u0006\u0010D\u001a\u00020\u0012J\u0006\u0010E\u001a\u00020\u0012J\u0006\u0010F\u001a\u00020\u0012J\u0006\u0010G\u001a\u00020\u0012J\u0006\u0010H\u001a\u00020\u0012J\u0006\u0010I\u001a\u00020\u0012J\u0006\u0010J\u001a\u00020\u0012J\u0006\u0010K\u001a\u00020\u0012J\u0006\u0010L\u001a\u00020\u0012J\u0006\u0010M\u001a\u00020\u0012J\u0006\u0010N\u001a\u00020\u0012J\u0006\u0010O\u001a\u00020\u0012J\u0006\u0010P\u001a\u00020\u0012J\u0006\u0010Q\u001a\u00020\u0012J\u0006\u0010R\u001a\u00020\u0012J\u0006\u0010S\u001a\u00020\u0002J\u0006\u0010T\u001a\u00020\u0012J\b\u0010V\u001a\u0004\u0018\u00010UJ\b\u0010X\u001a\u0004\u0018\u00010WJ\u0006\u0010Y\u001a\u00020\u0012J\u0006\u0010Z\u001a\u00020\u0012J\u0006\u0010[\u001a\u00020\u0012J\u0006\u0010\\\u001a\u00020\u0012J\u0006\u0010]\u001a\u00020\u0012J\u0006\u0010^\u001a\u00020\u0012J\u0006\u0010_\u001a\u00020\u0007J\u0006\u0010`\u001a\u00020\u0012J\u0006\u0010a\u001a\u00020\u0012J\u0006\u0010b\u001a\u00020\u0012R\u0018\u0010d\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010cR\u0018\u0010e\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010cR\u0018\u0010f\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010cR\u0018\u0010g\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010cR\u0018\u0010h\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010cR\u0018\u0010i\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010cR\u0014\u0010k\u001a\u00020W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010jR\u0018\u0010m\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010lR\u0018\u0010n\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010cR\u0018\u0010p\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010o¨\u0006s"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/util/e;", "", "", "o0", Constant.IN_KEY_USER_ID, "", MapBundleKey.MapObjKey.OBJ_LEVEL, "Lkotlin/w;", "r0", bt.aF, "n0", "Lcn/soulapp/cpnt_voiceparty/bean/LevelTrialInfo;", "trialInfo", "stateHint", "q0", "Lkotlin/Pair;", "t", "m0", "", "j", "i", "b0", ExifInterface.LATITUDE_SOUTH, "g", "Q", "O", "x", "J", "q", "B", "y", "z", "Z", "G", "H", "F", "Lcn/soul/android/base/block_frame/frame/IProvider;", "s", "p0", "c", "s0", "d", "D", "o", "f", "", "testKey", "A0", "u0", "d0", "e0", "f0", "g0", "h0", "R", "l", "m", "k", "n", "B0", "v0", "p", ApiConstants.Location.OUTPUT, "Y", "(Ljava/lang/String;)Z", "N", "z0", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.GPS_DIRECTION_TRUE, "U", "a0", "y0", "C", "w", "l0", "w0", "X", ExifInterface.LONGITUDE_WEST, "a", ExpcompatUtils.COMPAT_VALUE_780, "x0", "c0", "j0", "i0", "k0", "Lcn/soulapp/cpnt_voiceparty/bean/PartyAutoJoinCountdownConfig;", "r", "Lcn/soulapp/cpnt_voiceparty/bean/i;", "v", "M", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, ExifInterface.LONGITUDE_EAST, "I", "h", l11l11I1111l.l111l1111lIl, "t0", "K", "P", "L", "Ljava/lang/Boolean;", "enableKtvRandomPlayer", "batteryModeSwitch", "powerSaveUnifiedSwitch", "enableKtvUxOpt", "isLandingHistory", "isWeakRelationNewRecallEnable", "Lcn/soulapp/cpnt_voiceparty/bean/i;", "searchBubbleConfig", "Lcn/soulapp/cpnt_voiceparty/bean/PartyAutoJoinCountdownConfig;", "autoJoinCountdownConfig", "isAutoJoinCountdownEnable", "Ljava/lang/String;", "autoJoinCountdownCachedUserId", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final e f162158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static Boolean enableKtvRandomPlayer;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static Boolean batteryModeSwitch;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static Boolean powerSaveUnifiedSwitch;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static Boolean enableKtvUxOpt;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static Boolean isLandingHistory;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static Boolean isWeakRelationNewRecallEnable;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final cn.soulapp.cpnt_voiceparty.bean.i searchBubbleConfig;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static PartyAutoJoinCountdownConfig autoJoinCountdownConfig;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static Boolean isAutoJoinCountdownEnable;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private static String autoJoinCountdownCachedUserId;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 85, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f162158a = new e();
        searchBubbleConfig = new cn.soulapp.cpnt_voiceparty.bean.i(0, 0, null, 7, null);
    }

    private e() {
    }

    private final String o0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 81, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "room_owner_center_last_click_" + cn.soulapp.android.client.component.middle.platform.utils.user.a.w();
    }

    public final boolean A() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 75, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("218384", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean A0(char testKey) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{new Character(testKey)}, this, changeQuickRedirect, false, 33, new Class[]{Character.TYPE}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.y("212480", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == testKey;
    }

    public final boolean B() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 18, new Class[0], Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : dh.c.f222980a.getBoolean("chat_ktv_pay_topping_switch", false);
    }

    public final boolean B0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 48, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("213813", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean C() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 59, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (isLandingHistory == null) {
            ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
            isLandingHistory = Boolean.valueOf(((Character) n70.p.w("215430", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a');
        }
        Boolean bool = isLandingHistory;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean D(@NotNull String userId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{userId}, this, changeQuickRedirect, false, 30, new Class[]{String.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        kotlin.jvm.internal.v.j(userId, "userId");
        return b80.f0.f("new_user_tag_" + userId, false);
    }

    public final boolean E() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 76, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("218596", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean F() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 24, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("221182", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean G() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 22, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("221180", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean H() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 23, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("221181", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean I() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 77, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("219486", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean J() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 16, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("215629", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean K() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 82, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.y("221131", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean L() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 84, new Class[0], Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : !cn.soulapp.android.client.component.middle.platform.utils.user.a.B();
    }

    public final boolean M() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 74, new Class[0], Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : !UnifyUIStyleManager.f11898a.k();
    }

    public final boolean N() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 52, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return kotlin.jvm.internal.v.e(n70.p.y("213954", kotlin.jvm.internal.z.b(String.class), y70.a.a(kotlin.jvm.internal.z.b(String.class)), false), "a");
    }

    public final boolean O() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 14, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return kotlin.jvm.internal.v.e(n70.p.y("219524", kotlin.jvm.internal.z.b(String.class), y70.a.a(kotlin.jvm.internal.z.b(String.class)), false), "a");
    }

    public final boolean P() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 83, new Class[0], Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : !cn.soulapp.android.client.component.middle.platform.utils.user.a.B();
    }

    public final boolean Q() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 13, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return kotlin.jvm.internal.v.e(n70.p.y("216400", kotlin.jvm.internal.z.b(String.class), y70.a.a(kotlin.jvm.internal.z.b(String.class)), false), "a");
    }

    public final boolean R() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 40, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        if (((Character) n70.p.w("213032", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() != 'a') {
            if (((Character) n70.p.w("213032", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() != 'b') {
                return false;
            }
        }
        return true;
    }

    public final boolean S() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 11, new Class[0], Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : SConfiger.getBoolean("level_medal_switch", false);
    }

    public final boolean T() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 55, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("214143", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean U() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 56, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("214268", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean V() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 54, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("219193", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean W() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 64, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("216546", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean X() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 63, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("215804", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean Y(@Nullable String json) {
        Object objM8140constructorimpl;
        JsonElement jsonElement;
        boolean z11 = true;
        boolean asBoolean = false;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{json}, this, changeQuickRedirect, false, 51, new Class[]{String.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (json != null && json.length() != 0) {
            z11 = false;
        }
        if (z11) {
            return false;
        }
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            JsonElement jsonElement2 = JsonParser.parseString(json).getAsJsonObject().get("enableWeakRelationNewRecall");
            if (jsonElement2 != null) {
                if (jsonElement2.isJsonPrimitive()) {
                    asBoolean = jsonElement2.getAsJsonPrimitive().getAsBoolean();
                } else if ((jsonElement2 instanceof JsonObject) && (jsonElement = ((JsonObject) jsonElement2).get("value")) != null) {
                    asBoolean = jsonElement.getAsBoolean();
                }
            }
            objM8140constructorimpl = Result.m8140constructorimpl(Boolean.valueOf(asBoolean));
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(kotlin.l.a(th2));
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m8146isFailureimpl(objM8140constructorimpl)) {
            objM8140constructorimpl = bool;
        }
        return ((Boolean) objM8140constructorimpl).booleanValue();
    }

    public final boolean Z() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 21, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return kotlin.jvm.internal.v.e(n70.p.y("218858", kotlin.jvm.internal.z.b(String.class), y70.a.a(kotlin.jvm.internal.z.b(String.class)), false), ExpcompatUtils.COMPAT_VALUE_780);
    }

    public final boolean a() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 65, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("216360", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean a0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 57, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("214250", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean b() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 66, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("216360", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'b';
    }

    public final boolean b0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 10, new Class[0], Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : SConfiger.getBoolean("partyRingWallSwitch", false);
    }

    public final boolean c() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 27, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        return System.currentTimeMillis() - SKV.single().getLong("announcement_notify", 0L) > 3600000;
    }

    public final boolean c0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 68, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("216590", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean d() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 29, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        return System.currentTimeMillis() - SKV.single().getLong("planet_announcement_notify", 0L) > 3600000;
    }

    public final boolean d0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 35, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        return e0() || f0() || g0();
    }

    public final boolean e() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 79, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        return System.currentTimeMillis() - SKV.single().getLong(o0(), 0L) > com.igexin.push.f.b.d.f198219b;
    }

    public final boolean e0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 36, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("213106", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean f() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 32, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.y("212760", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean f0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 37, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("213106", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'b';
    }

    public final boolean g() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 12, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        HashMap map = (HashMap) dh.c.f222980a.getObj(HashMap.class, "group_chat_limit");
        if (map != null) {
            return kotlin.jvm.internal.v.e(map.get("chatroom_enterance"), Boolean.TRUE);
        }
        return false;
    }

    public final boolean g0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 38, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("213106", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'c';
    }

    public final boolean h() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 78, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("218817", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean h0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 39, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        return e0() || g0();
    }

    public final boolean i() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : SConfiger.getBoolean("doubleEnterBubbleFpsLimitSwitch", true);
    }

    @NotNull
    public final String i0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 70, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        String string = dh.c.f222980a.getString("android_power_save_config");
        return string == null ? "" : string;
    }

    public final boolean j() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Boolean.TYPE);
        return patchProxyResultProxy.isSupported ? ((Boolean) patchProxyResultProxy.result).booleanValue() : SConfiger.getBoolean("driftNoticeFpsLimitSwitch", true);
    }

    public final boolean j0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 69, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (powerSaveUnifiedSwitch == null) {
            ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
            char cCharValue = ((Character) n70.p.w("219587", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue();
            BatteryMonitor.INSTANCE.i("219587_" + cCharValue);
            powerSaveUnifiedSwitch = Boolean.valueOf(cCharValue == 'a');
        }
        Boolean bool = powerSaveUnifiedSwitch;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean k() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 46, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("213614", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean k0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 71, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("216387", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean l() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 44, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (enableKtvRandomPlayer == null) {
            ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
            enableKtvRandomPlayer = Boolean.valueOf(((Character) n70.p.w("213246", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a');
        }
        Boolean bool = enableKtvRandomPlayer;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean l0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 61, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("215528", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean m() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 45, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (enableKtvUxOpt == null) {
            enableKtvUxOpt = Boolean.TRUE;
        }
        Boolean bool = enableKtvUxOpt;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final void m0(@NotNull String userId) {
        if (PatchProxy.proxy(new Object[]{userId}, this, changeQuickRedirect, false, 7, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(userId, "userId");
        b80.f0.A("LEVEL_TRIAL_INFO_" + userId);
        b80.f0.A("LEVEL_TRIAL_STATE_" + userId);
    }

    public final boolean n() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 47, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (batteryModeSwitch == null) {
            ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
            batteryModeSwitch = Boolean.valueOf(((Character) n70.p.w("213641", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a');
        }
        Boolean bool = batteryModeSwitch;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final void n0(@NotNull String userId) {
        if (PatchProxy.proxy(new Object[]{userId}, this, changeQuickRedirect, false, 4, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(userId, "userId");
        b80.f0.A("LEVEL_UP_INFO_" + userId);
    }

    public final boolean o() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 31, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("213324", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean p() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 50, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (isWeakRelationNewRecallEnable == null) {
            ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
            isWeakRelationNewRecallEnable = Boolean.valueOf(Y((String) n70.p.w("219089", kotlin.jvm.internal.z.b(String.class), "", false)));
        }
        Boolean bool = isWeakRelationNewRecallEnable;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final void p0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 26, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SKV.single().putLong("announcement_notify", System.currentTimeMillis());
    }

    public final boolean q() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 17, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("219403", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final void q0(@NotNull String userId, @NotNull LevelTrialInfo trialInfo, int i11) {
        if (PatchProxy.proxy(new Object[]{userId, trialInfo, new Integer(i11)}, this, changeQuickRedirect, false, 5, new Class[]{String.class, LevelTrialInfo.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(userId, "userId");
        kotlin.jvm.internal.v.j(trialInfo, "trialInfo");
        b80.f0.y("LEVEL_TRIAL_INFO_" + userId, cn.soulapp.imlib.utils.j.b(trialInfo));
        b80.f0.v("LEVEL_TRIAL_STATE_" + userId, i11);
    }

    @Nullable
    public final PartyAutoJoinCountdownConfig r() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 72, new Class[0], PartyAutoJoinCountdownConfig.class);
        if (patchProxyResultProxy.isSupported) {
            return (PartyAutoJoinCountdownConfig) patchProxyResultProxy.result;
        }
        String strW = cn.soulapp.android.client.component.middle.platform.utils.user.a.w();
        if (isAutoJoinCountdownEnable == null || !kotlin.jvm.internal.v.e(autoJoinCountdownCachedUserId, strW)) {
            autoJoinCountdownCachedUserId = strW;
            PartyAutoJoinCountdownConfig partyAutoJoinCountdownConfig = null;
            try {
                ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
                String str = (String) n70.p.w("219602", kotlin.jvm.internal.z.b(String.class), "", false);
                if (!(str == null || kotlin.text.q.w(str))) {
                    PartyAutoJoinCountdownConfig partyAutoJoinCountdownConfig2 = (PartyAutoJoinCountdownConfig) cn.soulapp.imlib.utils.j.d(str, PartyAutoJoinCountdownConfig.class);
                    if (partyAutoJoinCountdownConfig2 == null) {
                        SoulHouseExtensionKt.u0(this, "AutoJoinCountdown", "实验值解析失败，回到对照组。json = " + str);
                    } else if (partyAutoJoinCountdownConfig2.isValid()) {
                        partyAutoJoinCountdownConfig = partyAutoJoinCountdownConfig2;
                    } else {
                        SoulHouseExtensionKt.u0(this, "AutoJoinCountdown", "实验值校验不通过，回到对照组。json = " + str);
                    }
                }
            } catch (Exception e11) {
                SoulHouseExtensionKt.u0(this, "AutoJoinCountdown", "读取实验异常，回到对照组。msg = " + e11.getMessage());
            }
            autoJoinCountdownConfig = partyAutoJoinCountdownConfig;
            isAutoJoinCountdownEnable = Boolean.valueOf(partyAutoJoinCountdownConfig != null);
        }
        return autoJoinCountdownConfig;
    }

    public final void r0(@NotNull String userId, int i11) {
        if (PatchProxy.proxy(new Object[]{userId, new Integer(i11)}, this, changeQuickRedirect, false, 2, new Class[]{String.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        kotlin.jvm.internal.v.j(userId, "userId");
        b80.f0.v("LEVEL_UP_INFO_" + userId, i11);
    }

    @Nullable
    public final IProvider s() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 25, new Class[0], IProvider.class);
        return patchProxyResultProxy.isSupported ? (IProvider) patchProxyResultProxy.result : SoulHouseExtensionKt.i0();
    }

    public final void s0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 28, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SKV.single().putLong("planet_announcement_notify", System.currentTimeMillis());
    }

    @Nullable
    public final Pair<LevelTrialInfo, Integer> t(@NotNull String userId) {
        LevelTrialInfo levelTrialInfo;
        boolean z11 = true;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{userId}, this, changeQuickRedirect, false, 6, new Class[]{String.class}, Pair.class);
        if (patchProxyResultProxy.isSupported) {
            return (Pair) patchProxyResultProxy.result;
        }
        kotlin.jvm.internal.v.j(userId, "userId");
        String strQ = b80.f0.q("LEVEL_TRIAL_INFO_" + userId, "");
        if (strQ != null && strQ.length() != 0) {
            z11 = false;
        }
        if (z11 || (levelTrialInfo = (LevelTrialInfo) cn.soulapp.imlib.utils.j.d(strQ, LevelTrialInfo.class)) == null) {
            return null;
        }
        return new Pair<>(levelTrialInfo, Integer.valueOf(b80.f0.j("LEVEL_TRIAL_STATE_" + userId, -1)));
    }

    public final void t0() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 80, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        SKV.single().putLong(o0(), System.currentTimeMillis());
    }

    public final int u(@NotNull String userId) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{userId}, this, changeQuickRedirect, false, 3, new Class[]{String.class}, Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        kotlin.jvm.internal.v.j(userId, "userId");
        return b80.f0.j("LEVEL_UP_INFO_" + userId, -1);
    }

    public final boolean u0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 34, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.y("213119", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    @Nullable
    public final cn.soulapp.cpnt_voiceparty.bean.i v() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 73, new Class[0], cn.soulapp.cpnt_voiceparty.bean.i.class);
        if (patchProxyResultProxy.isSupported) {
            return (cn.soulapp.cpnt_voiceparty.bean.i) patchProxyResultProxy.result;
        }
        if (M()) {
            return searchBubbleConfig;
        }
        return null;
    }

    public final boolean v0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 49, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("213889", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean w() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 60, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("218810", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean w0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 62, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("215769", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean x() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 15, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return kotlin.jvm.internal.v.e(n70.p.w("219530", kotlin.jvm.internal.z.b(String.class), y70.a.a(kotlin.jvm.internal.z.b(String.class)), false), "a");
    }

    public final boolean x0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 67, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("216399", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean y() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 19, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return kotlin.jvm.internal.v.e(n70.p.y("219079", kotlin.jvm.internal.z.b(String.class), y70.a.a(kotlin.jvm.internal.z.b(String.class)), false), "a");
    }

    public final boolean y0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 58, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("214319", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }

    public final boolean z() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 20, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return kotlin.jvm.internal.v.e(n70.p.w("219425", kotlin.jvm.internal.z.b(String.class), y70.a.a(kotlin.jvm.internal.z.b(String.class)), false), "a");
    }

    public final boolean z0() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 53, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChangeQuickRedirect changeQuickRedirect2 = n70.a.changeQuickRedirect;
        return ((Character) n70.p.w("214013", kotlin.jvm.internal.z.b(Character.class), y70.a.a(kotlin.jvm.internal.z.b(Character.class)), false)).charValue() == 'a';
    }
}