package cn.soulapp.cpnt_voiceparty.interceptor;

import a60.l;
import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import b80.n0;
import cn.android.lib.soul_entity.square.SquareTab;
import cn.android.lib.soul_interface.audio.IAudioService;
import cn.soul.android.component.annotation.Interceptor;
import cn.soul.android.component.exception.RouterException;
import cn.soul.android.component.facade.callback.InterceptorCallback;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soul.android.service.audio_service.HolderType;
import cn.soulapp.android.client.component.middle.platform.utils.application.AppListenerHelper;
import cn.soulapp.android.client.component.middle.platform.utils.l2;
import cn.soulapp.android.client.component.middle.platform.utils.mediacall.VoiceRtcEngine;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.bean.CreateOrJoinPrivateRoomBean;
import cn.soulapp.cpnt_voiceparty.dialog.ChatGameConfirmDialog;
import cn.soulapp.cpnt_voiceparty.soulhouse.ZoomOutManager;
import cn.soulapp.cpnt_voiceparty.ui.CreateChatRoomRouter;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.RoomIntentData;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.ss.texturerender.TextureRenderKeys;
import com.tencent.open.SocialConstants;
import com.umeng.commonsdk.framework.UMModuleRegister;
import com.walid.rxretrofit.HttpSubscriber;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.v;
import kotlin.text.q;
import kotlin.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import ty.s;
import z80.h;

/* JADX INFO: compiled from: CreateChatRoomInterceptor.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016Jb\u0010\u000e\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\u0016\b\u0002\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010\nH\u0002JJ\u0010\u000f\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0002J\u001c\u0010\u0014\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¨\u0006\u0017"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/interceptor/CreateChatRoomInterceptor;", "Ld7/a;", "", "sceneId", "", "privateStatus", "playType", "groupId", "targetUserIdEcpt", "gameId", "Lkotlin/Function1;", "", "Lkotlin/w;", "callBack", ExpcompatUtils.COMPAT_VALUE_780, "d", "Le7/d;", "node", "Lcn/soul/android/component/facade/callback/InterceptorCallback;", TextureRenderKeys.KEY_IS_CALLBACK, UMModuleRegister.PROCESS, AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
@Interceptor(name = "create_chat_room", priority = 3)
public final class CreateChatRoomInterceptor extends d7.a {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: compiled from: CreateChatRoomInterceptor.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/interceptor/CreateChatRoomInterceptor$a", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/CreateOrJoinPrivateRoomBean;", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class a extends s<CreateOrJoinPrivateRoomBean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f142878d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f142879e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f142880f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f142881g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ String f142882h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ String f142883i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, w> f142884j;

        /* JADX WARN: Multi-variable type inference failed */
        a(String str, int i11, String str2, String str3, String str4, String str5, Function1<? super Boolean, w> function1) {
            this.f142878d = str;
            this.f142879e = i11;
            this.f142880f = str2;
            this.f142881g = str3;
            this.f142882h = str4;
            this.f142883i = str5;
            this.f142884j = function1;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable CreateOrJoinPrivateRoomBean createOrJoinPrivateRoomBean) {
            if (PatchProxy.proxy(new Object[]{createOrJoinPrivateRoomBean}, this, changeQuickRedirect, false, 2, new Class[]{CreateOrJoinPrivateRoomBean.class}, Void.TYPE).isSupported || createOrJoinPrivateRoomBean == null) {
                return;
            }
            CreateChatRoomInterceptor createChatRoomInterceptor = CreateChatRoomInterceptor.this;
            String str = this.f142878d;
            int i11 = this.f142879e;
            String str2 = this.f142880f;
            String str3 = this.f142881g;
            String str4 = this.f142882h;
            String str5 = this.f142883i;
            Integer actionType = createOrJoinPrivateRoomBean.getActionType();
            if (actionType != null && actionType.intValue() == 1) {
                createChatRoomInterceptor.d(str, i11, str2, str3, str4, str5);
                return;
            }
            Integer actionType2 = createOrJoinPrivateRoomBean.getActionType();
            if (actionType2 == null || actionType2.intValue() != 2 || TextUtils.isEmpty(createOrJoinPrivateRoomBean.getRoomId())) {
                return;
            }
            l lVar = l.f1777a;
            RoomIntentData roomIntentData = new RoomIntentData();
            roomIntentData.setRoomId(createOrJoinPrivateRoomBean.getRoomId());
            roomIntentData.setJoinType(0);
            roomIntentData.setJoinCode(createOrJoinPrivateRoomBean.getJoinCode());
            roomIntentData.setSourceCode(SquareTab.SOUL_STAR_RANK);
            lVar.l(roomIntentData);
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
            Function1<Boolean, w> function1 = this.f142884j;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str, int i11, String str2, String str3, String str4, String str5, Function1<? super Boolean, w> function1) {
        if (PatchProxy.proxy(new Object[]{str, new Integer(i11), str2, str3, str4, str5, function1}, this, changeQuickRedirect, false, 3, new Class[]{String.class, Integer.TYPE, String.class, String.class, String.class, String.class, Function1.class}, Void.TYPE).isSupported) {
            return;
        }
        h30.g.f225309a.D0(str4).subscribe(HttpSubscriber.create(new a(str, i11, str2, str3, str4, str5, function1)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(String str, int i11, String str2, String str3, String str4, String str5) {
        if (PatchProxy.proxy(new Object[]{str, new Integer(i11), str2, str3, str4, str5}, this, changeQuickRedirect, false, 4, new Class[]{String.class, Integer.TYPE, String.class, String.class, String.class, String.class}, Void.TYPE).isSupported || str == null || VoiceRtcEngine.C().q()) {
            return;
        }
        IAudioService iAudioServiceC = j5.a.c();
        if (iAudioServiceC != null && iAudioServiceC.isRunning()) {
            if (iAudioServiceC.getHolderType() == HolderType.ChatRoom) {
                cn.soulapp.lib.widget.toast.e.u("你正在其他派对哦");
                cn.soulapp.cpnt_voiceparty.util.track.b.f162373a.h(6, (30 & 2) != 0 ? null : null, (30 & 4) != 0 ? null : null, (30 & 8) != 0 ? null : Boolean.valueOf(ZoomOutManager.f144296a.n()), (30 & 16) != 0 ? null : null);
                return;
            } else if (iAudioServiceC.getHolderType() == HolderType.Audio) {
                cn.soulapp.lib.widget.toast.e.u(iAudioServiceC.getHolderType().getToastDes());
                return;
            }
        }
        if (l2.f(true, HolderType.WereWolf) || lg.a.a(1101)) {
            return;
        }
        CreateChatRoomRouter createChatRoomRouter = new CreateChatRoomRouter();
        HashMap map = new HashMap();
        map.put("privateStatus", Integer.valueOf(i11));
        if (!(str4 == null || str4.length() == 0)) {
            map.put("joinUserId", cn.soulapp.android.client.component.middle.platform.utils.user.a.c(str4));
        }
        if (!(str5 == null || str5.length() == 0)) {
            map.put("gameId", str5);
        }
        map.put("ext_create_room_type", "create_private_chat_room");
        ChangeQuickRedirect changeQuickRedirect2 = w.changeQuickRedirect;
        createChatRoomRouter.z(str, (40 & 2) != 0 ? null : str2, (40 & 4) != 0 ? null : str3, (40 & 8) != 0 ? null : null, (40 & 16) != 0 ? null : map, (40 & 32) == 0 ? null : null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r16v0, types: [cn.soulapp.cpnt_voiceparty.dialog.ChatGameConfirmDialog$a] */
    /* JADX WARN: Type inference failed for: r17v1, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.util.Map] */
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
    @Override // d7.a
    public void process(@Nullable final e7.d dVar, @Nullable InterceptorCallback interceptorCallback) throws JSONException {
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        Bundle bundle4;
        String string;
        Bundle bundle5;
        Bundle bundle6;
        Bundle bundle7;
        String string2;
        Bundle bundle8;
        Bundle bundle9;
        Bundle bundle10;
        Bundle bundle11;
        String string3;
        Bundle bundle12;
        String string4;
        Bundle bundle13;
        String string5;
        Bundle bundle14;
        String string6;
        Bundle bundle15;
        Bundle bundle16;
        if (PatchProxy.proxy(new Object[]{dVar, interceptorCallback}, this, changeQuickRedirect, false, 2, new Class[]{e7.d.class, InterceptorCallback.class}, Void.TYPE).isSupported) {
            return;
        }
        Object string7 = null;
        String str = "";
        if (!q.u("/chat/createPrivateRoom", dVar != null ? dVar.d() : null, true)) {
            if (!q.u("/chat/createOrJoinPrivateRoom", dVar != null ? dVar.d() : null, true)) {
                if (q.u("/chat/createRoomFromParam", dVar != null ? dVar.d() : null, true)) {
                    String string8 = (dVar == null || (bundle16 = dVar.f223449g) == null) ? null : bundle16.getString("sceneId");
                    if (dVar != null && (bundle15 = dVar.f223449g) != null) {
                        string7 = bundle15.getString("playType");
                    }
                    new CreateChatRoomRouter().z(string8, (40 & 2) != 0 ? null : string7, (40 & 4) != 0 ? null : null, (40 & 8) != 0 ? null : null, (40 & 16) != 0 ? null : null, (40 & 32) == 0 ? null : null);
                    if (interceptorCallback != null) {
                        interceptorCallback.onInterrupt(new RouterException("create_room_from_param Interrupt"));
                        return;
                    }
                    return;
                }
                if (!q.u("/im/createChatRoomActivity", dVar != null ? dVar.d() : null, true)) {
                    if (!q.u("/chat/createChatRoom", dVar != null ? dVar.d() : null, true)) {
                        if (interceptorCallback != null) {
                            interceptorCallback.onContinue(dVar);
                            return;
                        }
                        return;
                    }
                }
                String str2 = (dVar == null || (bundle14 = dVar.f223449g) == null || (string6 = bundle14.getString("groupId")) == null) ? "" : string6;
                String str3 = (dVar == null || (bundle13 = dVar.f223449g) == null || (string5 = bundle13.getString("tagName")) == null) ? "" : string5;
                String str4 = (dVar == null || (bundle12 = dVar.f223449g) == null || (string4 = bundle12.getString("chatGroupId")) == null) ? "" : string4;
                String str5 = (dVar == null || (bundle11 = dVar.f223449g) == null || (string3 = bundle11.getString(SocialConstants.PARAM_SOURCE)) == null) ? "" : string3;
                String string9 = (dVar == null || (bundle10 = dVar.f223449g) == null) ? null : bundle10.getString("defaultTabCode");
                String string10 = (dVar == null || (bundle9 = dVar.f223449g) == null) ? null : bundle9.getString("defaultPlayType");
                if (dVar == null || (bundle8 = dVar.f223449g) == null || (string = bundle8.getString("groupJoinCode")) == null) {
                    string = "";
                }
                if (dVar != null && (bundle7 = dVar.f223449g) != null && (string2 = bundle7.getString("joinCode")) != null) {
                    str = string2;
                }
                String string11 = (dVar == null || (bundle6 = dVar.f223449g) == null) ? null : bundle6.getString("openSource");
                Object serializable = (dVar == null || (bundle5 = dVar.f223449g) == null) ? null : bundle5.getSerializable("extParams");
                string7 = serializable instanceof HashMap ? (HashMap) serializable : null;
                ?? map = string7 == null ? new HashMap() : string7;
                map.put("groupJoinCode", string);
                cn.soulapp.cpnt_voiceparty.bean.g gVar = new cn.soulapp.cpnt_voiceparty.bean.g();
                gVar.e(string9);
                gVar.d(string10);
                gVar.f(str);
                new CreateChatRoomRouter().x(str2, str3, (12 & 4) != 0 ? false : false, (12 & 8) != 0, (12 & 16) != 0 ? null : str4, (12 & 32) != 0 ? null : str5, (12 & 64) != 0 ? null : map, (12 & 128) != 0 ? null : gVar, (12 & 256) != 0 ? null : string11);
                if (interceptorCallback != null) {
                    interceptorCallback.onInterrupt(new RouterException("create_chat_room Interrupt"));
                    return;
                }
                return;
            }
        }
        Activity activityX = AppListenerHelper.x();
        FragmentActivity fragmentActivity = activityX instanceof FragmentActivity ? (FragmentActivity) activityX : null;
        if (fragmentActivity == null) {
            if (interceptorCallback != null) {
                interceptorCallback.onInterrupt(new RouterException("create_private_chat_room Interrupt"));
                return;
            }
            return;
        }
        String string12 = (dVar == null || (bundle4 = dVar.f223449g) == null) ? null : bundle4.getString("showConfirmDialog");
        final boolean zU = q.u("/chat/createPrivateRoom", dVar != null ? dVar.d() : null, true);
        String string13 = (dVar == null || (bundle3 = dVar.f223449g) == null) ? null : bundle3.getString("playType");
        final FragmentActivity fragmentActivity2 = fragmentActivity;
        final String str6 = string13;
        final Function0<w> function0 = new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.interceptor.CreateChatRoomInterceptor$process$runPermissionFlow$1
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: compiled from: CreateChatRoomInterceptor.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"cn/soulapp/cpnt_voiceparty/interceptor/CreateChatRoomInterceptor$process$runPermissionFlow$1$a", "Lz80/h;", "Ly80/a;", "permResult", "Lkotlin/w;", "onGranted", "result", "onDenied", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
            public static final class a extends h {
                public static ChangeQuickRedirect changeQuickRedirect;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                final /* synthetic */ e7.d f142885e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                final /* synthetic */ boolean f142886f;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                final /* synthetic */ CreateChatRoomInterceptor f142887g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                final /* synthetic */ String f142888h;

                a(e7.d dVar, boolean z11, CreateChatRoomInterceptor createChatRoomInterceptor, String str) {
                    this.f142885e = dVar;
                    this.f142886f = z11;
                    this.f142887g = createChatRoomInterceptor;
                    this.f142888h = str;
                }

                @Override // z80.h, z80.b
                public void onDenied(@NotNull y80.a result) {
                    if (PatchProxy.proxy(new Object[]{result}, this, changeQuickRedirect, false, 3, new Class[]{y80.a.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    v.j(result, "result");
                    n0.h("没有录音权限,请在系统设置开启!", new Object[0]);
                }

                @Override // z80.b
                public void onGranted(@NotNull y80.a permResult) {
                    String string;
                    String string2;
                    Bundle bundle;
                    Bundle bundle2;
                    Bundle bundle3;
                    Bundle bundle4;
                    Bundle bundle5;
                    if (PatchProxy.proxy(new Object[]{permResult}, this, changeQuickRedirect, false, 2, new Class[]{y80.a.class}, Void.TYPE).isSupported) {
                        return;
                    }
                    v.j(permResult, "permResult");
                    e7.d dVar = this.f142885e;
                    if (dVar == null || (bundle5 = dVar.f223449g) == null || (string = bundle5.getString("privateStatus")) == null) {
                        string = "0";
                    }
                    e7.d dVar2 = this.f142885e;
                    if (dVar2 == null || (bundle4 = dVar2.f223449g) == null || (string2 = bundle4.getString("sceneId")) == null) {
                        string2 = "";
                    }
                    String str = string2;
                    e7.d dVar3 = this.f142885e;
                    String string3 = (dVar3 == null || (bundle3 = dVar3.f223449g) == null) ? null : bundle3.getString("targetUserIdEcpt");
                    e7.d dVar4 = this.f142885e;
                    String string4 = (dVar4 == null || (bundle2 = dVar4.f223449g) == null) ? null : bundle2.getString("groupId");
                    e7.d dVar5 = this.f142885e;
                    String string5 = (dVar5 == null || (bundle = dVar5.f223449g) == null) ? null : bundle.getString("gameId");
                    if (this.f142886f) {
                        this.f142887g.d(str, Integer.parseInt(string), this.f142888h, string4, string3, string5);
                        return;
                    }
                    e7.d dVar6 = this.f142885e;
                    if (q.u("/chat/createOrJoinPrivateRoom", dVar6 != null ? dVar6.d() : null, true)) {
                        this.f142887g.b(str, Integer.parseInt(string), (64 & 4) != 0 ? null : this.f142888h, (64 & 8) != 0 ? null : string4, (64 & 16) != 0 ? null : string3, (64 & 32) != 0 ? null : string5, (64 & 64) != 0 ? null : null);
                    }
                }
            }

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
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported || cn.mate.android.utils.a.f10639a.d(fragmentActivity2)) {
                    return;
                }
                x80.a.C1791a.f246595i.a().a(fragmentActivity2).f(fragmentActivity2.getSupportFragmentManager()).i("Soul想访问你的麦克风").d("为了您能正常体验语音输入、语音变声、语音匹配、视频匹配等功能，Soul需要申请麦克风权限。如您拒绝授权，不影响您使用APP的其他功能。").b(new a(dVar, zU, this, str6)).c().m();
            }
        };
        if (zU && v.e("1", string12)) {
            String string14 = (dVar == null || (bundle2 = dVar.f223449g) == null) ? null : bundle2.getString("gameName");
            String str7 = string14 == null ? "" : string14;
            if (dVar != null && (bundle = dVar.f223449g) != null) {
                string7 = bundle.getString("gameIcon");
            }
            ?? r19 = string7 == null ? "" : string7;
            ?? r16 = ChatGameConfirmDialog.INSTANCE;
            FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
            v.i(supportFragmentManager, "activity.supportFragmentManager");
            r16.a(supportFragmentManager, str7, r19, string13 == null ? "" : string13, new Function0<w>() { // from class: cn.soulapp.cpnt_voiceparty.interceptor.CreateChatRoomInterceptor.process.1
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
                    function0.invoke();
                }
            }, AnonymousClass2.INSTANCE);
        } else {
            function0.invoke();
        }
        if (interceptorCallback != null) {
            interceptorCallback.onInterrupt(new RouterException("create_private_chat_room Interrupt"));
        }
    }
}