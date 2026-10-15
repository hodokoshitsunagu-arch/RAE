package cn.soulapp.cpnt_voiceparty.bean;

import cn.soul.android.plugin.ChangeQuickRedirect;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.google.gson.annotations.Expose;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.w;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomCreateParams.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b.\u0010/R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR$\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\bR$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0004\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\bR$\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0004\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR$\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0004\u001a\u0004\b \u0010\u0006\"\u0004\b!\u0010\bR$\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0004\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR0\u0010(\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'\u0018\u00010%8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00060"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/RoomCreateParams;", "Ljava/io/Serializable;", "", "roomTopic", "Ljava/lang/String;", "getRoomTopic", "()Ljava/lang/String;", "setRoomTopic", "(Ljava/lang/String;)V", "", "playType", "Ljava/lang/Integer;", "getPlayType", "()Ljava/lang/Integer;", "setPlayType", "(Ljava/lang/Integer;)V", "classifyCode", "getClassifyCode", "setClassifyCode", "backgroundId", "getBackgroundId", "setBackgroundId", "fmCode", "getFmCode", "setFmCode", "functionCodes", "getFunctionCodes", "setFunctionCodes", "joinCode", "getJoinCode", "setJoinCode", "createRoomSource", "getCreateRoomSource", "setCreateRoomSource", "_joinCode", "get_joinCode", "set_joinCode", "Lkotlin/Function1;", "Lcn/soulapp/cpnt_voiceparty/bean/f;", "Lkotlin/w;", "_createCb", "Lkotlin/jvm/functions/Function1;", "get_createCb", "()Lkotlin/jvm/functions/Function1;", "set_createCb", "(Lkotlin/jvm/functions/Function1;)V", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class RoomCreateParams implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Expose(deserialize = false, serialize = false)
    @Nullable
    private Function1<? super f, w> _createCb;

    @Nullable
    private String _joinCode;

    @Nullable
    private String backgroundId;

    @Nullable
    private Integer classifyCode;

    @Nullable
    private String createRoomSource;

    @Nullable
    private String fmCode;

    @Nullable
    private String functionCodes;

    @Nullable
    private String joinCode;

    @Nullable
    private Integer playType = 0;

    @Nullable
    private String roomTopic;

    @Nullable
    public final String getBackgroundId() {
        return this.backgroundId;
    }

    @Nullable
    public final Integer getClassifyCode() {
        return this.classifyCode;
    }

    @Nullable
    public final String getCreateRoomSource() {
        return this.createRoomSource;
    }

    @Nullable
    public final String getFmCode() {
        return this.fmCode;
    }

    @Nullable
    public final String getFunctionCodes() {
        return this.functionCodes;
    }

    @Nullable
    public final String getJoinCode() {
        return this.joinCode;
    }

    @Nullable
    public final Integer getPlayType() {
        return this.playType;
    }

    @Nullable
    public final String getRoomTopic() {
        return this.roomTopic;
    }

    @Nullable
    public final Function1<f, w> get_createCb() {
        return this._createCb;
    }

    @Nullable
    public final String get_joinCode() {
        return this._joinCode;
    }

    public final void setBackgroundId(@Nullable String str) {
        this.backgroundId = str;
    }

    public final void setClassifyCode(@Nullable Integer num) {
        this.classifyCode = num;
    }

    public final void setCreateRoomSource(@Nullable String str) {
        this.createRoomSource = str;
    }

    public final void setFmCode(@Nullable String str) {
        this.fmCode = str;
    }

    public final void setFunctionCodes(@Nullable String str) {
        this.functionCodes = str;
    }

    public final void setJoinCode(@Nullable String str) {
        this.joinCode = str;
    }

    public final void setPlayType(@Nullable Integer num) {
        this.playType = num;
    }

    public final void setRoomTopic(@Nullable String str) {
        this.roomTopic = str;
    }

    public final void set_createCb(@Nullable Function1<? super f, w> function1) {
        this._createCb = function1;
    }

    public final void set_joinCode(@Nullable String str) {
        this._joinCode = str;
    }
}