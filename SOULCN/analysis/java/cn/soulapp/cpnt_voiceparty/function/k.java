package cn.soulapp.cpnt_voiceparty.function;

import cn.soul.android.plugin.ChangeQuickRedirect;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: GuessWordRoomFunction.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/function/k;", "Lcn/soulapp/cpnt_voiceparty/function/BaseRoomFunction;", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/h;", "h", "", "i", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class k extends BaseRoomFunction {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    @NotNull
    public cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h h() {
        return cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.M;
    }

    @Override // cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction
    public boolean i() {
        return false;
    }
}