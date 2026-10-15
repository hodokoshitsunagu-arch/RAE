package cn.soulapp.cpnt_voiceparty.bean;

import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.UserFmAsset;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomBean.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0015\u0010\r\"\u0004\b\u0016\u0010\u000fR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u001c\u0010 \u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001a\"\u0004\b\"\u0010\u001cR\u001c\u0010#\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001a\"\u0004\b%\u0010\u001cR\u001e\u0010&\u001a\u0004\u0018\u00010'X\u0086\u000e¢\u0006\u0010\n\u0002\u0010,\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001e\u0010-\u001a\u0004\u0018\u00010'X\u0086\u000e¢\u0006\u0010\n\u0002\u0010,\u001a\u0004\b.\u0010)\"\u0004\b/\u0010+R\"\u00100\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0007\"\u0004\b3\u0010\tR\u001c\u00104\u001a\u0004\u0018\u000105X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010:\u001a\n\u0012\u0004\u0012\u00020<\u0018\u00010;X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u0007\"\u0004\b>\u0010\tR\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006E"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/RoomBean;", "Ljava/io/Serializable;", "()V", "historyNames", "", "Lcn/soulapp/cpnt_voiceparty/bean/HistoryBean;", "getHistoryNames", "()Ljava/util/List;", "setHistoryNames", "(Ljava/util/List;)V", "lastBackgroundClassifyId", "", "getLastBackgroundClassifyId", "()Ljava/lang/Integer;", "setLastBackgroundClassifyId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "lastBackgroundId", "getLastBackgroundId", "setLastBackgroundId", "lastClassifyCode", "getLastClassifyCode", "setLastClassifyCode", "lastPlayType", "", "getLastPlayType", "()Ljava/lang/String;", "setLastPlayType", "(Ljava/lang/String;)V", "lastPlayTypeMappingTabCode", "getLastPlayTypeMappingTabCode", "setLastPlayTypeMappingTabCode", "lastShowFmCode", "getLastShowFmCode", "setLastShowFmCode", "lastTopic", "getLastTopic", "setLastTopic", "lastTopicFromRec", "", "getLastTopicFromRec", "()Ljava/lang/Boolean;", "setLastTopicFromRec", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "newUser", "getNewUser", "setNewUser", "playTypeClassifyMappingList", "Lcn/soulapp/cpnt_voiceparty/bean/PlayTypeClassifyMapping;", "getPlayTypeClassifyMappingList", "setPlayTypeClassifyMappingList", "screenLiveCreateParams", "Lcn/soulapp/cpnt_voiceparty/bean/ScreenLiveCreateParams;", "getScreenLiveCreateParams", "()Lcn/soulapp/cpnt_voiceparty/bean/ScreenLiveCreateParams;", "setScreenLiveCreateParams", "(Lcn/soulapp/cpnt_voiceparty/bean/ScreenLiveCreateParams;)V", "userFmAssetList", "", "Lcn/soulapp/android/chatroom/bean/UserFmAsset;", "getUserFmAssetList", "setUserFmAssetList", "videoLiveCreateParams", "Lcn/soulapp/cpnt_voiceparty/bean/VideoLiveCreateParams;", "getVideoLiveCreateParams", "()Lcn/soulapp/cpnt_voiceparty/bean/VideoLiveCreateParams;", "setVideoLiveCreateParams", "(Lcn/soulapp/cpnt_voiceparty/bean/VideoLiveCreateParams;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class RoomBean implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private List<HistoryBean> historyNames;

    @Nullable
    private String lastShowFmCode;

    @Nullable
    private Boolean lastTopicFromRec;

    @Nullable
    private Boolean newUser;

    @Nullable
    private List<PlayTypeClassifyMapping> playTypeClassifyMappingList;

    @Nullable
    private ScreenLiveCreateParams screenLiveCreateParams;

    @Nullable
    private List<UserFmAsset> userFmAssetList;

    @Nullable
    private VideoLiveCreateParams videoLiveCreateParams;

    @Nullable
    private String lastPlayType = "";

    @Nullable
    private String lastPlayTypeMappingTabCode = "";

    @Nullable
    private String lastTopic = "";

    @Nullable
    private Integer lastClassifyCode = 0;

    @Nullable
    private Integer lastBackgroundId = 0;

    @Nullable
    private Integer lastBackgroundClassifyId = 0;

    @Nullable
    public final List<HistoryBean> getHistoryNames() {
        return this.historyNames;
    }

    @Nullable
    public final Integer getLastBackgroundClassifyId() {
        return this.lastBackgroundClassifyId;
    }

    @Nullable
    public final Integer getLastBackgroundId() {
        return this.lastBackgroundId;
    }

    @Nullable
    public final Integer getLastClassifyCode() {
        return this.lastClassifyCode;
    }

    @Nullable
    public final String getLastPlayType() {
        return this.lastPlayType;
    }

    @Nullable
    public final String getLastPlayTypeMappingTabCode() {
        return this.lastPlayTypeMappingTabCode;
    }

    @Nullable
    public final String getLastShowFmCode() {
        return this.lastShowFmCode;
    }

    @Nullable
    public final String getLastTopic() {
        return this.lastTopic;
    }

    @Nullable
    public final Boolean getLastTopicFromRec() {
        return this.lastTopicFromRec;
    }

    @Nullable
    public final Boolean getNewUser() {
        return this.newUser;
    }

    @Nullable
    public final List<PlayTypeClassifyMapping> getPlayTypeClassifyMappingList() {
        return this.playTypeClassifyMappingList;
    }

    @Nullable
    public final ScreenLiveCreateParams getScreenLiveCreateParams() {
        return this.screenLiveCreateParams;
    }

    @Nullable
    public final List<UserFmAsset> getUserFmAssetList() {
        return this.userFmAssetList;
    }

    @Nullable
    public final VideoLiveCreateParams getVideoLiveCreateParams() {
        return this.videoLiveCreateParams;
    }

    public final void setHistoryNames(@Nullable List<HistoryBean> list) {
        this.historyNames = list;
    }

    public final void setLastBackgroundClassifyId(@Nullable Integer num) {
        this.lastBackgroundClassifyId = num;
    }

    public final void setLastBackgroundId(@Nullable Integer num) {
        this.lastBackgroundId = num;
    }

    public final void setLastClassifyCode(@Nullable Integer num) {
        this.lastClassifyCode = num;
    }

    public final void setLastPlayType(@Nullable String str) {
        this.lastPlayType = str;
    }

    public final void setLastPlayTypeMappingTabCode(@Nullable String str) {
        this.lastPlayTypeMappingTabCode = str;
    }

    public final void setLastShowFmCode(@Nullable String str) {
        this.lastShowFmCode = str;
    }

    public final void setLastTopic(@Nullable String str) {
        this.lastTopic = str;
    }

    public final void setLastTopicFromRec(@Nullable Boolean bool) {
        this.lastTopicFromRec = bool;
    }

    public final void setNewUser(@Nullable Boolean bool) {
        this.newUser = bool;
    }

    public final void setPlayTypeClassifyMappingList(@Nullable List<PlayTypeClassifyMapping> list) {
        this.playTypeClassifyMappingList = list;
    }

    public final void setScreenLiveCreateParams(@Nullable ScreenLiveCreateParams screenLiveCreateParams) {
        this.screenLiveCreateParams = screenLiveCreateParams;
    }

    public final void setUserFmAssetList(@Nullable List<UserFmAsset> list) {
        this.userFmAssetList = list;
    }

    public final void setVideoLiveCreateParams(@Nullable VideoLiveCreateParams videoLiveCreateParams) {
        this.videoLiveCreateParams = videoLiveCreateParams;
    }
}