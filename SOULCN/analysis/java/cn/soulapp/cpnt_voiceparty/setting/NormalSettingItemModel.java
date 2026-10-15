package cn.soulapp.cpnt_voiceparty.setting;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlin.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: NormalSettingItemModel.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001BU\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0014\u0012\b\b\u0002\u0010 \u001a\u00020\u0014\u0012\u000e\b\u0002\u0010'\u001a\b\u0012\u0004\u0012\u00020\"0!¢\u0006\u0004\b(\u0010)R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u0003\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\u0013\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001e\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0016\u001a\u0004\b\u0015\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\"\u0010 \u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001f\u0010\u001aR(\u0010'\u001a\b\u0012\u0004\u0012\u00020\"0!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010#\u001a\u0004\b\n\u0010$\"\u0004\b%\u0010&¨\u0006*"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/NormalSettingItemModel;", "", "", "a", "Ljava/lang/CharSequence;", "g", "()Ljava/lang/CharSequence;", com.alipay.sdk.m.b0.d.f175386p, "(Ljava/lang/CharSequence;)V", "title", ExpcompatUtils.COMPAT_VALUE_780, "setDesc", SocialConstants.PARAM_APP_DESC, "", "c", "Ljava/lang/String;", "()Ljava/lang/String;", "i", "(Ljava/lang/String;)V", "rightHintText", "", "d", "Z", "f", "()Z", "k", "(Z)V", "showRedPoint", l11l11I1111l.l111l1111lIl, "setShowArrow", "showArrow", "j", "showNewBadge", "Lkotlin/Function0;", "Lkotlin/w;", "Lkotlin/jvm/functions/Function0;", "()Lkotlin/jvm/functions/Function0;", "h", "(Lkotlin/jvm/functions/Function0;)V", "onClick", AppAgent.CONSTRUCT, "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZZZLkotlin/jvm/functions/Function0;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class NormalSettingItemModel {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private CharSequence title;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private CharSequence desc;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private String rightHintText;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean showRedPoint;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean showArrow;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean showNewBadge;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private Function0<w> onClick;

    public NormalSettingItemModel() {
        this(null, null, null, false, false, false, null, 127, null);
    }

    public NormalSettingItemModel(@NotNull CharSequence title, @NotNull CharSequence desc, @Nullable String str, boolean z11, boolean z12, boolean z13, @NotNull Function0<w> onClick) {
        v.j(title, "title");
        v.j(desc, "desc");
        v.j(onClick, "onClick");
        this.title = title;
        this.desc = desc;
        this.rightHintText = str;
        this.showRedPoint = z11;
        this.showArrow = z12;
        this.showNewBadge = z13;
        this.onClick = onClick;
    }

    @NotNull
    /* JADX INFO: renamed from: a, reason: from getter */
    public final CharSequence getDesc() {
        return this.desc;
    }

    @NotNull
    public final Function0<w> b() {
        return this.onClick;
    }

    @Nullable
    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getRightHintText() {
        return this.rightHintText;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getShowArrow() {
        return this.showArrow;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final boolean getShowNewBadge() {
        return this.showNewBadge;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final boolean getShowRedPoint() {
        return this.showRedPoint;
    }

    @NotNull
    /* JADX INFO: renamed from: g, reason: from getter */
    public final CharSequence getTitle() {
        return this.title;
    }

    public final void h(@NotNull Function0<w> function0) {
        if (PatchProxy.proxy(new Object[]{function0}, this, changeQuickRedirect, false, 4, new Class[]{Function0.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(function0, "<set-?>");
        this.onClick = function0;
    }

    public final void i(@Nullable String str) {
        this.rightHintText = str;
    }

    public final void j(boolean z11) {
        this.showNewBadge = z11;
    }

    public final void k(boolean z11) {
        this.showRedPoint = z11;
    }

    public /* synthetic */ NormalSettingItemModel(CharSequence charSequence, CharSequence charSequence2, String str, boolean z11, boolean z12, boolean z13, Function0 function0, int i11, q qVar) {
        this((i11 & 1) != 0 ? "" : charSequence, (i11 & 2) == 0 ? charSequence2 : "", (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? false : z11, (i11 & 16) != 0 ? true : z12, (i11 & 32) != 0 ? false : z13, (i11 & 64) != 0 ? AnonymousClass1.INSTANCE : function0);
    }
}