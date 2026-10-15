package h30;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.analyticsV2.Const;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.ss.android.vesdk.VERecordData;
import kotlin.Metadata;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: GiftStormBenefitV4Request.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0013\u0010\u0014J\t\u0010\u0003\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0005\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\fR\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lh30/d;", "", "", "toString", "", "hashCode", Const.HeartReason.OTHER, "", "equals", "stormItemId", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "giveUserId", ExpcompatUtils.COMPAT_VALUE_780, VERecordData.VIDEOCOUNTS, "I", "a", "()I", AppAgent.CONSTRUCT, "(Ljava/lang/String;Ljava/lang/String;I)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final /* data */ class d {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final String f225304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final String f225305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f225306c;

    public d(@NotNull String stormItemId, @NotNull String giveUserId, int i11) {
        v.j(stormItemId, "stormItemId");
        v.j(giveUserId, "giveUserId");
        this.f225304a = stormItemId;
        this.f225305b = giveUserId;
        this.f225306c = i11;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getF225306c() {
        return this.f225306c;
    }

    @NotNull
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF225305b() {
        return this.f225305b;
    }

    @NotNull
    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getF225304a() {
        return this.f225304a;
    }

    public boolean equals(@Nullable Object other) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (this == other) {
            return true;
        }
        if (!(other instanceof d)) {
            return false;
        }
        d dVar = (d) other;
        return v.e(this.f225304a, dVar.f225304a) && v.e(this.f225305b, dVar.f225305b) && this.f225306c == dVar.f225306c;
    }

    public int hashCode() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
        return patchProxyResultProxy.isSupported ? ((Integer) patchProxyResultProxy.result).intValue() : (((this.f225304a.hashCode() * 31) + this.f225305b.hashCode()) * 31) + this.f225306c;
    }

    @NotNull
    public String toString() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "GiftStormBenefitV4Request(stormItemId=" + this.f225304a + ", giveUserId=" + this.f225305b + ", counts=" + this.f225306c + ')';
    }
}