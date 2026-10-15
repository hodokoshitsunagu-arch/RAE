package cn.soulapp.cpnt_voiceparty.soulhouse.data;

import android.os.Parcel;
import android.os.Parcelable;
import cn.android.lib.soul_entity.OperationModel;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.ClimateModel;
import cn.soulapp.android.chatroom.bean.Map;
import cn.soulapp.android.chatroom.bean.MusicStationModel;
import cn.soulapp.android.chatroom.bean.UserFmAsset;
import cn.soulapp.android.lib.analyticsV2.Const;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.huawei.hms.ml.scan.HmsScanBase;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlinx.android.parcel.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: RoomConfigListModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Parcelize
@Metadata(bv = {}, d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B÷\u0001\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0010\b\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010,\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u0010\u0012\u0010\b\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010\u0010\u0012\u0010\b\u0002\u00104\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u0010\u0012\u0010\b\u0002\u00107\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0010\u0012(\b\u0002\u0010<\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u00010:j\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u0001`;\u0012\n\b\u0002\u0010C\u001a\u0004\u0018\u00010B\u0012\b\b\u0002\u0010I\u001a\u00020\u0004\u0012\u0012\b\u0002\u0010P\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010O\u0018\u00010\u0010¢\u0006\u0004\bR\u0010SJ\t\u0010\u0003\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0005\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\n\u001a\u00020\u0004HÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004HÖ\u0001R*\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R*\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R$\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R*\u0010$\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0013\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R*\u0010(\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010\u0013\u001a\u0004\b)\u0010\u0015\"\u0004\b*\u0010\u0017R*\u0010,\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u0013\u001a\u0004\b-\u0010\u0015\"\u0004\b.\u0010\u0017R*\u00100\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u0013\u001a\u0004\b1\u0010\u0015\"\u0004\b2\u0010\u0017R*\u00104\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010\u0013\u001a\u0004\b5\u0010\u0015\"\u0004\b6\u0010\u0017R*\u00107\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010\u0013\u001a\u0004\b8\u0010\u0015\"\u0004\b9\u0010\u0017RB\u0010<\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u00010:j\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u0001`;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR$\u0010C\u001a\u0004\u0018\u00010B8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\"\u0010I\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR!\u0010P\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010O\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\bP\u0010\u0013\u001a\u0004\bQ\u0010\u0015¨\u0006T"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RoomConfigListModel;", "Landroid/os/Parcelable;", "", "toString", "", "hashCode", "", Const.HeartReason.OTHER, "", "equals", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lkotlin/w;", "writeToParcel", "", "Lcn/soulapp/android/chatroom/bean/MusicStationModel;", "musicStationList", "Ljava/util/List;", "getMusicStationList", "()Ljava/util/List;", "setMusicStationList", "(Ljava/util/List;)V", "Lcn/soulapp/android/chatroom/bean/ClimateModel;", "climateList", "getClimateList", "setClimateList", "Lcn/soulapp/android/chatroom/bean/Map$SetInfo;", "setInfo", "Lcn/soulapp/android/chatroom/bean/Map$SetInfo;", "getSetInfo", "()Lcn/soulapp/android/chatroom/bean/Map$SetInfo;", "setSetInfo", "(Lcn/soulapp/android/chatroom/bean/Map$SetInfo;)V", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/BackgroundClassifyModel;", "backgroundClassifyList", "a", "setBackgroundClassifyList", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/ClimateClassifyModel;", "climateClassifyList", "getClimateClassifyList", "setClimateClassifyList", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/PlayTypeModel;", "playTypeList", "getPlayTypeList", "setPlayTypeList", "Lcn/android/lib/soul_entity/OperationModel;", "positionContentRespList", "d", "setPositionContentRespList", "Lcn/soulapp/android/chatroom/bean/UserFmAsset;", "userFmAssetList", "h", "setUserFmAssetList", "functionCodeList", ExpcompatUtils.COMPAT_VALUE_780, "setFunctionCodeList", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "functionDefaultSwitchMap", "Ljava/util/HashMap;", "c", "()Ljava/util/HashMap;", "setFunctionDefaultSwitchMap", "(Ljava/util/HashMap;)V", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RecTopicInfo;", "recTopicInfo", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RecTopicInfo;", "f", "()Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RecTopicInfo;", "setRecTopicInfo", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RecTopicInfo;)V", "privateStatus", "I", l11l11I1111l.l111l1111lIl, "()I", "setPrivateStatus", "(I)V", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/TabConfigData;", "tabConfigList", "g", AppAgent.CONSTRUCT, "(Ljava/util/List;Ljava/util/List;Lcn/soulapp/android/chatroom/bean/Map$SetInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RecTopicInfo;ILjava/util/List;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final /* data */ class RoomConfigListModel implements Parcelable {

    @NotNull
    public static final Parcelable.Creator<RoomConfigListModel> CREATOR;
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private List<BackgroundClassifyModel> backgroundClassifyList;

    @Nullable
    private List<ClimateClassifyModel> climateClassifyList;

    @Nullable
    private List<? extends ClimateModel> climateList;

    @Nullable
    private List<String> functionCodeList;

    @Nullable
    private HashMap<String, Boolean> functionDefaultSwitchMap;

    @Nullable
    private List<? extends MusicStationModel> musicStationList;

    @Nullable
    private List<PlayTypeModel> playTypeList;

    @Nullable
    private List<OperationModel> positionContentRespList;
    private int privateStatus;

    @Nullable
    private RecTopicInfo recTopicInfo;

    @Nullable
    private Map.SetInfo setInfo;

    @Nullable
    private final List<TabConfigData> tabConfigList;

    @Nullable
    private List<UserFmAsset> userFmAssetList;

    /* JADX INFO: compiled from: RoomConfigListModel.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    public static final class a implements Parcelable.Creator<RoomConfigListModel> {
        public static ChangeQuickRedirect changeQuickRedirect;

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RoomConfigListModel createFromParcel(@NotNull Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            ArrayList arrayList3;
            ArrayList arrayList4;
            ArrayList arrayList5;
            ArrayList arrayList6;
            ArrayList arrayList7;
            HashMap map;
            PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{parcel}, this, changeQuickRedirect, false, 2, new Class[]{Parcel.class}, RoomConfigListModel.class);
            if (patchProxyResultProxy.isSupported) {
                return (RoomConfigListModel) patchProxyResultProxy.result;
            }
            v.j(parcel, "parcel");
            ArrayList arrayList8 = null;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList9 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList9.add(parcel.readSerializable());
                }
                arrayList = arrayList9;
            }
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int i13 = parcel.readInt();
                ArrayList arrayList10 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList10.add(parcel.readSerializable());
                }
                arrayList2 = arrayList10;
            }
            Map.SetInfo setInfo = (Map.SetInfo) parcel.readSerializable();
            if (parcel.readInt() == 0) {
                arrayList3 = null;
            } else {
                int i15 = parcel.readInt();
                ArrayList arrayList11 = new ArrayList(i15);
                for (int i16 = 0; i16 != i15; i16++) {
                    arrayList11.add(BackgroundClassifyModel.CREATOR.createFromParcel(parcel));
                }
                arrayList3 = arrayList11;
            }
            if (parcel.readInt() == 0) {
                arrayList4 = null;
            } else {
                int i17 = parcel.readInt();
                ArrayList arrayList12 = new ArrayList(i17);
                for (int i18 = 0; i18 != i17; i18++) {
                    arrayList12.add(ClimateClassifyModel.CREATOR.createFromParcel(parcel));
                }
                arrayList4 = arrayList12;
            }
            if (parcel.readInt() == 0) {
                arrayList5 = null;
            } else {
                int i19 = parcel.readInt();
                ArrayList arrayList13 = new ArrayList(i19);
                for (int i21 = 0; i21 != i19; i21++) {
                    arrayList13.add(PlayTypeModel.CREATOR.createFromParcel(parcel));
                }
                arrayList5 = arrayList13;
            }
            if (parcel.readInt() == 0) {
                arrayList6 = null;
            } else {
                int i22 = parcel.readInt();
                ArrayList arrayList14 = new ArrayList(i22);
                for (int i23 = 0; i23 != i22; i23++) {
                    arrayList14.add(parcel.readSerializable());
                }
                arrayList6 = arrayList14;
            }
            if (parcel.readInt() == 0) {
                arrayList7 = null;
            } else {
                int i24 = parcel.readInt();
                ArrayList arrayList15 = new ArrayList(i24);
                for (int i25 = 0; i25 != i24; i25++) {
                    arrayList15.add(parcel.readSerializable());
                }
                arrayList7 = arrayList15;
            }
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            if (parcel.readInt() == 0) {
                map = null;
            } else {
                int i26 = parcel.readInt();
                HashMap map2 = new HashMap(i26);
                for (int i27 = 0; i27 != i26; i27++) {
                    map2.put(parcel.readString(), Boolean.valueOf(parcel.readInt() != 0));
                }
                map = map2;
            }
            RecTopicInfo recTopicInfo = (RecTopicInfo) parcel.readSerializable();
            int i28 = parcel.readInt();
            if (parcel.readInt() != 0) {
                int i29 = parcel.readInt();
                arrayList8 = new ArrayList(i29);
                for (int i31 = 0; i31 != i29; i31++) {
                    arrayList8.add(parcel.readSerializable());
                }
            }
            return new RoomConfigListModel(arrayList, arrayList2, setInfo, arrayList3, arrayList4, arrayList5, arrayList6, arrayList7, arrayListCreateStringArrayList, map, recTopicInfo, i28, arrayList8);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final RoomConfigListModel[] newArray(int i11) {
            return new RoomConfigListModel[i11];
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 8, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        CREATOR = new a();
    }

    public RoomConfigListModel() {
        this(null, null, null, null, null, null, null, null, null, null, null, 0, null, HmsScanBase.ALL_SCAN_TYPE, null);
    }

    public RoomConfigListModel(@Nullable List<? extends MusicStationModel> list, @Nullable List<? extends ClimateModel> list2, @Nullable Map.SetInfo setInfo, @Nullable List<BackgroundClassifyModel> list3, @Nullable List<ClimateClassifyModel> list4, @Nullable List<PlayTypeModel> list5, @Nullable List<OperationModel> list6, @Nullable List<UserFmAsset> list7, @Nullable List<String> list8, @Nullable HashMap<String, Boolean> map, @Nullable RecTopicInfo recTopicInfo, int i11, @Nullable List<TabConfigData> list9) {
        this.musicStationList = list;
        this.climateList = list2;
        this.setInfo = setInfo;
        this.backgroundClassifyList = list3;
        this.climateClassifyList = list4;
        this.playTypeList = list5;
        this.positionContentRespList = list6;
        this.userFmAssetList = list7;
        this.functionCodeList = list8;
        this.functionDefaultSwitchMap = map;
        this.recTopicInfo = recTopicInfo;
        this.privateStatus = i11;
        this.tabConfigList = list9;
    }

    @Nullable
    public final List<BackgroundClassifyModel> a() {
        return this.backgroundClassifyList;
    }

    @Nullable
    public final List<String> b() {
        return this.functionCodeList;
    }

    @Nullable
    public final HashMap<String, Boolean> c() {
        return this.functionDefaultSwitchMap;
    }

    @Nullable
    public final List<OperationModel> d() {
        return this.positionContentRespList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final int getPrivateStatus() {
        return this.privateStatus;
    }

    public boolean equals(@Nullable Object other) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{other}, this, changeQuickRedirect, false, 5, new Class[]{Object.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (this == other) {
            return true;
        }
        if (!(other instanceof RoomConfigListModel)) {
            return false;
        }
        RoomConfigListModel roomConfigListModel = (RoomConfigListModel) other;
        return v.e(this.musicStationList, roomConfigListModel.musicStationList) && v.e(this.climateList, roomConfigListModel.climateList) && v.e(this.setInfo, roomConfigListModel.setInfo) && v.e(this.backgroundClassifyList, roomConfigListModel.backgroundClassifyList) && v.e(this.climateClassifyList, roomConfigListModel.climateClassifyList) && v.e(this.playTypeList, roomConfigListModel.playTypeList) && v.e(this.positionContentRespList, roomConfigListModel.positionContentRespList) && v.e(this.userFmAssetList, roomConfigListModel.userFmAssetList) && v.e(this.functionCodeList, roomConfigListModel.functionCodeList) && v.e(this.functionDefaultSwitchMap, roomConfigListModel.functionDefaultSwitchMap) && v.e(this.recTopicInfo, roomConfigListModel.recTopicInfo) && this.privateStatus == roomConfigListModel.privateStatus && v.e(this.tabConfigList, roomConfigListModel.tabConfigList);
    }

    @Nullable
    /* JADX INFO: renamed from: f, reason: from getter */
    public final RecTopicInfo getRecTopicInfo() {
        return this.recTopicInfo;
    }

    @Nullable
    public final List<TabConfigData> g() {
        return this.tabConfigList;
    }

    @Nullable
    public final List<UserFmAsset> h() {
        return this.userFmAssetList;
    }

    public int hashCode() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 4, new Class[0], Integer.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Integer) patchProxyResultProxy.result).intValue();
        }
        List<? extends MusicStationModel> list = this.musicStationList;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<? extends ClimateModel> list2 = this.climateList;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        Map.SetInfo setInfo = this.setInfo;
        int iHashCode3 = (iHashCode2 + (setInfo == null ? 0 : setInfo.hashCode())) * 31;
        List<BackgroundClassifyModel> list3 = this.backgroundClassifyList;
        int iHashCode4 = (iHashCode3 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<ClimateClassifyModel> list4 = this.climateClassifyList;
        int iHashCode5 = (iHashCode4 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<PlayTypeModel> list5 = this.playTypeList;
        int iHashCode6 = (iHashCode5 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List<OperationModel> list6 = this.positionContentRespList;
        int iHashCode7 = (iHashCode6 + (list6 == null ? 0 : list6.hashCode())) * 31;
        List<UserFmAsset> list7 = this.userFmAssetList;
        int iHashCode8 = (iHashCode7 + (list7 == null ? 0 : list7.hashCode())) * 31;
        List<String> list8 = this.functionCodeList;
        int iHashCode9 = (iHashCode8 + (list8 == null ? 0 : list8.hashCode())) * 31;
        HashMap<String, Boolean> map = this.functionDefaultSwitchMap;
        int iHashCode10 = (iHashCode9 + (map == null ? 0 : map.hashCode())) * 31;
        RecTopicInfo recTopicInfo = this.recTopicInfo;
        int iHashCode11 = (((iHashCode10 + (recTopicInfo == null ? 0 : recTopicInfo.hashCode())) * 31) + this.privateStatus) * 31;
        List<TabConfigData> list9 = this.tabConfigList;
        return iHashCode11 + (list9 != null ? list9.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        return "RoomConfigListModel(musicStationList=" + this.musicStationList + ", climateList=" + this.climateList + ", setInfo=" + this.setInfo + ", backgroundClassifyList=" + this.backgroundClassifyList + ", climateClassifyList=" + this.climateClassifyList + ", playTypeList=" + this.playTypeList + ", positionContentRespList=" + this.positionContentRespList + ", userFmAssetList=" + this.userFmAssetList + ", functionCodeList=" + this.functionCodeList + ", functionDefaultSwitchMap=" + this.functionDefaultSwitchMap + ", recTopicInfo=" + this.recTopicInfo + ", privateStatus=" + this.privateStatus + ", tabConfigList=" + this.tabConfigList + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i11) {
        if (PatchProxy.proxy(new Object[]{out, new Integer(i11)}, this, changeQuickRedirect, false, 6, new Class[]{Parcel.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        v.j(out, "out");
        List<? extends MusicStationModel> list = this.musicStationList;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            Iterator<? extends MusicStationModel> it = list.iterator();
            while (it.hasNext()) {
                out.writeSerializable(it.next());
            }
        }
        List<? extends ClimateModel> list2 = this.climateList;
        if (list2 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list2.size());
            Iterator<? extends ClimateModel> it2 = list2.iterator();
            while (it2.hasNext()) {
                out.writeSerializable(it2.next());
            }
        }
        out.writeSerializable(this.setInfo);
        List<BackgroundClassifyModel> list3 = this.backgroundClassifyList;
        if (list3 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list3.size());
            Iterator<BackgroundClassifyModel> it3 = list3.iterator();
            while (it3.hasNext()) {
                it3.next().writeToParcel(out, i11);
            }
        }
        List<ClimateClassifyModel> list4 = this.climateClassifyList;
        if (list4 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list4.size());
            Iterator<ClimateClassifyModel> it4 = list4.iterator();
            while (it4.hasNext()) {
                it4.next().writeToParcel(out, i11);
            }
        }
        List<PlayTypeModel> list5 = this.playTypeList;
        if (list5 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list5.size());
            Iterator<PlayTypeModel> it5 = list5.iterator();
            while (it5.hasNext()) {
                it5.next().writeToParcel(out, i11);
            }
        }
        List<OperationModel> list6 = this.positionContentRespList;
        if (list6 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list6.size());
            Iterator<OperationModel> it6 = list6.iterator();
            while (it6.hasNext()) {
                out.writeSerializable(it6.next());
            }
        }
        List<UserFmAsset> list7 = this.userFmAssetList;
        if (list7 == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list7.size());
            Iterator<UserFmAsset> it7 = list7.iterator();
            while (it7.hasNext()) {
                out.writeSerializable(it7.next());
            }
        }
        out.writeStringList(this.functionCodeList);
        HashMap<String, Boolean> map = this.functionDefaultSwitchMap;
        if (map == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(map.size());
            for (java.util.Map.Entry<String, Boolean> entry : map.entrySet()) {
                out.writeString(entry.getKey());
                out.writeInt(entry.getValue().booleanValue() ? 1 : 0);
            }
        }
        out.writeSerializable(this.recTopicInfo);
        out.writeInt(this.privateStatus);
        List<TabConfigData> list8 = this.tabConfigList;
        if (list8 == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeInt(list8.size());
        Iterator<TabConfigData> it8 = list8.iterator();
        while (it8.hasNext()) {
            out.writeSerializable(it8.next());
        }
    }

    public /* synthetic */ RoomConfigListModel(List list, List list2, Map.SetInfo setInfo, List list3, List list4, List list5, List list6, List list7, List list8, HashMap map, RecTopicInfo recTopicInfo, int i11, List list9, int i12, q qVar) {
        this((i12 & 1) != 0 ? null : list, (i12 & 2) != 0 ? null : list2, (i12 & 4) != 0 ? null : setInfo, (i12 & 8) != 0 ? null : list3, (i12 & 16) != 0 ? null : list4, (i12 & 32) != 0 ? null : list5, (i12 & 64) != 0 ? null : list6, (i12 & 128) != 0 ? null : list7, (i12 & 256) != 0 ? null : list8, (i12 & 512) != 0 ? null : map, (i12 & 1024) != 0 ? null : recTopicInfo, (i12 & 2048) != 0 ? 0 : i11, (i12 & 4096) == 0 ? list9 : null);
    }
}