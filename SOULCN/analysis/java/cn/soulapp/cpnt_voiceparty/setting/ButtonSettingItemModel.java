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

/* JADX INFO: compiled from: ButtonSettingItemModel.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B?\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\r\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0014\u0012\u000e\b\u0002\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b¢\u0006\u0004\b\"\u0010#R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\u0013\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0003\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R(\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u001d\u001a\u0004\b\u000e\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/ButtonSettingItemModel;", "", "", "a", "Ljava/lang/CharSequence;", "d", "()Ljava/lang/CharSequence;", com.alipay.sdk.m.b0.d.f175386p, "(Ljava/lang/CharSequence;)V", "title", ExpcompatUtils.COMPAT_VALUE_780, "setDesc", SocialConstants.PARAM_APP_DESC, "", "c", "Ljava/lang/String;", "()Ljava/lang/String;", "f", "(Ljava/lang/String;)V", "buttonText", "", "Z", l11l11I1111l.l111l1111lIl, "()Z", "g", "(Z)V", "isHighlight", "Lkotlin/Function0;", "Lkotlin/w;", "Lkotlin/jvm/functions/Function0;", "()Lkotlin/jvm/functions/Function0;", "setOnButtonClick", "(Lkotlin/jvm/functions/Function0;)V", "onButtonClick", AppAgent.CONSTRUCT, "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class ButtonSettingItemModel {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private CharSequence title;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private CharSequence desc;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private String buttonText;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isHighlight;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private Function0<w> onButtonClick;

    public ButtonSettingItemModel() {
        this(null, null, null, false, null, 31, null);
    }

    public ButtonSettingItemModel(@NotNull CharSequence title, @NotNull CharSequence desc, @NotNull String buttonText, boolean z11, @NotNull Function0<w> onButtonClick) {
        v.j(title, "title");
        v.j(desc, "desc");
        v.j(buttonText, "buttonText");
        v.j(onButtonClick, "onButtonClick");
        this.title = title;
        this.desc = desc;
        this.buttonText = buttonText;
        this.isHighlight = z11;
        this.onButtonClick = onButtonClick;
    }

    @NotNull
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getButtonText() {
        return this.buttonText;
    }

    @NotNull
    /* JADX INFO: renamed from: b, reason: from getter */
    public final CharSequence getDesc() {
        return this.desc;
    }

    @NotNull
    public final Function0<w> c() {
        return this.onButtonClick;
    }

    @NotNull
    /* JADX INFO: renamed from: d, reason: from getter */
    public final CharSequence getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final boolean getIsHighlight() {
        return this.isHighlight;
    }

    public final void f(@NotNull String str) {
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 4, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(str, "<set-?>");
        this.buttonText = str;
    }

    public final void g(boolean z11) {
        this.isHighlight = z11;
    }

    public /* synthetic */ ButtonSettingItemModel(CharSequence charSequence, CharSequence charSequence2, String str, boolean z11, Function0 function0, int i11, q qVar) {
        this((i11 & 1) != 0 ? "" : charSequence, (i11 & 2) != 0 ? "" : charSequence2, (i11 & 4) == 0 ? str : "", (i11 & 8) != 0 ? true : z11, (i11 & 16) != 0 ? AnonymousClass1.INSTANCE : function0);
    }
}