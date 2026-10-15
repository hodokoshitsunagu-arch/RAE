package cn.soulapp.cpnt_voiceparty.setting;

import cn.soul.android.plugin.ChangeQuickRedirect;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlin.w;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: FeatureEntranceModel.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B5\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\t\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0010\u0012\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018¢\u0006\u0004\b\u001d\u0010\u001eR\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001a\u001a\u0004\b\u0011\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/FeatureEntranceModel;", "", "", "a", "I", "()I", "setIcon", "(I)V", RemoteMessageConst.Notification.ICON, "", ExpcompatUtils.COMPAT_VALUE_780, "Ljava/lang/String;", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "name", "", "c", "Z", "d", "()Z", l11l11I1111l.l111l1111lIl, "(Z)V", "showRedPoint", "Lkotlin/Function0;", "Lkotlin/w;", "Lkotlin/jvm/functions/Function0;", "()Lkotlin/jvm/functions/Function0;", "onClick", AppAgent.CONSTRUCT, "(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class FeatureEntranceModel {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int icon;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private String name;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean showRedPoint;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Function0<w> onClick;

    public FeatureEntranceModel() {
        this(0, null, false, null, 15, null);
    }

    public FeatureEntranceModel(int i11, @NotNull String name, boolean z11, @NotNull Function0<w> onClick) {
        v.j(name, "name");
        v.j(onClick, "onClick");
        this.icon = i11;
        this.name = name;
        this.showRedPoint = z11;
        this.onClick = onClick;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getIcon() {
        return this.icon;
    }

    @NotNull
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final Function0<w> c() {
        return this.onClick;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getShowRedPoint() {
        return this.showRedPoint;
    }

    public final void e(boolean z11) {
        this.showRedPoint = z11;
    }

    public /* synthetic */ FeatureEntranceModel(int i11, String str, boolean z11, Function0 function0, int i12, q qVar) {
        this((i12 & 1) != 0 ? -1 : i11, (i12 & 2) != 0 ? "" : str, (i12 & 4) != 0 ? false : z11, (i12 & 8) != 0 ? AnonymousClass1.INSTANCE : function0);
    }
}