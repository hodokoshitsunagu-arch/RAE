package cn.android.lib.soul_entity;

import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.analyticsV2.Const;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: PlayTypeModel.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b^\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u008d\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u001aJ\u000b\u0010L\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010.J\u0010\u0010[\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010.J\u0010\u0010\\\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010.J\u0010\u0010]\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010.J\u000b\u0010^\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0096\u0002\u0010b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010cJ\u0013\u0010d\u001a\u00020e2\b\u0010f\u001a\u0004\u0018\u00010gHÖ\u0003J\t\u0010h\u001a\u00020\u0006HÖ\u0001J\t\u0010i\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001c\"\u0004\b \u0010\u001eR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001c\"\u0004\b\"\u0010\u001eR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001c\"\u0004\b$\u0010\u001eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001c\"\u0004\b&\u0010\u001eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u001c\"\u0004\b(\u0010\u001eR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u001c\"\u0004\b*\u0010\u001eR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001c\"\u0004\b,\u0010\u001eR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u00101\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u001c\"\u0004\b3\u0010\u001eR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u001c\"\u0004\b5\u0010\u001eR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u001c\"\u0004\b7\u0010\u001eR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u001c\"\u0004\b9\u0010\u001eR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u001c\"\u0004\b;\u0010\u001eR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u001c\"\u0004\b=\u0010\u001eR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\u001c\"\u0004\b?\u0010\u001eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u001c\"\u0004\bA\u0010\u001eR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u001c\"\u0004\bC\u0010\u001eR\u001e\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u00101\u001a\u0004\bD\u0010.\"\u0004\bE\u00100R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010\u001c\"\u0004\bG\u0010\u001eR\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u00101\u001a\u0004\bH\u0010.\"\u0004\bI\u00100R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u00101\u001a\u0004\bJ\u0010.\"\u0004\bK\u00100¨\u0006j"}, d2 = {"Lcn/android/lib/soul_entity/PlayTypeModel;", "Ljava/io/Serializable;", "daytimeUrl", "", "nighttimeUrl", "width", "", "height", "playType", "previewIconUrl", "dayCardBgStartColor", "dayCardBgEndColor", "nightCardBgStartColor", "nightCardBgEndColor", "dayCardBgColorV2", "nightCardBgColorV2", "dayCardStatusLabelColor", "nightCardStatusLabelColor", "dayCardStatusLabelColorV2", "nightCardStatusLabelColorV2", "playAlias", "gameIconUrl", "gameIconUrlV2", "nightGameIconUrlV2", "nightGameIconUrl", "showStatus", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getDayCardBgColorV2", "()Ljava/lang/String;", "setDayCardBgColorV2", "(Ljava/lang/String;)V", "getDayCardBgEndColor", "setDayCardBgEndColor", "getDayCardBgStartColor", "setDayCardBgStartColor", "getDayCardStatusLabelColor", "setDayCardStatusLabelColor", "getDayCardStatusLabelColorV2", "setDayCardStatusLabelColorV2", "getDaytimeUrl", "setDaytimeUrl", "getGameIconUrl", "setGameIconUrl", "getGameIconUrlV2", "setGameIconUrlV2", "getHeight", "()Ljava/lang/Integer;", "setHeight", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getNightCardBgColorV2", "setNightCardBgColorV2", "getNightCardBgEndColor", "setNightCardBgEndColor", "getNightCardBgStartColor", "setNightCardBgStartColor", "getNightCardStatusLabelColor", "setNightCardStatusLabelColor", "getNightCardStatusLabelColorV2", "setNightCardStatusLabelColorV2", "getNightGameIconUrl", "setNightGameIconUrl", "getNightGameIconUrlV2", "setNightGameIconUrlV2", "getNighttimeUrl", "setNighttimeUrl", "getPlayAlias", "setPlayAlias", "getPlayType", "setPlayType", "getPreviewIconUrl", "setPreviewIconUrl", "getShowStatus", "setShowStatus", "getWidth", "setWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcn/android/lib/soul_entity/PlayTypeModel;", "equals", "", Const.HeartReason.OTHER, "", "hashCode", "toString", "lib-entity_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final /* data */ class PlayTypeModel implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private String dayCardBgColorV2;

    @Nullable
    private String dayCardBgEndColor;

    @Nullable
    private String dayCardBgStartColor;

    @Nullable
    private String dayCardStatusLabelColor;

    @Nullable
    private String dayCardStatusLabelColorV2;

    @Nullable
    private String daytimeUrl;

    @Nullable
    private String gameIconUrl;

    @Nullable
    private String gameIconUrlV2;

    @Nullable
    private Integer height;

    @Nullable
    private String nightCardBgColorV2;

    @Nullable
    private String nightCardBgEndColor;

    @Nullable
    private String nightCardBgStartColor;

    @Nullable
    private String nightCardStatusLabelColor;

    @Nullable
    private String nightCardStatusLabelColorV2;

    @Nullable
    private String nightGameIconUrl;

    @Nullable
    private String nightGameIconUrlV2;

    @Nullable
    private String nighttimeUrl;

    @Nullable
    private String playAlias;

    @Nullable
    private Integer playType;

    @Nullable
    private String previewIconUrl;

    @Nullable
    private Integer showStatus;

    @Nullable
    private Integer width;

    public PlayTypeModel() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 4194303, null);
    }

    public PlayTypeModel(@Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable String str14, @Nullable String str15, @Nullable String str16, @Nullable String str17, @Nullable String str18, @Nullable Integer num4) {
        this.daytimeUrl = str;
        this.nighttimeUrl = str2;
        this.width = num;
        this.height = num2;
        this.playType = num3;
        this.previewIconUrl = str3;
        this.dayCardBgStartColor = str4;
        this.dayCardBgEndColor = str5;
        this.nightCardBgStartColor = str6;
        this.nightCardBgEndColor = str7;
        this.dayCardBgColorV2 = str8;
        this.nightCardBgColorV2 = str9;
        this.dayCardStatusLabelColor = str10;
        this.nightCardStatusLabelColor = str11;
        this.dayCardStatusLabelColorV2 = str12;
        this.nightCardStatusLabelColorV2 = str13;
        this.playAlias = str14;
        this.gameIconUrl = str15;
        this.gameIconUrlV2 = str16;
        this.nightGameIconUrlV2 = str17;
        this.nightGameIconUrl = str18;
        this.showStatus = num4;
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDaytimeUrl() {
        return this.daytimeUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getNightCardBgEndColor() {
        return this.nightCardBgEndColor;
    }

    @Nullable
    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getDayCardBgColorV2() {
        return this.dayCardBgColorV2;
    }

    @Nullable
    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getNightCardBgColorV2() {
        return this.nightCardBgColorV2;
    }

    @Nullable
    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getDayCardStatusLabelColor() {
        return this.dayCardStatusLabelColor;
    }

    @Nullable
    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getNightCardStatusLabelColor() {
        return this.nightCardStatusLabelColor;
    }

    @Nullable
    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getDayCardStatusLabelColorV2() {
        return this.dayCardStatusLabelColorV2;
    }

    @Nullable
    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getNightCardStatusLabelColorV2() {
        return this.nightCardStatusLabelColorV2;
    }

    @Nullable
    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getPlayAlias() {
        return this.playAlias;
    }

    @Nullable
    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getGameIconUrl() {
        return this.gameIconUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getGameIconUrlV2() {
        return this.gameIconUrlV2;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNighttimeUrl() {
        return this.nighttimeUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getNightGameIconUrlV2() {
        return this.nightGameIconUrlV2;
    }

    @Nullable
    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getNightGameIconUrl() {
        return this.nightGameIconUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component22, reason: from getter */
    public final Integer getShowStatus() {
        return this.showStatus;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getWidth() {
        return this.width;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getHeight() {
        return this.height;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getPlayType() {
        return this.playType;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPreviewIconUrl() {
        return this.previewIconUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getDayCardBgStartColor() {
        return this.dayCardBgStartColor;
    }

    @Nullable
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getDayCardBgEndColor() {
        return this.dayCardBgEndColor;
    }

    @Nullable
    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getNightCardBgStartColor() {
        return this.nightCardBgStartColor;
    }

    @NotNull
    public final PlayTypeModel copy(@Nullable String daytimeUrl, @Nullable String nighttimeUrl, @Nullable Integer width, @Nullable Integer height, @Nullable Integer playType, @Nullable String previewIconUrl, @Nullable String dayCardBgStartColor, @Nullable String dayCardBgEndColor, @Nullable String nightCardBgStartColor, @Nullable String nightCardBgEndColor, @Nullable String dayCardBgColorV2, @Nullable String nightCardBgColorV2, @Nullable String dayCardStatusLabelColor, @Nullable String nightCardStatusLabelColor, @Nullable String dayCardStatusLabelColorV2, @Nullable String nightCardStatusLabelColorV2, @Nullable String playAlias, @Nullable String gameIconUrl, @Nullable String gameIconUrlV2, @Nullable String nightGameIconUrlV2, @Nullable String nightGameIconUrl, @Nullable Integer showStatus) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{daytimeUrl, nighttimeUrl, width, height, playType, previewIconUrl, dayCardBgStartColor, dayCardBgEndColor, nightCardBgStartColor, nightCardBgEndColor, dayCardBgColorV2, nightCardBgColorV2, dayCardStatusLabelColor, nightCardStatusLabelColor, dayCardStatusLabelColorV2, nightCardStatusLabelColorV2, playAlias, gameIconUrl, gameIconUrlV2, nightGameIconUrlV2, nightGameIconUrl, showStatus}, this, changeQuickRedirect, false, 2, new Class[]{String.class, String.class, Integer.class, Integer.class, Integer.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, Integer.class}, PlayTypeModel.class);
        return patchProxyResultProxy.isSupported ? (PlayTypeModel) patchProxyResultProxy.result : new PlayTypeModel(daytimeUrl, nighttimeUrl, width, height, playType, previewIconUrl, dayCardBgStartColor, dayCardBgEndColor, nightCardBgStartColor, nightCardBgEndColor, dayCardBgColorV2, nightCardBgColorV2, dayCardStatusLabelColor, nightCardStatusLabelColor, dayCardStatusLabelColorV2, nightCardStatusLabelColorV2, playAlias, gameIconUrl, gameIconUrlV2, nightGameIconUrlV2, nightGameIconUrl, showStatus);
    }

    public boolean equals(@Nullable Object other) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayTypeModel)) {
            return false;
        }
        PlayTypeModel playTypeModel = (PlayTypeModel) other;
        return v.e(this.daytimeUrl, playTypeModel.daytimeUrl) && v.e(this.nighttimeUrl, playTypeModel.nighttimeUrl) && v.e(this.width, playTypeModel.width) && v.e(this.height, playTypeModel.height) && v.e(this.playType, playTypeModel.playType) && v.e(this.previewIconUrl, playTypeModel.previewIconUrl) && v.e(this.dayCardBgStartColor, playTypeModel.dayCardBgStartColor) && v.e(this.dayCardBgEndColor, playTypeModel.dayCardBgEndColor) && v.e(this.nightCardBgStartColor, playTypeModel.nightCardBgStartColor) && v.e(this.nightCardBgEndColor, playTypeModel.nightCardBgEndColor) && v.e(this.dayCardBgColorV2, playTypeModel.dayCardBgColorV2) && v.e(this.nightCardBgColorV2, playTypeModel.nightCardBgColorV2) && v.e(this.dayCardStatusLabelColor, playTypeModel.dayCardStatusLabelColor) && v.e(this.nightCardStatusLabelColor, playTypeModel.nightCardStatusLabelColor) && v.e(this.dayCardStatusLabelColorV2, playTypeModel.dayCardStatusLabelColorV2) && v.e(this.nightCardStatusLabelColorV2, playTypeModel.nightCardStatusLabelColorV2) && v.e(this.playAlias, playTypeModel.playAlias) && v.e(this.gameIconUrl, playTypeModel.gameIconUrl) && v.e(this.gameIconUrlV2, playTypeModel.gameIconUrlV2) && v.e(this.nightGameIconUrlV2, playTypeModel.nightGameIconUrlV2) && v.e(this.nightGameIconUrl, playTypeModel.nightGameIconUrl) && v.e(this.showStatus, playTypeModel.showStatus);
    }

    @Nullable
    public final String getDayCardBgColorV2() {
        return this.dayCardBgColorV2;
    }

    @Nullable
    public final String getDayCardBgEndColor() {
        return this.dayCardBgEndColor;
    }

    @Nullable
    public final String getDayCardBgStartColor() {
        return this.dayCardBgStartColor;
    }

    @Nullable
    public final String getDayCardStatusLabelColor() {
        return this.dayCardStatusLabelColor;
    }

    @Nullable
    public final String getDayCardStatusLabelColorV2() {
        return this.dayCardStatusLabelColorV2;
    }

    @Nullable
    public final String getDaytimeUrl() {
        return this.daytimeUrl;
    }

    @Nullable
    public final String getGameIconUrl() {
        return this.gameIconUrl;
    }

    @Nullable
    public final String getGameIconUrlV2() {
        return this.gameIconUrlV2;
    }

    @Nullable
    public final Integer getHeight() {
        return this.height;
    }

    @Nullable
    public final String getNightCardBgColorV2() {
        return this.nightCardBgColorV2;
    }

    @Nullable
    public final String getNightCardBgEndColor() {
        return this.nightCardBgEndColor;
    }

    @Nullable
    public final String getNightCardBgStartColor() {
        return this.nightCardBgStartColor;
    }

    @Nullable
    public final String getNightCardStatusLabelColor() {
        return this.nightCardStatusLabelColor;
    }

    @Nullable
    public final String getNightCardStatusLabelColorV2() {
        return this.nightCardStatusLabelColorV2;
    }

    @Nullable
    public final String getNightGameIconUrl() {
        return this.nightGameIconUrl;
    }

    @Nullable
    public final String getNightGameIconUrlV2() {
        return this.nightGameIconUrlV2;
    }

    @Nullable
    public final String getNighttimeUrl() {
        return this.nighttimeUrl;
    }

    @Nullable
    public final String getPlayAlias() {
        return this.playAlias;
    }

    @Nullable
    public final Integer getPlayType() {
        return this.playType;
    }

    @Nullable
    public final String getPreviewIconUrl() {
        return this.previewIconUrl;
    }

    @Nullable
    public final Integer getShowStatus() {
        return this.showStatus;
    }

    @Nullable
    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        String str = this.daytimeUrl;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.nighttimeUrl;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.width;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.height;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.playType;
        int iHashCode5 = (iHashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str3 = this.previewIconUrl;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.dayCardBgStartColor;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.dayCardBgEndColor;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.nightCardBgStartColor;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.nightCardBgEndColor;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.dayCardBgColorV2;
        int iHashCode11 = (iHashCode10 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.nightCardBgColorV2;
        int iHashCode12 = (iHashCode11 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.dayCardStatusLabelColor;
        int iHashCode13 = (iHashCode12 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.nightCardStatusLabelColor;
        int iHashCode14 = (iHashCode13 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.dayCardStatusLabelColorV2;
        int iHashCode15 = (iHashCode14 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.nightCardStatusLabelColorV2;
        int iHashCode16 = (iHashCode15 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.playAlias;
        int iHashCode17 = (iHashCode16 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.gameIconUrl;
        int iHashCode18 = (iHashCode17 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.gameIconUrlV2;
        int iHashCode19 = (iHashCode18 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.nightGameIconUrlV2;
        int iHashCode20 = (iHashCode19 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.nightGameIconUrl;
        int iHashCode21 = (iHashCode20 + (str18 == null ? 0 : str18.hashCode())) * 31;
        Integer num4 = this.showStatus;
        return iHashCode21 + (num4 != null ? num4.hashCode() : 0);
    }

    public final void setDayCardBgColorV2(@Nullable String str) {
        this.dayCardBgColorV2 = str;
    }

    public final void setDayCardBgEndColor(@Nullable String str) {
        this.dayCardBgEndColor = str;
    }

    public final void setDayCardBgStartColor(@Nullable String str) {
        this.dayCardBgStartColor = str;
    }

    public final void setDayCardStatusLabelColor(@Nullable String str) {
        this.dayCardStatusLabelColor = str;
    }

    public final void setDayCardStatusLabelColorV2(@Nullable String str) {
        this.dayCardStatusLabelColorV2 = str;
    }

    public final void setDaytimeUrl(@Nullable String str) {
        this.daytimeUrl = str;
    }

    public final void setGameIconUrl(@Nullable String str) {
        this.gameIconUrl = str;
    }

    public final void setGameIconUrlV2(@Nullable String str) {
        this.gameIconUrlV2 = str;
    }

    public final void setHeight(@Nullable Integer num) {
        this.height = num;
    }

    public final void setNightCardBgColorV2(@Nullable String str) {
        this.nightCardBgColorV2 = str;
    }

    public final void setNightCardBgEndColor(@Nullable String str) {
        this.nightCardBgEndColor = str;
    }

    public final void setNightCardBgStartColor(@Nullable String str) {
        this.nightCardBgStartColor = str;
    }

    public final void setNightCardStatusLabelColor(@Nullable String str) {
        this.nightCardStatusLabelColor = str;
    }

    public final void setNightCardStatusLabelColorV2(@Nullable String str) {
        this.nightCardStatusLabelColorV2 = str;
    }

    public final void setNightGameIconUrl(@Nullable String str) {
        this.nightGameIconUrl = str;
    }

    public final void setNightGameIconUrlV2(@Nullable String str) {
        this.nightGameIconUrlV2 = str;
    }

    public final void setNighttimeUrl(@Nullable String str) {
        this.nighttimeUrl = str;
    }

    public final void setPlayAlias(@Nullable String str) {
        this.playAlias = str;
    }

    public final void setPlayType(@Nullable Integer num) {
        this.playType = num;
    }

    public final void setPreviewIconUrl(@Nullable String str) {
        this.previewIconUrl = str;
    }

    public final void setShowStatus(@Nullable Integer num) {
        this.showStatus = num;
    }

    public final void setWidth(@Nullable Integer num) {
        this.width = num;
    }

    @NotNull
    public String toString() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "PlayTypeModel(daytimeUrl=" + this.daytimeUrl + ", nighttimeUrl=" + this.nighttimeUrl + ", width=" + this.width + ", height=" + this.height + ", playType=" + this.playType + ", previewIconUrl=" + this.previewIconUrl + ", dayCardBgStartColor=" + this.dayCardBgStartColor + ", dayCardBgEndColor=" + this.dayCardBgEndColor + ", nightCardBgStartColor=" + this.nightCardBgStartColor + ", nightCardBgEndColor=" + this.nightCardBgEndColor + ", dayCardBgColorV2=" + this.dayCardBgColorV2 + ", nightCardBgColorV2=" + this.nightCardBgColorV2 + ", dayCardStatusLabelColor=" + this.dayCardStatusLabelColor + ", nightCardStatusLabelColor=" + this.nightCardStatusLabelColor + ", dayCardStatusLabelColorV2=" + this.dayCardStatusLabelColorV2 + ", nightCardStatusLabelColorV2=" + this.nightCardStatusLabelColorV2 + ", playAlias=" + this.playAlias + ", gameIconUrl=" + this.gameIconUrl + ", gameIconUrlV2=" + this.gameIconUrlV2 + ", nightGameIconUrlV2=" + this.nightGameIconUrlV2 + ", nightGameIconUrl=" + this.nightGameIconUrl + ", showStatus=" + this.showStatus + ')';
    }

    public /* synthetic */ PlayTypeModel(String str, String str2, Integer num, Integer num2, Integer num3, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, Integer num4, int i11, q qVar) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? 0 : num, (i11 & 8) != 0 ? 0 : num2, (i11 & 16) != 0 ? null : num3, (i11 & 32) != 0 ? null : str3, (i11 & 64) != 0 ? null : str4, (i11 & 128) != 0 ? null : str5, (i11 & 256) != 0 ? null : str6, (i11 & 512) != 0 ? null : str7, (i11 & 1024) != 0 ? null : str8, (i11 & 2048) != 0 ? null : str9, (i11 & 4096) != 0 ? null : str10, (i11 & 8192) != 0 ? null : str11, (i11 & 16384) != 0 ? null : str12, (i11 & 32768) != 0 ? null : str13, (i11 & 65536) != 0 ? null : str14, (i11 & 131072) != 0 ? null : str15, (i11 & 262144) != 0 ? null : str16, (i11 & 524288) != 0 ? null : str17, (i11 & 1048576) != 0 ? null : str18, (i11 & 2097152) != 0 ? null : num4);
    }
}