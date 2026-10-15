package cn.soulapp.cpnt_voiceparty.setting;

import cn.soul.android.plugin.ChangeQuickRedirect;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlin.w;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: SwitchSettingItemModel.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001BJ\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\r\u0012#\b\u0002\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00180\u0014¢\u0006\u0004\b\u001e\u0010\u001fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u0003\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\u0013\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010\"\u0004\b\u0011\u0010\u0012R=\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00180\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\n\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/SwitchSettingItemModel;", "", "", "a", "Ljava/lang/String;", "d", "()Ljava/lang/String;", com.alipay.sdk.m.b0.d.f175386p, "(Ljava/lang/String;)V", "title", ExpcompatUtils.COMPAT_VALUE_780, "setDesc", SocialConstants.PARAM_APP_DESC, "", "c", "Z", "()Z", l11l11I1111l.l111l1111lIl, "(Z)V", "switchChecked", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "isChecked", "Lkotlin/w;", "Lkotlin/jvm/functions/Function1;", "()Lkotlin/jvm/functions/Function1;", "setOnSwitchChange", "(Lkotlin/jvm/functions/Function1;)V", "onSwitchChange", AppAgent.CONSTRUCT, "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class SwitchSettingItemModel {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private String title;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private String desc;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean switchChecked;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private Function1<? super Boolean, w> onSwitchChange;

    public SwitchSettingItemModel() {
        this(null, null, false, null, 15, null);
    }

    public SwitchSettingItemModel(@NotNull String title, @NotNull String desc, boolean z11, @NotNull Function1<? super Boolean, w> onSwitchChange) {
        v.j(title, "title");
        v.j(desc, "desc");
        v.j(onSwitchChange, "onSwitchChange");
        this.title = title;
        this.desc = desc;
        this.switchChecked = z11;
        this.onSwitchChange = onSwitchChange;
    }

    @NotNull
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    @NotNull
    public final Function1<Boolean, w> b() {
        return this.onSwitchChange;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getSwitchChecked() {
        return this.switchChecked;
    }

    @NotNull
    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final void e(boolean z11) {
        this.switchChecked = z11;
    }

    public /* synthetic */ SwitchSettingItemModel(String str, String str2, boolean z11, Function1 function1, int i11, q qVar) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2, (i11 & 4) != 0 ? false : z11, (i11 & 8) != 0 ? AnonymousClass1.INSTANCE : function1);
    }
}