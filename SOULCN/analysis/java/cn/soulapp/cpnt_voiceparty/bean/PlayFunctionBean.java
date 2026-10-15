package cn.soulapp.cpnt_voiceparty.bean;

import android.text.TextUtils;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.android.chatroom.data.RoomDataManager;
import cn.soulapp.cpnt_voiceparty.function.BaseRoomFunction;
import cn.soulapp.cpnt_voiceparty.function.b0;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.adventure.p;
import cn.soulapp.cpnt_voiceparty.soulhouse.fishing.FishingMasterSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.partyinteraction.PartyInteractionSlice;
import cn.soulapp.cpnt_voiceparty.soulhouse.slice.SliceManager;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.bean.MusicMachineInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.MusicMarketInfo;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: PlayFunctionBean.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J,\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t2\u001a\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u0007H\u0002J:\u0010\u000f\u001a\u00020\u000e2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0006j\b\u0012\u0004\u0012\u00020\u0002`\u0007H\u0002J\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\tJ\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\tJ\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\tJ*\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t2\u001a\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u0007J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\tJ!\u0010\u001d\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\u00142\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ#\u0010\u001f\u001a\u0004\u0018\u00010\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\u00142\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u001f\u0010 J)\u0010\"\u001a\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00142\b\u0010\u001c\u001a\u0004\u0018\u00010\u00142\u0006\u0010!\u001a\u00020\u0004¢\u0006\u0004\b\"\u0010#J\u0010\u0010\"\u001a\u00020\u000e2\b\u0010\f\u001a\u0004\u0018\u00010\u000bR*\u0010$\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R*\u0010&\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010%R*\u0010'\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00020\u0012\u0018\u0001`\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010%¨\u0006*"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/bean/PlayFunctionBean;", "Ljava/io/Serializable;", "Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "functionBean", "", "hasChildOpened", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "funcList", "", "filterLocalFuncList", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "openedFuncList", "Lkotlin/w;", "filterFuncListOpenState", "getRecentPlayFuncList", "getPlaySetUpFuncList", "Lcn/soulapp/cpnt_voiceparty/bean/PlayFunctionTypeBean;", "getClassifySetups", "", "types", "filterFunctionsByType", "bizType", "getFunctionByBizType", "(Ljava/lang/Integer;)Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "sortFunctionsByOpenedState", "playType", "groupType", "isFuncOpen", "(Ljava/lang/Integer;Ljava/lang/Integer;)Z", "getFuncByPlayType", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcn/soulapp/cpnt_voiceparty/bean/FunctionBean;", "isOpen", "updateFuncOpenState", "(Ljava/lang/Integer;Ljava/lang/Integer;Z)V", "playSetups", "Ljava/util/ArrayList;", "recPlaySetups", "classifySetups", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class PlayFunctionBean implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private ArrayList<PlayFunctionTypeBean> classifySetups;

    @Nullable
    private ArrayList<FunctionBean> playSetups;

    @Nullable
    private ArrayList<FunctionBean> recPlaySetups;

    /* JADX WARN: Code duplicated, block: B:88:0x0143  */
    private final void filterFuncListOpenState(DataBus dataBus, List<FunctionBean> list, ArrayList<FunctionBean> arrayList) {
        Integer techType;
        Integer techType2;
        Integer techType3;
        Integer techType4;
        Integer techType5;
        PartyInteractionSlice partyInteractionSlice;
        FishingMasterSlice fishingMasterSlice;
        cn.soulapp.cpnt_voiceparty.soulhouse.musictavern.e eVar;
        p pVar;
        boolean z11;
        MusicMarketInfo musicMarketInfo;
        ChatRoomModel chatRoomModelF;
        if (PatchProxy.proxy(new Object[]{dataBus, list, arrayList}, this, changeQuickRedirect, false, 13, new Class[]{DataBus.class, List.class, ArrayList.class}, Void.TYPE).isSupported) {
            return;
        }
        Integer numH = b0.f142548a.h(dataBus);
        int iIntValue = numH != null ? numH.intValue() : 0;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        MusicMachineInfo musicMachineInfo = soulHouseDriverJ0 != null ? (MusicMachineInfo) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.O()) : null;
        if (list != null) {
            for (FunctionBean functionBean : list) {
                Integer type = functionBean.getType();
                if ((type != null && type.intValue() == 1) || (((techType = functionBean.getTechType()) != null && techType.intValue() == 4) || (((techType2 = functionBean.getTechType()) != null && techType2.intValue() == 3) || (((techType3 = functionBean.getTechType()) != null && techType3.intValue() == 5) || (((techType4 = functionBean.getTechType()) != null && techType4.intValue() == 6) || ((techType5 = functionBean.getTechType()) != null && techType5.intValue() == 7)))))) {
                    Integer bizType = functionBean.getBizType();
                    functionBean.setOpened(bizType != null && bizType.intValue() == iIntValue);
                } else {
                    Integer bizType2 = functionBean.getBizType();
                    int id2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P.getId();
                    if (bizType2 != null && bizType2.intValue() == id2) {
                        functionBean.setOpened(musicMachineInfo != null);
                    } else {
                        int id3 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.Q.getId();
                        if (bizType2 != null && bizType2.intValue() == id3) {
                            SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(dataBus);
                            functionBean.setOpened(!TextUtils.isEmpty((soulHouseDriverJ1 == null || (chatRoomModelF = SoulHouseExtensionKt.f(soulHouseDriverJ1)) == null) ? null : chatRoomModelF.hotTopicTitle));
                        } else {
                            int id4 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.R.getId();
                            if (bizType2 != null && bizType2.intValue() == id4) {
                                SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(dataBus);
                                if ((soulHouseDriverJ2 != null ? (MusicMarketInfo) soulHouseDriverJ2.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Q()) : null) == null) {
                                    z11 = false;
                                } else {
                                    SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(dataBus);
                                    if (v.e((soulHouseDriverJ3 == null || (musicMarketInfo = (MusicMarketInfo) soulHouseDriverJ3.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.Q())) == null) ? null : musicMarketInfo.getState(), "1")) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                }
                                functionBean.setOpened(z11);
                            } else {
                                int id5 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.S.getId();
                                if (bizType2 != null && bizType2.intValue() == id5) {
                                    SoulHouseDriver soulHouseDriverJ4 = SoulHouseExtensionKt.j0(dataBus);
                                    functionBean.setOpened((soulHouseDriverJ4 == null || (pVar = (p) SoulHouseExtensionKt.g0(soulHouseDriverJ4, SliceManager.INSTANCE.u())) == null || !pVar.getIsOpened()) ? false : true);
                                } else {
                                    int id6 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.T.getId();
                                    if (bizType2 != null && bizType2.intValue() == id6) {
                                        SoulHouseDriver soulHouseDriverJ5 = SoulHouseExtensionKt.j0(dataBus);
                                        functionBean.setOpened((soulHouseDriverJ5 == null || (eVar = (cn.soulapp.cpnt_voiceparty.soulhouse.musictavern.e) SoulHouseExtensionKt.g0(soulHouseDriverJ5, SliceManager.INSTANCE.A())) == null || !eVar.getIsOpened()) ? false : true);
                                    } else {
                                        int id7 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.U.getId();
                                        if (bizType2 != null && bizType2.intValue() == id7) {
                                            SoulHouseDriver soulHouseDriverJ6 = SoulHouseExtensionKt.j0(dataBus);
                                            functionBean.setOpened((soulHouseDriverJ6 == null || (fishingMasterSlice = (FishingMasterSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ6, SliceManager.INSTANCE.q())) == null || !fishingMasterSlice.getIsOpen()) ? false : true);
                                        } else {
                                            int id8 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.W.getId();
                                            if (bizType2 != null && bizType2.intValue() == id8) {
                                                SoulHouseDriver soulHouseDriverJ7 = SoulHouseExtensionKt.j0(dataBus);
                                                functionBean.setOpened((soulHouseDriverJ7 == null || (partyInteractionSlice = (PartyInteractionSlice) SoulHouseExtensionKt.g0(soulHouseDriverJ7, SliceManager.INSTANCE.E())) == null || !partyInteractionSlice.getOpened()) ? false : true);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (functionBean.isOpened()) {
                    b0.f142548a.I(dataBus, functionBean.getTechType());
                    arrayList.add(functionBean);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007c  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d9  */
    private final List<FunctionBean> filterLocalFuncList(ArrayList<FunctionBean> funcList) {
        Integer techType;
        Integer techType2;
        Integer techType3;
        Integer techType4;
        Integer techType5;
        Integer techType6;
        boolean z11;
        Object next;
        int id2;
        Integer bizType;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{funcList}, this, changeQuickRedirect, false, 8, new Class[]{ArrayList.class}, List.class);
        if (patchProxyResultProxy.isSupported) {
            return (List) patchProxyResultProxy.result;
        }
        if (funcList == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : funcList) {
            FunctionBean functionBean = (FunctionBean) obj;
            Integer techType7 = functionBean.getTechType();
            if (techType7 != null && techType7.intValue() == 1) {
                Iterator<T> it = b0.f142548a.d().iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    id2 = ((BaseRoomFunction) next).h().getId();
                    bizType = functionBean.getBizType();
                } while (!(bizType != null && id2 == bizType.intValue()));
                if (next == null) {
                    techType = functionBean.getTechType();
                    if ((techType == null && techType.intValue() == 2) || functionBean.isTypeGroup() || (((techType2 = functionBean.getTechType()) != null && techType2.intValue() == 3) || (((techType3 = functionBean.getTechType()) != null && techType3.intValue() == 4) || (((techType4 = functionBean.getTechType()) != null && techType4.intValue() == 5) || (((techType5 = functionBean.getTechType()) != null && techType5.intValue() == 6) || ((techType6 = functionBean.getTechType()) != null && techType6.intValue() == 7)))))) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                } else {
                    z11 = true;
                }
            } else {
                techType = functionBean.getTechType();
                if (techType == null) {
                    z11 = true;
                } else {
                    z11 = true;
                }
            }
            if (z11) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private final boolean hasChildOpened(FunctionBean functionBean) {
        List<FunctionBean> playSetups;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{functionBean}, this, changeQuickRedirect, false, 7, new Class[]{FunctionBean.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        ChildPlaySetups childGameSetups = functionBean.getChildGameSetups();
        if (childGameSetups != null && (playSetups = childGameSetups.getPlaySetups()) != null) {
            Iterator<T> it = playSetups.iterator();
            while (it.hasNext()) {
                if (((FunctionBean) it.next()).isOpened()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Nullable
    public final List<FunctionBean> filterFunctionsByType(@Nullable ArrayList<Integer> types) {
        Object next;
        Integer bizType;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{types}, this, changeQuickRedirect, false, 4, new Class[]{ArrayList.class}, List.class);
        if (patchProxyResultProxy.isSupported) {
            return (List) patchProxyResultProxy.result;
        }
        if (types == null || types.isEmpty()) {
            return kotlin.collections.v.m();
        }
        List<FunctionBean> playSetUpFuncList = getPlaySetUpFuncList();
        if (playSetUpFuncList == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = types.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            Iterator<T> it2 = playSetUpFuncList.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                bizType = ((FunctionBean) next).getBizType();
            } while (!(bizType != null && bizType.intValue() == iIntValue));
            FunctionBean functionBean = (FunctionBean) next;
            if (functionBean != null) {
                arrayList.add(functionBean);
            }
        }
        return CollectionsKt___CollectionsKt.q1(arrayList);
    }

    @Nullable
    public final List<PlayFunctionTypeBean> getClassifySetups() {
        return this.classifySetups;
    }

    @Nullable
    public final FunctionBean getFuncByPlayType(@Nullable Integer playType, @Nullable Integer groupType) {
        FunctionBean functionBean;
        FunctionBean functionBean2;
        List<FunctionBean> playSetups;
        Object next;
        FunctionBean functionBean3;
        List<FunctionBean> playSetups2;
        Object next2;
        FunctionBean functionBean4;
        Object next3;
        FunctionBean functionBean5;
        Object next4;
        FunctionBean functionBean6;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{playType, groupType}, this, changeQuickRedirect, false, 10, new Class[]{Integer.class, Integer.class}, FunctionBean.class);
        if (patchProxyResultProxy.isSupported) {
            return (FunctionBean) patchProxyResultProxy.result;
        }
        ArrayList<FunctionBean> arrayList = this.recPlaySetups;
        if (arrayList != null) {
            Iterator<T> it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    next4 = null;
                    break;
                }
                next4 = it.next();
                functionBean6 = (FunctionBean) next4;
            } while (!(v.e(functionBean6.getBizType(), playType) && v.e(functionBean6.getTechType(), groupType)));
            functionBean = (FunctionBean) next4;
        } else {
            functionBean = null;
        }
        if (functionBean != null) {
            return functionBean;
        }
        ArrayList<FunctionBean> arrayList2 = this.playSetups;
        if (arrayList2 != null) {
            Iterator<T> it2 = arrayList2.iterator();
            do {
                if (!it2.hasNext()) {
                    next3 = null;
                    break;
                }
                next3 = it2.next();
                functionBean5 = (FunctionBean) next3;
            } while (!(v.e(functionBean5.getBizType(), playType) && v.e(functionBean5.getTechType(), groupType)));
            functionBean2 = (FunctionBean) next3;
        } else {
            functionBean2 = null;
        }
        if (functionBean2 != null) {
            return functionBean2;
        }
        ArrayList<FunctionBean> arrayList3 = this.recPlaySetups;
        if (arrayList3 != null) {
            Iterator<T> it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                ChildPlaySetups childGameSetups = ((FunctionBean) it3.next()).getChildGameSetups();
                if (childGameSetups != null && (playSetups2 = childGameSetups.getPlaySetups()) != null) {
                    Iterator<T> it4 = playSetups2.iterator();
                    do {
                        if (!it4.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it4.next();
                        functionBean4 = (FunctionBean) next2;
                    } while (!(v.e(functionBean4.getBizType(), playType) && v.e(functionBean4.getTechType(), groupType)));
                    FunctionBean functionBean7 = (FunctionBean) next2;
                    if (functionBean7 != null) {
                        return functionBean7;
                    }
                }
            }
        }
        ArrayList<FunctionBean> arrayList4 = this.playSetups;
        if (arrayList4 != null) {
            Iterator<T> it5 = arrayList4.iterator();
            while (it5.hasNext()) {
                ChildPlaySetups childGameSetups2 = ((FunctionBean) it5.next()).getChildGameSetups();
                if (childGameSetups2 != null && (playSetups = childGameSetups2.getPlaySetups()) != null) {
                    Iterator<T> it6 = playSetups.iterator();
                    do {
                        if (!it6.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it6.next();
                        functionBean3 = (FunctionBean) next;
                    } while (!(v.e(functionBean3.getBizType(), playType) && v.e(functionBean3.getTechType(), groupType)));
                    FunctionBean functionBean8 = (FunctionBean) next;
                    if (functionBean8 != null) {
                        return functionBean8;
                    }
                }
            }
        }
        return null;
    }

    @Nullable
    public final FunctionBean getFunctionByBizType(@Nullable Integer bizType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{bizType}, this, changeQuickRedirect, false, 5, new Class[]{Integer.class}, FunctionBean.class);
        if (patchProxyResultProxy.isSupported) {
            return (FunctionBean) patchProxyResultProxy.result;
        }
        List<FunctionBean> playSetUpFuncList = getPlaySetUpFuncList();
        if (playSetUpFuncList == null) {
            return null;
        }
        for (FunctionBean functionBean : playSetUpFuncList) {
            if (v.e(functionBean.getBizType(), bizType)) {
                return functionBean;
            }
        }
        List<FunctionBean> recentPlayFuncList = getRecentPlayFuncList();
        if (recentPlayFuncList == null) {
            return null;
        }
        for (FunctionBean functionBean2 : recentPlayFuncList) {
            if (v.e(functionBean2.getBizType(), bizType)) {
                return functionBean2;
            }
        }
        return null;
    }

    @Nullable
    public final List<FunctionBean> getPlaySetUpFuncList() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 3, new Class[0], List.class);
        return patchProxyResultProxy.isSupported ? (List) patchProxyResultProxy.result : filterLocalFuncList(this.playSetups);
    }

    @Nullable
    public final List<FunctionBean> getRecentPlayFuncList() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], List.class);
        if (patchProxyResultProxy.isSupported) {
            return (List) patchProxyResultProxy.result;
        }
        List<FunctionBean> listFilterLocalFuncList = filterLocalFuncList(this.recPlaySetups);
        if (listFilterLocalFuncList != null) {
            return CollectionsKt___CollectionsKt.h1(listFilterLocalFuncList, 4);
        }
        return null;
    }

    public final boolean isFuncOpen(@Nullable Integer playType, @Nullable Integer groupType) {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{playType, groupType}, this, changeQuickRedirect, false, 9, new Class[]{Integer.class, Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        FunctionBean funcByPlayType = getFuncByPlayType(playType, groupType);
        if (funcByPlayType != null) {
            return funcByPlayType.isOpened();
        }
        return false;
    }

    @Nullable
    public final List<FunctionBean> sortFunctionsByOpenedState() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], List.class);
        if (patchProxyResultProxy.isSupported) {
            return (List) patchProxyResultProxy.result;
        }
        List<FunctionBean> playSetUpFuncList = getPlaySetUpFuncList();
        if (playSetUpFuncList == null || playSetUpFuncList.isEmpty()) {
            return playSetUpFuncList;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (FunctionBean functionBean : playSetUpFuncList) {
            if (functionBean.isOpened() || hasChildOpened(functionBean)) {
                arrayList.add(functionBean);
            } else {
                arrayList2.add(functionBean);
            }
        }
        return CollectionsKt___CollectionsKt.q1(CollectionsKt___CollectionsKt.R0(arrayList, arrayList2));
    }

    public final void updateFuncOpenState(@Nullable Integer playType, @Nullable Integer groupType, boolean isOpen) {
        FunctionBean funcByPlayType;
        if (PatchProxy.proxy(new Object[]{playType, groupType, new Byte(isOpen ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 11, new Class[]{Integer.class, Integer.class, Boolean.TYPE}, Void.TYPE).isSupported || (funcByPlayType = getFuncByPlayType(playType, groupType)) == null) {
            return;
        }
        funcByPlayType.setOpened(isOpen);
    }

    public final void updateFuncOpenState(@Nullable DataBus dataBus) {
        RoomDataManager roomDataManagerA1;
        if (PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 12, new Class[]{DataBus.class}, Void.TYPE).isSupported) {
            return;
        }
        ArrayList<FunctionBean> arrayList = new ArrayList<>();
        filterFuncListOpenState(dataBus, this.playSetups, arrayList);
        filterFuncListOpenState(dataBus, this.recPlaySetups, arrayList);
        ArrayList<FunctionBean> arrayList2 = this.playSetups;
        if (arrayList2 != null) {
            Iterator<T> it = arrayList2.iterator();
            while (it.hasNext()) {
                ChildPlaySetups childGameSetups = ((FunctionBean) it.next()).getChildGameSetups();
                filterFuncListOpenState(dataBus, childGameSetups != null ? childGameSetups.getPlaySetups() : null, arrayList);
            }
        }
        ArrayList<FunctionBean> arrayList3 = this.recPlaySetups;
        if (arrayList3 != null) {
            Iterator<T> it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                ChildPlaySetups childGameSetups2 = ((FunctionBean) it2.next()).getChildGameSetups();
                filterFuncListOpenState(dataBus, childGameSetups2 != null ? childGameSetups2.getPlaySetups() : null, arrayList);
            }
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        if (soulHouseDriverJ0 == null || (roomDataManagerA1 = soulHouseDriverJ0.a1()) == null) {
            return;
        }
        roomDataManagerA1.f0(arrayList);
    }
}