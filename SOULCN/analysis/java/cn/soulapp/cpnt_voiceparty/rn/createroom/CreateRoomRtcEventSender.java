package cn.soulapp.cpnt_voiceparty.rn.createroom;

import android.os.Handler;
import android.os.Looper;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.android.soul_rn_sdk.plugin.SoulRnNotificationPlugin;
import cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.v;
import kotlin.l;
import kotlin.ranges.n;
import kotlin.w;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: CreateRoomRtcEventSender.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J)\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0017\u0010\b\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0002J.\u0010\u0010\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fJ\u0006\u0010\u0011\u001a\u00020\u0006J\u0016\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fR\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/rn/createroom/CreateRoomRtcEventSender;", "", "", "method", "Lkotlin/Function1;", "Lcom/facebook/react/bridge/WritableMap;", "Lkotlin/w;", "Lkotlin/ExtensionFunctionType;", "build", l11l11I1111l.l111l1111lIl, "effectId", "kind", "", "progress", "state", MediationConstant.KEY_ERROR_CODE, ExpcompatUtils.COMPAT_VALUE_780, "c", "d", "Landroid/os/Handler;", "Landroid/os/Handler;", "mainHandler", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CreateRoomRtcEventSender {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final CreateRoomRtcEventSender f143690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Handler mainHandler;
    public static ChangeQuickRedirect changeQuickRedirect;

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f143690a = new CreateRoomRtcEventSender();
        mainHandler = new Handler(Looper.getMainLooper());
    }

    private CreateRoomRtcEventSender() {
    }

    private final void e(final String str, final Function1<? super WritableMap, w> function1) {
        if (PatchProxy.proxy(new Object[]{str, function1}, this, changeQuickRedirect, false, 2, new Class[]{String.class, Function1.class}, Void.TYPE).isSupported) {
            return;
        }
        mainHandler.post(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.rn.createroom.d
            @Override // java.lang.Runnable
            public final void run() {
                CreateRoomRtcEventSender.f(str, function1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(String method, Function1 build) {
        Object objM8140constructorimpl;
        if (PatchProxy.proxy(new Object[]{method, build}, null, changeQuickRedirect, true, 7, new Class[]{String.class, Function1.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(method, "$method");
        v.j(build, "$build");
        try {
            ChangeQuickRedirect changeQuickRedirect2 = Result.changeQuickRedirect;
            SoulRnNotificationPlugin soulRnNotificationPluginA = SoulRnNotificationPlugin.INSTANCE.a();
            if (soulRnNotificationPluginA == null) {
                r.f159305a.c("CreateRoomRtcEventSender", "RN 通知插件未就绪，丢弃事件 " + method);
                return;
            }
            WritableMap writableMapCreateMap = Arguments.createMap();
            build.invoke(writableMapCreateMap);
            soulRnNotificationPluginA.notifyRtcEngineEvent(method, writableMapCreateMap);
            r.f159305a.a("CreateRoomRtcEventSender", "发出事件 " + method);
            objM8140constructorimpl = Result.m8140constructorimpl(w.f231958a);
            Throwable thM8143exceptionOrNullimpl = Result.m8143exceptionOrNullimpl(objM8140constructorimpl);
            if (thM8143exceptionOrNullimpl == null) {
                return;
            }
            r.f159305a.c("CreateRoomRtcEventSender", "事件 " + method + " 发送失败：" + thM8143exceptionOrNullimpl.getMessage());
        } catch (Throwable th2) {
            ChangeQuickRedirect changeQuickRedirect3 = Result.changeQuickRedirect;
            objM8140constructorimpl = Result.m8140constructorimpl(l.a(th2));
        }
    }

    public final void b(@NotNull final String effectId, @NotNull final String kind, final int i11, final int i12, final int i13) {
        Object[] objArr = {effectId, kind, new Integer(i11), new Integer(i12), new Integer(i13)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 3, new Class[]{String.class, String.class, cls, cls, cls}, Void.TYPE).isSupported) {
            return;
        }
        v.j(effectId, "effectId");
        v.j(kind, "kind");
        e("onEffectDownloadProgress", new Function1<WritableMap, w>() { // from class: cn.soulapp.cpnt_voiceparty.rn.createroom.CreateRoomRtcEventSender$effectDownloadProgress$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(WritableMap writableMap) {
                invoke2(writableMap);
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WritableMap send) {
                if (PatchProxy.proxy(new Object[]{send}, this, changeQuickRedirect, false, 2, new Class[]{WritableMap.class}, Void.TYPE).isSupported) {
                    return;
                }
                v.j(send, "$this$send");
                send.putString("effectId", effectId);
                send.putString("kind", kind);
                send.putInt("progress", n.n(i11, 0, 100));
                send.putInt("state", i12);
                send.putInt(MediationConstant.KEY_ERROR_CODE, i13);
            }
        });
    }

    public final void c() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        e("onScreencastStarted", CreateRoomRtcEventSender$screencastStarted$1.INSTANCE);
    }

    public final void d(final int i11, final int i12) {
        Object[] objArr = {new Integer(i11), new Integer(i12)};
        ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
        Class cls = Integer.TYPE;
        if (PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 5, new Class[]{cls, cls}, Void.TYPE).isSupported) {
            return;
        }
        e("onScreencastStopped", new Function1<WritableMap, w>() { // from class: cn.soulapp.cpnt_voiceparty.rn.createroom.CreateRoomRtcEventSender$screencastStopped$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ w invoke(WritableMap writableMap) {
                invoke2(writableMap);
                return w.f231958a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WritableMap send) {
                if (PatchProxy.proxy(new Object[]{send}, this, changeQuickRedirect, false, 2, new Class[]{WritableMap.class}, Void.TYPE).isSupported) {
                    return;
                }
                v.j(send, "$this$send");
                send.putInt("state", i11);
                send.putInt(MediationConstant.KEY_ERROR_CODE, i12);
            }
        });
    }
}