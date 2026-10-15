package cn.soulapp.cpnt_voiceparty.mvvm;

import android.app.Application;
import android.text.TextUtils;
import androidx.lifecycle.MutableLiveData;
import cn.mate.android.config.SConfiger;
import cn.soul.android.base.block_frame.databus.DataBus;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.chatroom.bean.ChatRoomModel;
import cn.soulapp.android.lib.common.bean.RxViewModel;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.android.lib.media.zego.RoomChatEngineManager;
import cn.soulapp.cpnt_voiceparty.bean.BottomMoreFunction;
import cn.soulapp.cpnt_voiceparty.bean.GameInfo;
import cn.soulapp.cpnt_voiceparty.bean.MyKtvSongInfo;
import cn.soulapp.cpnt_voiceparty.bean.OperationResult;
import cn.soulapp.cpnt_voiceparty.bean.PlayFunctionBean;
import cn.soulapp.cpnt_voiceparty.bean.PlayFunctionTypeBean;
import cn.soulapp.cpnt_voiceparty.bean.RequestResult;
import cn.soulapp.cpnt_voiceparty.function.b0;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseContainer;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseDriver;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.PkModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.songmachine.bean.MusicMachineInfo;
import cn.soulapp.cpnt_voiceparty.ui.chatroom.BlockMessage;
import cn.soulapp.cpnt_voiceparty.util.DataConvertUtil;
import cn.soulapp.lib.utils.ext.n;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import com.walid.rxretrofit.HttpSubscriber;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.r0;
import kotlin.collections.w;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import kotlin.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ty.s;

/* JADX INFO: compiled from: GameViewModel.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \f2\u00020\u0001:\u0001%B\u000f\u0012\u0006\u00103\u001a\u000202¢\u0006\u0004\b4\u00105J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\n\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\"\u0010\u0010\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0011\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J#\u0010\u0013\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0013\u0010\u0014J+\u0010\u0015\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u001a\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0019\u001a\u00020\u0004JE\u0010 \u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u00042\u0018\b\u0002\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u00010\u001d¢\u0006\u0004\b \u0010!R%\u0010)\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020$\u0018\u00010#0\"8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R%\u0010,\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010*0\"8\u0006¢\u0006\f\n\u0004\b\u0011\u0010&\u001a\u0004\b+\u0010(R%\u0010.\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010*0\"8\u0006¢\u0006\f\n\u0004\b\u0018\u0010&\u001a\u0004\b-\u0010(R\u001f\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010/0\"8\u0006¢\u0006\f\n\u0004\b'\u0010&\u001a\u0004\b0\u0010(¨\u00066"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/mvvm/GameViewModel;", "Lcn/soulapp/android/lib/common/bean/RxViewModel;", "Lcn/soul/android/base/block_frame/databus/DataBus;", "dataBus", "", "playType", "Lkotlin/w;", "l", "(Lcn/soul/android/base/block_frame/databus/DataBus;Ljava/lang/Integer;)V", "", "j", "(Lcn/soul/android/base/block_frame/databus/DataBus;Ljava/lang/Integer;)Z", l11l11I1111l.l111l1111lIl, "open", "", "id", "p", ExpcompatUtils.COMPAT_VALUE_780, "isOpenMusicalOpened", "o", "(Lcn/soul/android/base/block_frame/databus/DataBus;Ljava/lang/Boolean;)V", "i", "(Lcn/soul/android/base/block_frame/databus/DataBus;Ljava/lang/Boolean;I)V", "k", "c", "status", "q", "openType", "openBizType", "", "", "extParams", "m", "(Lcn/soul/android/base/block_frame/databus/DataBus;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;)V", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/soulapp/cpnt_voiceparty/bean/BottomMoreFunction;", "a", "Landroidx/lifecycle/MutableLiveData;", "d", "()Landroidx/lifecycle/MutableLiveData;", "functionLiveData", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "f", "openGameResult", "h", "switchFunctionLiveData", "Lcn/soulapp/cpnt_voiceparty/bean/OperationResult;", "g", "pkFunctionLiveData", "Landroid/app/Application;", "app", AppAgent.CONSTRUCT, "(Landroid/app/Application;)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class GameViewModel extends RxViewModel {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<List<BottomMoreFunction>> functionLiveData;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<RequestResult<Object>> openGameResult;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<RequestResult<Object>> switchFunctionLiveData;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final MutableLiveData<OperationResult> pkFunctionLiveData;

    /* JADX INFO: renamed from: cn.soulapp.cpnt_voiceparty.mvvm.GameViewModel$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: GameViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/mvvm/GameViewModel$a;", "", "", "CLASSIFY_TYPE_GAME", "I", AppAgent.CONSTRUCT, "()V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public static ChangeQuickRedirect changeQuickRedirect;

        private Companion() {
        }

        public /* synthetic */ Companion(q qVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: GameViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001a\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/GameViewModel$b", "Lcom/walid/rxretrofit/HttpSubscriber;", "", "t", "Lkotlin/w;", "a", "(Ljava/lang/Boolean;)V", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class b extends HttpSubscriber<Boolean> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DataBus f143392a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameViewModel f143393b;

        b(DataBus dataBus, GameViewModel gameViewModel) {
            this.f143392a = dataBus;
            this.f143393b = gameViewModel;
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable Boolean t11) {
            SoulHouseDriver soulHouseDriverJ0;
            MyKtvSongInfo myKtvSongInfo;
            if (PatchProxy.proxy(new Object[]{t11}, this, changeQuickRedirect, false, 2, new Class[]{Boolean.class}, Void.TYPE).isSupported || !v.e(t11, Boolean.TRUE) || (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f143392a)) == null || (myKtvSongInfo = (MyKtvSongInfo) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.S())) == null) {
                return;
            }
            myKtvSongInfo.setMatchId(null);
            myKtvSongInfo.setMatchHighestSponsor(null);
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            this.f143393b.d().setValue(null);
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
        }
    }

    /* JADX INFO: compiled from: GameViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/GameViewModel$c", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/OperationResult;", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c extends HttpSubscriber<OperationResult> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DataBus f143395b;

        c(DataBus dataBus) {
            this.f143395b = dataBus;
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable OperationResult operationResult) {
            PkModel pkModel;
            if (PatchProxy.proxy(new Object[]{operationResult}, this, changeQuickRedirect, false, 2, new Class[]{OperationResult.class}, Void.TYPE).isSupported) {
                return;
            }
            GameViewModel.this.g().setValue(operationResult);
            if (!(operationResult != null && operationResult.getResult())) {
                String failedDesc = operationResult != null ? operationResult.getFailedDesc() : null;
                if (failedDesc == null) {
                    failedDesc = "";
                }
                ExtensionsKt.toast(failedDesc);
                return;
            }
            SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f143395b);
            if (soulHouseDriverJ0 != null && (pkModel = (PkModel) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.a0())) != null) {
                pkModel.q(4);
            }
            b0 b0Var = b0.f142548a;
            DataBus dataBus = this.f143395b;
            cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154984i;
            b0Var.F(dataBus, Integer.valueOf(hVar.getId()), hVar.getGroupType(), false);
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            GameViewModel.this.g().setValue(null);
        }
    }

    /* JADX INFO: compiled from: GameViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u00040\u0001J$\u0010\u0007\u001a\u00020\u00062\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u0004H\u0016J\u001a\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\r"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/GameViewModel$d", "Lcom/walid/rxretrofit/HttpSubscriber;", "Ljava/util/ArrayList;", "Lcn/soulapp/cpnt_voiceparty/bean/GameInfo;", "Lkotlin/collections/ArrayList;", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class d extends HttpSubscriber<ArrayList<GameInfo>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DataBus f143396a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameViewModel f143397b;

        d(DataBus dataBus, GameViewModel gameViewModel) {
            this.f143396a = dataBus;
            this.f143397b = gameViewModel;
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable ArrayList<GameInfo> arrayList) {
            if (PatchProxy.proxy(new Object[]{arrayList}, this, changeQuickRedirect, false, 2, new Class[]{ArrayList.class}, Void.TYPE).isSupported || arrayList == null) {
                return;
            }
            DataBus dataBus = this.f143396a;
            ArrayList arrayList2 = new ArrayList(w.x(arrayList, 10));
            Iterator<T> it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(DataConvertUtil.f161894a.d(SoulHouseExtensionKt.j0(dataBus), (GameInfo) it.next()));
            }
            this.f143397b.d().setValue(arrayList2);
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            this.f143397b.d().setValue(null);
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
        }
    }

    /* JADX INFO: compiled from: GameViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/GameViewModel$e", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class e extends s<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        e() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RequestResult<Object> requestResult) {
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if ((requestResult == null || requestResult.getResult()) ? false : true) {
                ExtensionsKt.toast(TextUtils.isEmpty(requestResult.getFailedMsg()) ? requestResult.getFailedDesc() : requestResult.getFailedMsg());
            } else {
                GameViewModel.this.h().setValue(requestResult);
            }
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            GameViewModel.this.h().setValue(null);
        }
    }

    /* JADX INFO: compiled from: GameViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/GameViewModel$f", "Lcom/walid/rxretrofit/HttpSubscriber;", "Lcn/soulapp/cpnt_voiceparty/bean/OperationResult;", "t", "Lkotlin/w;", "a", "", "code", "", "message", "error", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class f extends HttpSubscriber<OperationResult> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DataBus f143400b;

        f(DataBus dataBus) {
            this.f143400b = dataBus;
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(@Nullable OperationResult operationResult) {
            PkModel pkModel;
            boolean z11 = false;
            if (PatchProxy.proxy(new Object[]{operationResult}, this, changeQuickRedirect, false, 2, new Class[]{OperationResult.class}, Void.TYPE).isSupported) {
                return;
            }
            GameViewModel.this.g().setValue(operationResult);
            if (operationResult != null && operationResult.getResult()) {
                z11 = true;
            }
            if (z11) {
                SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f143400b);
                if (soulHouseDriverJ0 != null && (pkModel = (PkModel) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.a0())) != null) {
                    pkModel.q(1);
                }
                b0 b0Var = b0.f142548a;
                DataBus dataBus = this.f143400b;
                cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154984i;
                b0Var.F(dataBus, Integer.valueOf(hVar.getId()), hVar.getGroupType(), true);
                cn.soul.sa.common.kit.subkit.i.f15817a.f("PK模式");
                return;
            }
            String failedMsg = null;
            if (TextUtils.isEmpty(operationResult != null ? operationResult.getFailedMsg() : null)) {
                if (operationResult != null) {
                    failedMsg = operationResult.getFailedDesc();
                }
            } else if (operationResult != null) {
                failedMsg = operationResult.getFailedMsg();
            }
            if (failedMsg == null) {
                failedMsg = "";
            }
            ExtensionsKt.toast(failedMsg);
        }

        @Override // com.walid.rxretrofit.HttpSubscriber
        public void error(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            GameViewModel.this.g().setValue(null);
        }
    }

    /* JADX INFO: compiled from: GameViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/GameViewModel$g", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class g extends s<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DataBus f143402d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Integer f143403e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(DataBus dataBus, Integer num) {
            super(true);
            this.f143402d = dataBus;
            this.f143403e = num;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RequestResult<Object> requestResult) {
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if ((requestResult == null || requestResult.getResult()) ? false : true) {
                ExtensionsKt.toast(TextUtils.isEmpty(requestResult.getFailedMsg()) ? requestResult.getFailedDesc() : requestResult.getFailedMsg());
            } else {
                if (requestResult != null && requestResult.getResult()) {
                    GameViewModel.this.l(this.f143402d, this.f143403e);
                }
            }
            GameViewModel.this.h().setValue(requestResult);
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            ExtensionsKt.toast(String.valueOf(str));
            GameViewModel.this.h().setValue(new RequestResult<>());
        }
    }

    /* JADX INFO: compiled from: GameViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/GameViewModel$h", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class h extends s<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Boolean f143404c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DataBus f143405d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ GameViewModel f143406e;

        h(Boolean bool, DataBus dataBus, GameViewModel gameViewModel) {
            this.f143404c = bool;
            this.f143405d = dataBus;
            this.f143406e = gameViewModel;
        }

        /* JADX WARN: Code duplicated, block: B:41:0x00d1  */
        /* JADX WARN: Code duplicated, block: B:43:0x00d9  */
        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RequestResult<Object> requestResult) {
            SoulHouseDriver soulHouseDriverJ0;
            SoulHouseContainer soulHouseContainerP0;
            SoulHouseContainer soulHouseContainerP1;
            List<String> funcMode;
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            if ((requestResult == null || requestResult.getResult()) ? false : true) {
                ExtensionsKt.toast(TextUtils.isEmpty(requestResult.getFailedMsg()) ? requestResult.getFailedDesc() : requestResult.getFailedMsg());
                return;
            }
            if (v.e(this.f143404c, Boolean.TRUE)) {
                RoomChatEngineManager.getInstance().stopMusic();
                SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(this.f143405d);
                if (soulHouseDriverJ1 != null) {
                    soulHouseDriverJ1.removeX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.O());
                    SoulHouseContainer soulHouseContainerP2 = soulHouseDriverJ1.p0();
                    if (soulHouseContainerP2 != null) {
                        soulHouseContainerP2.C(BlockMessage.SONG_MACHINE_CLOSE);
                    }
                    ChatRoomModel chatRoomModelV = soulHouseDriverJ1.a1().v();
                    if (chatRoomModelV != null && (funcMode = chatRoomModelV.getFuncMode()) != null) {
                        funcMode.remove("live_song");
                    }
                }
                b0 b0Var = b0.f142548a;
                DataBus dataBus = this.f143405d;
                cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P;
                b0Var.F(dataBus, Integer.valueOf(hVar.getId()), hVar.getGroupType(), false);
                SoulHouseDriver soulHouseDriverJ2 = SoulHouseExtensionKt.j0(this.f143405d);
                if (soulHouseDriverJ2 != null && (soulHouseContainerP1 = soulHouseDriverJ2.p0()) != null) {
                    soulHouseContainerP1.C(BlockMessage.MSG_SHOW_ATMOSPHERE_ENTRANCE);
                }
            } else {
                if (SConfiger.getBoolean("music_machine_open_clear_data", false)) {
                    soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f143405d);
                    if (soulHouseDriverJ0 != null) {
                        soulHouseDriverJ0.provideX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.O(), new MusicMachineInfo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, false, null, null, null, null, null, 16777215, null));
                    }
                } else {
                    SoulHouseDriver soulHouseDriverJ3 = SoulHouseExtensionKt.j0(this.f143405d);
                    if ((soulHouseDriverJ3 != null ? (MusicMachineInfo) soulHouseDriverJ3.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.O()) : null) == null) {
                        soulHouseDriverJ0 = SoulHouseExtensionKt.j0(this.f143405d);
                        if (soulHouseDriverJ0 != null) {
                            soulHouseDriverJ0.provideX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.O(), new MusicMachineInfo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, false, null, null, null, null, null, 16777215, null));
                        }
                    }
                }
                SoulHouseDriver soulHouseDriverJ4 = SoulHouseExtensionKt.j0(this.f143405d);
                if (soulHouseDriverJ4 != null && (soulHouseContainerP0 = soulHouseDriverJ4.p0()) != null) {
                    soulHouseContainerP0.C(BlockMessage.SONG_MACHINE_OPEN);
                }
                b0 b0Var2 = b0.f142548a;
                DataBus dataBus2 = this.f143405d;
                cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h hVar2 = cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.P;
                b0Var2.F(dataBus2, Integer.valueOf(hVar2.getId()), hVar2.getGroupType(), true);
            }
            this.f143406e.h().setValue(requestResult);
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            this.f143406e.h().setValue(null);
        }
    }

    /* JADX INFO: compiled from: GameViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/GameViewModel$i", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class i extends s<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f143408d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ DataBus f143409e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f143410f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(boolean z11, DataBus dataBus, String str) {
            super(true);
            this.f143408d = z11;
            this.f143409e = dataBus;
            this.f143410f = str;
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@Nullable RequestResult<Object> requestResult) {
            if (PatchProxy.proxy(new Object[]{requestResult}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            GameViewModel.this.f().setValue(requestResult);
            if (!(requestResult != null && requestResult.getResult())) {
                String failedMsg = null;
                if (TextUtils.isEmpty(requestResult != null ? requestResult.getFailedMsg() : null)) {
                    if (requestResult != null) {
                        failedMsg = requestResult.getFailedDesc();
                    }
                } else if (requestResult != null) {
                    failedMsg = requestResult.getFailedMsg();
                }
                if (failedMsg == null) {
                    failedMsg = "";
                }
                cn.soulapp.lib.widget.toast.e.u(failedMsg);
                return;
            }
            if (!this.f143408d || !requestResult.getResult()) {
                cn.soul.sa.common.kit.subkit.i.f15817a.f("聊天模式");
                return;
            }
            GameViewModel.this.l(this.f143409e, Integer.valueOf(n.d(this.f143410f)));
            if (n.d(this.f143410f) == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154983h.getId()) {
                cn.soul.sa.common.kit.subkit.i.f15817a.f("KTV模式");
            }
            if (n.d(this.f143410f) == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154986k.getId()) {
                cn.soul.sa.common.kit.subkit.i.f15817a.f("心动模式");
            }
            if (n.d(this.f143410f) == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154987l.getId()) {
                cn.soul.sa.common.kit.subkit.i.f15817a.f("速配模式");
            }
            if (n.d(this.f143410f) == cn.soulapp.cpnt_voiceparty.soulhouse.playmode.h.f154988m.getId()) {
                cn.soul.sa.common.kit.subkit.i.f15817a.f("欢乐寓言");
            }
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            GameViewModel.this.f().setValue(null);
        }
    }

    /* JADX INFO: compiled from: GameViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\f"}, d2 = {"cn/soulapp/cpnt_voiceparty/mvvm/GameViewModel$j", "Lty/s;", "Lcn/soulapp/cpnt_voiceparty/bean/RequestResult;", "", "t", "Lkotlin/w;", "d", "", "code", "", "message", "onError", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class j extends s<RequestResult<Object>> {
        public static ChangeQuickRedirect changeQuickRedirect;

        j() {
        }

        @Override // com.walid.rxretrofit.interfaces.IHttpCallback
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onNext(@NotNull RequestResult<Object> t11) {
            if (PatchProxy.proxy(new Object[]{t11}, this, changeQuickRedirect, false, 2, new Class[]{RequestResult.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(t11, "t");
            if (!t11.getResult()) {
                ExtensionsKt.toast(TextUtils.isEmpty(t11.getFailedMsg()) ? t11.getFailedDesc() : t11.getFailedMsg());
            }
            GameViewModel.this.h().setValue(t11);
        }

        @Override // ty.s, com.walid.rxretrofit.interfaces.IHttpCallback
        public void onError(int i11, @Nullable String str) {
            if (PatchProxy.proxy(new Object[]{new Integer(i11), str}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE, String.class}, Void.TYPE).isSupported) {
                return;
            }
            super.onError(i11, str);
            if (str == null) {
                str = "";
            }
            ExtensionsKt.toast(str);
            GameViewModel.this.h().setValue(null);
        }
    }

    static {
        if (PatchProxy.proxy(new Object[0], null, changeQuickRedirect, true, 14, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        INSTANCE = new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GameViewModel(@NotNull Application app) {
        super(app);
        v.j(app, "app");
        this.functionLiveData = new MutableLiveData<>();
        this.openGameResult = new MutableLiveData<>();
        this.switchFunctionLiveData = new MutableLiveData<>();
        this.pkFunctionLiveData = new MutableLiveData<>();
    }

    private final boolean j(DataBus dataBus, Integer playType) {
        SoulHouseDriver soulHouseDriverJ0;
        PlayFunctionBean playFunctionBean;
        List<PlayFunctionTypeBean> classifySetups;
        Object next;
        ArrayList<Integer> bizTypes;
        Integer classifyType;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[]{dataBus, playType}, this, changeQuickRedirect, false, 5, new Class[]{DataBus.class, Integer.class}, Boolean.TYPE);
        if (patchProxyResultProxy.isSupported) {
            return ((Boolean) patchProxyResultProxy.result).booleanValue();
        }
        if (playType != null && playType.intValue() > 0 && (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus)) != null && (playFunctionBean = (PlayFunctionBean) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.b0())) != null && (classifySetups = playFunctionBean.getClassifySetups()) != null) {
            Iterator<T> it = classifySetups.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                classifyType = ((PlayFunctionTypeBean) next).getClassifyType();
            } while (!(classifyType != null && classifyType.intValue() == 1));
            PlayFunctionTypeBean playFunctionTypeBean = (PlayFunctionTypeBean) next;
            if (playFunctionTypeBean != null && (bizTypes = playFunctionTypeBean.getBizTypes()) != null) {
                return bizTypes.contains(playType);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(DataBus dataBus, Integer playType) {
        SoulHouseDriver soulHouseDriverJ0;
        if (PatchProxy.proxy(new Object[]{dataBus, playType}, this, changeQuickRedirect, false, 4, new Class[]{DataBus.class, Integer.class}, Void.TYPE).isSupported || (soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus)) == null) {
            return;
        }
        k40.a.f229076a.h(v.e(SoulHouseExtensionKt.r(soulHouseDriverJ0), "CHATDETAIL:MORE:PLAY:CREATE_ROOM"), j(dataBus, playType), (String) soulHouseDriverJ0.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.c0()), playType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void n(GameViewModel gameViewModel, DataBus dataBus, Integer num, Integer num2, Map map, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            map = null;
        }
        gameViewModel.m(dataBus, num, num2, map);
    }

    public final void b(@Nullable DataBus dataBus) {
        MyKtvSongInfo myKtvSongInfo;
        if (PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 6, new Class[]{DataBus.class}, Void.TYPE).isSupported) {
            return;
        }
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        String matchId = null;
        String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
        if (strP == null) {
            strP = "";
        }
        SoulHouseDriver soulHouseDriverJ1 = SoulHouseExtensionKt.j0(dataBus);
        if (soulHouseDriverJ1 != null && (myKtvSongInfo = (MyKtvSongInfo) soulHouseDriverJ1.getX(cn.soulapp.cpnt_voiceparty.soulhouse.g.f149956a.S())) != null) {
            matchId = myKtvSongInfo.getMatchId();
        }
        register((Disposable) h30.g.f225309a.J0(r0.l(new Pair("matchId", matchId), new Pair("roomId", strP))).subscribeWith(new b(dataBus, this)));
    }

    public final void c(@Nullable DataBus dataBus) {
        if (PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 10, new Class[]{DataBus.class}, Void.TYPE).isSupported) {
            return;
        }
        h30.g gVar = h30.g.f225309a;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        register((Disposable) gVar.e7(soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null, 0).subscribeWith(new c(dataBus)));
    }

    @NotNull
    public final MutableLiveData<List<BottomMoreFunction>> d() {
        return this.functionLiveData;
    }

    public final void e(@Nullable DataBus dataBus) {
        if (PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 2, new Class[]{DataBus.class}, Void.TYPE).isSupported) {
            return;
        }
        h30.g gVar = h30.g.f225309a;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        String strP = soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null;
        if (strP == null) {
            strP = "";
        }
        register((Disposable) gVar.r3(strP).subscribeWith(new d(dataBus, this)));
    }

    @NotNull
    public final MutableLiveData<RequestResult<Object>> f() {
        return this.openGameResult;
    }

    @NotNull
    public final MutableLiveData<OperationResult> g() {
        return this.pkFunctionLiveData;
    }

    @NotNull
    public final MutableLiveData<RequestResult<Object>> h() {
        return this.switchFunctionLiveData;
    }

    public final void i(@Nullable DataBus dataBus, @Nullable Boolean isOpenMusicalOpened, int id2) {
        if (PatchProxy.proxy(new Object[]{dataBus, isOpenMusicalOpened, new Integer(id2)}, this, changeQuickRedirect, false, 8, new Class[]{DataBus.class, Boolean.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        h30.g gVar = h30.g.f225309a;
        Pair[] pairArr = new Pair[3];
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        pairArr[0] = new Pair("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
        pairArr[1] = new Pair("bizType", Integer.valueOf(id2));
        pairArr[2] = new Pair("operateType", Integer.valueOf(v.e(isOpenMusicalOpened, Boolean.TRUE) ? 2 : 1));
        register((Disposable) gVar.u1(r0.n(pairArr)).subscribeWith(HttpSubscriber.create(new e())));
    }

    public final void k(@Nullable DataBus dataBus) {
        if (PatchProxy.proxy(new Object[]{dataBus}, this, changeQuickRedirect, false, 9, new Class[]{DataBus.class}, Void.TYPE).isSupported) {
            return;
        }
        h30.g gVar = h30.g.f225309a;
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        register((Disposable) gVar.e7(soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null, 1).subscribeWith(new f(dataBus)));
    }

    public final void m(@Nullable DataBus dataBus, @Nullable Integer openType, @Nullable Integer openBizType, @Nullable Map<String, ? extends Object> extParams) {
        if (PatchProxy.proxy(new Object[]{dataBus, openType, openBizType, extParams}, this, changeQuickRedirect, false, 12, new Class[]{DataBus.class, Integer.class, Integer.class, Map.class}, Void.TYPE).isSupported) {
            return;
        }
        Pair[] pairArr = new Pair[3];
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        pairArr[0] = m.a("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
        pairArr[1] = m.a("openType", openType);
        pairArr[2] = m.a("openBizType", openBizType);
        HashMap mapL = r0.l(pairArr);
        if (extParams != null) {
            mapL.put("extParams", extParams);
        }
        register((Disposable) h30.g.f225309a.R9(mapL).subscribeWith(HttpSubscriber.create(new g(dataBus, openBizType))));
    }

    public final void o(@Nullable DataBus dataBus, @Nullable Boolean isOpenMusicalOpened) {
        if (PatchProxy.proxy(new Object[]{dataBus, isOpenMusicalOpened}, this, changeQuickRedirect, false, 7, new Class[]{DataBus.class, Boolean.class}, Void.TYPE).isSupported) {
            return;
        }
        h30.g gVar = h30.g.f225309a;
        Pair[] pairArr = new Pair[2];
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        pairArr[0] = new Pair("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
        pairArr[1] = new Pair("type", Integer.valueOf(!v.e(isOpenMusicalOpened, Boolean.TRUE) ? 1 : 0));
        register((Disposable) gVar.s9(r0.n(pairArr)).subscribeWith(HttpSubscriber.create(new h(isOpenMusicalOpened, dataBus, this))));
    }

    public final void p(@Nullable DataBus dataBus, boolean z11, @Nullable String str) {
        if (PatchProxy.proxy(new Object[]{dataBus, new Byte(z11 ? (byte) 1 : (byte) 0), str}, this, changeQuickRedirect, false, 3, new Class[]{DataBus.class, Boolean.TYPE, String.class}, Void.TYPE).isSupported) {
            return;
        }
        Pair[] pairArr = new Pair[3];
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        pairArr[0] = m.a("roomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
        pairArr[1] = m.a("playType", str);
        pairArr[2] = m.a("operateType", ExtensionsKt.select(z11, "1", "2"));
        h30.g.f225309a.a7(r0.l(pairArr)).subscribe(HttpSubscriber.create(new i(z11, dataBus, str)));
    }

    public final void q(@Nullable DataBus dataBus, int i11) {
        if (PatchProxy.proxy(new Object[]{dataBus, new Integer(i11)}, this, changeQuickRedirect, false, 11, new Class[]{DataBus.class, Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        h30.g gVar = h30.g.f225309a;
        Pair[] pairArr = new Pair[3];
        SoulHouseDriver soulHouseDriverJ0 = SoulHouseExtensionKt.j0(dataBus);
        pairArr[0] = new Pair("outerRoomId", soulHouseDriverJ0 != null ? SoulHouseExtensionKt.P(soulHouseDriverJ0) : null);
        pairArr[1] = new Pair("outerRoomType", "chat_live");
        pairArr[2] = new Pair("type", Integer.valueOf(i11));
        register((Disposable) gVar.ha(r0.n(pairArr)).subscribeWith(HttpSubscriber.create(new j())));
    }
}