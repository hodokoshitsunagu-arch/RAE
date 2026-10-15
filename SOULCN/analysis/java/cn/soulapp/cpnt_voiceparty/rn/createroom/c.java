package cn.soulapp.cpnt_voiceparty.rn.createroom;

import android.os.Handler;
import android.os.Looper;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.analyticsV2.Const;
import cn.soulapp.cpnt_voiceparty.soulhouse.videolive.VideoLiveMaterialKind;
import cn.soulapp.cpnt_voiceparty.soulhouse.videolive.bean.VideoLiveMaterialItem;
import cn.soulapp.cpnt_voiceparty.soulhouse.videolive.r;
import com.baidu.platform.comapi.map.MapController;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.facebook.react.modules.appstate.AppStateModule;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.z0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.v;
import kotlin.text.q;
import kotlin.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: CreateRoomMaterialIndex.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\b\bÀ\u0002\u0018\u00002\u00020\u0001:\u00012B\t\b\u0002¢\u0006\u0004\b0\u00101J \u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u001e\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003J>\u0010\u0010\u001a\u00020\u00072\u001a\u0010\u000e\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00020\r2\u001a\u0010\u000f\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00020\rJ\u001c\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013J*\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003J\u0006\u0010\u0019\u001a\u00020\u0007R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR \u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001fR \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u001fR\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020(0'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010)R\u001d\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030+8\u0006¢\u0006\f\n\u0004\b\b\u0010,\u001a\u0004\b-\u0010.¨\u00063"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/rn/createroom/c;", "", "", "", "row", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/bean/VideoLiveMaterialItem;", "l", "Lkotlin/w;", "g", "effectId", "rnKind", "Lcn/soulapp/cpnt_voiceparty/rn/createroom/c$a;", "h", "", "effects", "backgrounds", "j", "", "timeoutMs", "Lkotlin/Function0;", "block", "c", "resourceUrl", "md5", "k", "f", "Landroid/os/Handler;", ExpcompatUtils.COMPAT_VALUE_780, "Landroid/os/Handler;", "mainHandler", "", "Ljava/util/Map;", "effectIndex", "d", "backgroundIndex", "", l11l11I1111l.l111l1111lIl, "Z", "loaded", "", "Ljava/lang/Runnable;", "Ljava/util/List;", "waiters", "", "Ljava/util/Set;", "i", "()Ljava/util/Set;", "RN_KINDS", AppAgent.CONSTRUCT, "()V", "a", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final c f143760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Handler mainHandler;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Map<String, a> effectIndex;
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Map<String, a> backgroundIndex;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private static boolean loaded;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final List<Runnable> waiters;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private static final Set<String> RN_KINDS;

    /* JADX INFO: compiled from: CreateRoomMaterialIndex.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0014J\t\u0010\u0003\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0005\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\r\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\fR\u0017\u0010\u0012\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/rn/createroom/c$a;", "", "", "toString", "", "hashCode", Const.HeartReason.OTHER, "", "equals", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/bean/VideoLiveMaterialItem;", "a", "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/bean/VideoLiveMaterialItem;", "()Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/bean/VideoLiveMaterialItem;", MapController.ITEM_LAYER_TAG, "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;", ExpcompatUtils.COMPAT_VALUE_780, "Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;", "()Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;", "kind", AppAgent.CONSTRUCT, "(Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/bean/VideoLiveMaterialItem;Lcn/soulapp/cpnt_voiceparty/soulhouse/videolive/VideoLiveMaterialKind;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final /* data */ class a {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        @NotNull
        private final VideoLiveMaterialItem item;

        /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
        @NotNull
        private final VideoLiveMaterialKind kind;

        public a(@NotNull VideoLiveMaterialItem item, @NotNull VideoLiveMaterialKind kind) {
            v.j(item, "item");
            v.j(kind, "kind");
            this.item = item;
            this.kind = kind;
        }

        @NotNull
        /* JADX INFO: renamed from: a, reason: from getter */
        public final VideoLiveMaterialItem getItem() {
            return this.item;
        }

        @NotNull
        /* JADX INFO: renamed from: b, reason: from getter */
        public final VideoLiveMaterialKind getKind() {
            return this.kind;
        }

        public boolean equals(@Nullable Object other) {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
            if (patchProxyResultProxy.isSupported) {
                return ((Boolean) patchProxyResultProxy.result).booleanValue();
            }
            if (this == other) {
                return true;
            }
            if (!(other instanceof a)) {
                return false;
            }
            a aVar = (a) other;
            return v.e(this.item, aVar.item) && this.kind == aVar.kind;
        }

        public int hashCode() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
            return patchProxyResultProxy.isSupported ? ((Integer) patchProxyResultProxy.result).intValue() : (this.item.hashCode() * 31) + this.kind.hashCode();
        }

        @NotNull
        public String toString() {
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
            if (patchProxyResultProxy.isSupported) {
                return (String) patchProxyResultProxy.result;
            }
            return "Entry(item=" + this.item + ", kind=" + this.kind + ')';
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 11, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        f143760a = new c();
        mainHandler = new Handler(Looper.getMainLooper());
        effectIndex = new LinkedHashMap();
        backgroundIndex = new LinkedHashMap();
        waiters = new ArrayList();
        RN_KINDS = z0.k("beauty", "trick", AppStateModule.APP_STATE_BACKGROUND);
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Ref$BooleanRef done, Function0 block) {
        if (PatchProxy.proxy(new Object[]{done, block}, null, changeQuickRedirect, true, 9, new Class[]{Ref$BooleanRef.class, Function0.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(done, "$done");
        v.j(block, "$block");
        if (done.element) {
            return;
        }
        done.element = true;
        block.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Ref$BooleanRef done, long j11, Runnable run) {
        if (PatchProxy.proxy(new Object[]{done, new Long(j11), run}, null, changeQuickRedirect, true, 10, new Class[]{Ref$BooleanRef.class, Long.TYPE, Runnable.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(done, "$done");
        v.j(run, "$run");
        if (done.element) {
            return;
        }
        r.f159305a.g("CreateRoomMaterialIndex", "等待索引超时 " + j11 + "ms，按当前索引应答");
        waiters.remove(run);
        run.run();
    }

    private final void g() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        List<Runnable> list = waiters;
        List listQ1 = CollectionsKt___CollectionsKt.q1(list);
        list.clear();
        Iterator it = listQ1.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0063  */
    /* JADX WARN: Code duplicated, block: B:43:0x0082  */
    /* JADX WARN: Code duplicated, block: B:55:0x009f  */
    private final VideoLiveMaterialItem l(Map<String, ? extends Object> row) {
        String str;
        String str2;
        String str3;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{row}, this, changeQuickRedirect, false, 4, new Class[]{Map.class}, VideoLiveMaterialItem.class);
        if (patchProxyResultProxy.isSupported) {
            return (VideoLiveMaterialItem) patchProxyResultProxy.result;
        }
        Object obj = row.get("id");
        String str4 = obj instanceof String ? (String) obj : null;
        if (str4 != null) {
            String str5 = str4.length() > 0 ? str4 : null;
            if (str5 != null) {
                Object obj2 = row.get("img");
                String str6 = obj2 instanceof String ? (String) obj2 : null;
                if (str6 == null) {
                    str = null;
                } else {
                    if (str6.length() > 0) {
                        str = str6;
                    } else {
                        str = null;
                    }
                }
                String str7 = null;
                Object obj3 = row.get("resourceUrl");
                String str8 = obj3 instanceof String ? (String) obj3 : null;
                if (str8 == null) {
                    str2 = null;
                } else {
                    if (str8.length() > 0) {
                        str2 = str8;
                    } else {
                        str2 = null;
                    }
                }
                Object obj4 = row.get("md5");
                String str9 = obj4 instanceof String ? (String) obj4 : null;
                if (str9 == null) {
                    str3 = null;
                } else {
                    if (str9.length() > 0) {
                        str3 = str9;
                    } else {
                        str3 = null;
                    }
                }
                return new VideoLiveMaterialItem(str5, str, str7, str2, str3, 4, null);
            }
        }
        return null;
    }

    public final void c(final long j11, @NotNull final Function0<w> block) {
        if (PatchProxy.proxy(new Object[]{new Long(j11), block}, this, changeQuickRedirect, false, 5, new Class[]{Long.TYPE, Function0.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(block, "block");
        if (loaded || (!effectIndex.isEmpty()) || (!backgroundIndex.isEmpty())) {
            block.invoke();
            return;
        }
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        final Runnable runnable = new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.rn.createroom.a
            @Override // java.lang.Runnable
            public final void run() {
                c.d(ref$BooleanRef, block);
            }
        };
        waiters.add(runnable);
        mainHandler.postDelayed(new Runnable() { // from class: cn.soulapp.cpnt_voiceparty.rn.createroom.b
            @Override // java.lang.Runnable
            public final void run() {
                c.e(ref$BooleanRef, j11, runnable);
            }
        }, j11);
    }

    public final void f() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        effectIndex.clear();
        backgroundIndex.clear();
        waiters.clear();
        loaded = false;
    }

    @Nullable
    public final a h(@Nullable String effectId, @Nullable String rnKind) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{effectId, rnKind}, this, changeQuickRedirect, false, 2, new Class[]{String.class, String.class}, a.class);
        if (patchProxyResultProxy.isSupported) {
            return (a) patchProxyResultProxy.result;
        }
        if (effectId != null) {
            if (!(effectId.length() > 0)) {
                effectId = null;
            }
            if (effectId != null) {
                if (v.e(rnKind, AppStateModule.APP_STATE_BACKGROUND)) {
                    a aVar = backgroundIndex.get(effectId);
                    return aVar == null ? effectIndex.get(effectId) : aVar;
                }
                a aVar2 = effectIndex.get(effectId);
                return aVar2 == null ? backgroundIndex.get(effectId) : aVar2;
            }
        }
        return null;
    }

    @NotNull
    public final Set<String> i() {
        return RN_KINDS;
    }

    public final void j(@NotNull List<? extends Map<String, ? extends Object>> effects, @NotNull List<? extends Map<String, ? extends Object>> backgrounds) {
        String id2;
        String id3;
        if (PatchProxy.proxy(new Object[]{effects, backgrounds}, this, changeQuickRedirect, false, 3, new Class[]{List.class, List.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(effects, "effects");
        v.j(backgrounds, "backgrounds");
        effectIndex.clear();
        backgroundIndex.clear();
        Iterator<T> it = effects.iterator();
        while (it.hasNext()) {
            VideoLiveMaterialItem videoLiveMaterialItemL = f143760a.l((Map) it.next());
            if (videoLiveMaterialItemL != null && (id3 = videoLiveMaterialItemL.getId()) != null) {
                effectIndex.put(id3, new a(videoLiveMaterialItemL, VideoLiveMaterialKind.INSTANCE.a(videoLiveMaterialItemL, false)));
            }
        }
        Iterator<T> it2 = backgrounds.iterator();
        while (it2.hasNext()) {
            VideoLiveMaterialItem videoLiveMaterialItemL2 = f143760a.l((Map) it2.next());
            if (videoLiveMaterialItemL2 != null && (id2 = videoLiveMaterialItemL2.getId()) != null) {
                backgroundIndex.put(id2, new a(videoLiveMaterialItemL2, VideoLiveMaterialKind.INSTANCE.a(videoLiveMaterialItemL2, true)));
            }
        }
        loaded = true;
        r.f159305a.a("CreateRoomMaterialIndex", "索引就绪（RN 桥接）：特效 " + effectIndex.size() + " 项、背景 " + backgroundIndex.size() + " 项");
        g();
    }

    @NotNull
    public final a k(@NotNull String effectId, @NotNull String resourceUrl, @NotNull String rnKind, @Nullable String md5) {
        a aVar;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{effectId, resourceUrl, rnKind, md5}, this, changeQuickRedirect, false, 7, new Class[]{String.class, String.class, String.class, String.class}, a.class);
        if (patchProxyResultProxy.isSupported) {
            return (a) patchProxyResultProxy.result;
        }
        v.j(effectId, "effectId");
        v.j(resourceUrl, "resourceUrl");
        v.j(rnKind, "rnKind");
        if (v.e(rnKind, AppStateModule.APP_STATE_BACKGROUND)) {
            aVar = new a(new VideoLiveMaterialItem(effectId, resourceUrl, null, null, md5, 12, null), VideoLiveMaterialKind.VIRTUAL_BACKGROUND);
        } else {
            aVar = new a(new VideoLiveMaterialItem(effectId, null, null, resourceUrl, md5, 6, null), q.H(effectId, "video_segmentation_blur", false, 2, null) ? VideoLiveMaterialKind.BACKGROUND_BLUR : VideoLiveMaterialKind.STICKER);
        }
        (aVar.getKind().isBackground() ? backgroundIndex : effectIndex).put(effectId, aVar);
        r.f159305a.a("CreateRoomMaterialIndex", "索引缺失，按桥接入参合成 id=" + effectId + " kind=" + aVar.getKind());
        return aVar;
    }
}