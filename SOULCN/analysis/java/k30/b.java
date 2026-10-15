package k30;

import cn.mate.android.config.SConfiger;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.client.component.middle.platform.utils.f4;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.imlib.utils.j;
import cn.soulapp.lib.utils.ext.n;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: CreateRoomPageHelper.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J \u0010\n\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0006\u0010\f\u001a\u00020\u0005J\u0006\u0010\r\u001a\u00020\u0005¨\u0006\u0010"}, d2 = {"Lk30/b;", "", "Lk30/a;", l11l11I1111l.l111l1111lIl, "config", "", "c", "d", "hasContainChannel", "isVersionController", "f", "g", "a", ExpcompatUtils.COMPAT_VALUE_780, AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final b f229063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private static Boolean f229064b;
    public static ChangeQuickRedirect changeQuickRedirect;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 9, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f229063a = new b();
    }

    private b() {
    }

    private final boolean c(a config) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{config}, this, changeQuickRedirect, false, 5, new Class[]{a.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        List<String> listA = config.a();
        return (listA != null ? listA.size() : 0) > 0;
    }

    private final boolean d(a config) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{config}, this, changeQuickRedirect, false, 6, new Class[]{a.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        String str = mf.a.f234035c;
        SoulHouseExtensionKt.w0(this, "CreateRoomPageHelper", "isVersionInRange: appVersionCode = " + str);
        long jE = n.e(config.getF229060a());
        if (str == null) {
            str = "";
        }
        return jE <= f4.c(str);
    }

    private final a e() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], a.class);
        if (patchProxyResultProxy.isSupported) {
            return (a) patchProxyResultProxy.result;
        }
        String string = SConfiger.getString("create_room_page_game_tab_corner_switch");
        return string == null || string.length() == 0 ? new a(null, null, null, 7, null) : (a) j.d(string, a.class);
    }

    private final boolean f(a config, boolean hasContainChannel, boolean isVersionController) {
        Object[] objArr = {config, new Byte(hasContainChannel ? (byte) 1 : (byte) 0), new Byte(isVersionController ? (byte) 1 : (byte) 0)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Boolean.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 7, new Class[]{a.class, cls, cls}, cls);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        String f229060a = config.getF229060a();
        return !(f229060a == null || f229060a.length() == 0) && v.e(config.getF229062c(), Boolean.FALSE) && hasContainChannel && isVersionController;
    }

    private final boolean g(a config, boolean isVersionController) {
        Object[] objArr = {config, new Byte(isVersionController ? (byte) 1 : (byte) 0)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Boolean.TYPE;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 8, new Class[]{a.class, cls}, cls);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        String f229060a = config.getF229060a();
        return !(f229060a == null || f229060a.length() == 0) && v.e(config.getF229062c(), Boolean.FALSE) && isVersionController;
    }

    public final boolean a() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (f229064b == null) {
            f229064b = Boolean.valueOf(SConfiger.getBoolean("create_room_page_game_tab_switch", true));
        }
        Boolean bool = f229064b;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean b() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (!a()) {
            return false;
        }
        a aVarE = e();
        if (aVarE == null) {
            return true;
        }
        boolean zC = c(aVarE);
        boolean zD = d(aVarE);
        if (!zC) {
            if (g(aVarE, zD)) {
                return false;
            }
            Boolean f229062c = aVarE.getF229062c();
            if (f229062c != null) {
                return f229062c.booleanValue();
            }
            return true;
        }
        String strE = cn.soulapp.android.client.component.middle.platform.utils.user.a.e();
        SoulHouseExtensionKt.w0(this, "CreateRoomPageHelper", "channel = " + strE);
        List<String> listA = aVarE.a();
        return !f(aVarE, listA != null ? listA.contains(strE) : false, zD);
    }
}