package cn.soulapp.cpnt_voiceparty.bean;

import cn.soul.android.plugin.ChangeQuickRedirect;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: compiled from: GroupConfigLimitModel.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/GroupConfigLimitModel;", "Ljava/io/Serializable;", "()V", "currSize", "", "getCurrSize", "()I", "setCurrSize", "(I)V", "limitSize", "getLimitSize", "setLimitSize", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class GroupConfigLimitModel implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;
    private int currSize;
    private int limitSize;

    public final int getCurrSize() {
        return this.currSize;
    }

    public final int getLimitSize() {
        return this.limitSize;
    }

    public final void setCurrSize(int i11) {
        this.currSize = i11;
    }

    public final void setLimitSize(int i11) {
        this.limitSize = i11;
    }
}