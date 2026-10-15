package cn.soulapp.cpnt_voiceparty.createroom.ui;

import android.content.Context;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import cn.android.lib.soul_interface.main.IReactNativeService;
import cn.com.hjq.shape.layout.ShapeConstraintLayout;
import cn.com.hjq.shape.view.ShapeEditText;
import cn.soul.android.component.SoulRouter;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.android.lib.rn.ReactNativeRouterCallback;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.bean.ChatRoomTopicBean;
import cn.soulapp.cpnt_voiceparty.databinding.CVpCreateRoomPageRoomInfoLayoutBinding;
import cn.soulapp.cpnt_voiceparty.soulhouse.SoulHouseExtensionKt;
import cn.soulapp.cpnt_voiceparty.soulhouse.data.RoomConfigListModel;
import cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomTopicRecDialog;
import cn.soulapp.cpnt_voiceparty.util.SwitchUtil;
import cn.soulapp.cpnt_voiceparty.util.a1;
import cn.soulapp.lib.executors.LightExecutor;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.facebook.react.uimanager.ViewProps;
import com.ishumei.smantifraud.l11l11I1111l;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.v;
import kotlin.text.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: CreateRoomPageRoomInfoView.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010@\u001a\u00020?\u0012\n\b\u0002\u0010B\u001a\u0004\u0018\u00010A\u0012\b\b\u0002\u0010C\u001a\u00020$¢\u0006\u0004\bD\u0010EJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\bJ\u000e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\bJ\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u0010\u0010\u0018\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016J\u000e\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001c\u001a\u00020\u0016J\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dJ\b\u0010 \u001a\u0004\u0018\u00010\u001fJ\u001a\u0010\"\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0016J\u0010\u0010#\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016J\u0010\u0010&\u001a\u00020\u00022\b\b\u0001\u0010%\u001a\u00020$J\u0010\u0010'\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016J\b\u0010(\u001a\u0004\u0018\u00010\u0014J\b\u0010)\u001a\u0004\u0018\u00010\u0014J\b\u0010*\u001a\u0004\u0018\u00010\u0014J\b\u0010+\u001a\u0004\u0018\u00010\u0014J\b\u0010-\u001a\u0004\u0018\u00010,J\u000e\u0010.\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bR\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00107\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010\u0010\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>¨\u0006F"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/ui/CreateRoomPageRoomInfoView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lkotlin/w;", "k", "n", "l", "j", "m", "", "isShow", "r", "o", "p", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RoomConfigListModel;", "roomConfigListMode", "setRoomConfigListMode", "showOnlyFriendOption", "setShowOnlyFriendOption", "show", "q", "Landroid/view/View;", "getCreatorHallEntry", "", "title", "setRoomName", "Lcn/soulapp/cpnt_voiceparty/createroom/ui/ICreateRoomInfoListener;", "listener", "setListener", "getRoomName", "Lcn/com/hjq/shape/view/ShapeEditText;", "getRoomNameEt", "Landroid/widget/ImageView;", "getRandomNameBtn", "content", "setWarmContentTv", "setFmCodeTv", "", "resId", "setSongMachineIconIv", "setPartyTypeTitle", "getMoreTopicBtn", "getPartyTypeBtn", "getFmCodeBtn", "getVgFmCode", "Landroidx/recyclerview/widget/RecyclerView;", "getTopicRv", "s", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpCreateRoomPageRoomInfoLayoutBinding;", "a", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpCreateRoomPageRoomInfoLayoutBinding;", "binding", ExpcompatUtils.COMPAT_VALUE_780, "Lcn/soulapp/cpnt_voiceparty/createroom/ui/ICreateRoomInfoListener;", "c", "I", "roomPrivateStatus", "d", "Lcn/soulapp/cpnt_voiceparty/soulhouse/data/RoomConfigListModel;", l11l11I1111l.l111l1111lIl, "Ljava/lang/Boolean;", "lastIsCreate", "f", "Z", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", AppAgent.CONSTRUCT, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CreateRoomPageRoomInfoView extends ConstraintLayout {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private CVpCreateRoomPageRoomInfoLayoutBinding binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private ICreateRoomInfoListener listener;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int roomPrivateStatus;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private RoomConfigListModel roomConfigListMode;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private Boolean lastIsCreate;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean showOnlyFriendOption;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f130815g;

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class a implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130816a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130817b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CreateRoomPageRoomInfoView f130818c;

        public a(View view, long j11, CreateRoomPageRoomInfoView createRoomPageRoomInfoView) {
            this.f130816a = view;
            this.f130817b = j11;
            this.f130818c = createRoomPageRoomInfoView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ShapeEditText shapeEditText;
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130816a) >= this.f130817b) {
                CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.f130818c.binding;
                if (cVpCreateRoomPageRoomInfoLayoutBinding != null && (shapeEditText = cVpCreateRoomPageRoomInfoLayoutBinding.f131665p) != null) {
                    shapeEditText.setText("");
                }
                CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding2 = this.f130818c.binding;
                ShapeEditText shapeEditText2 = cVpCreateRoomPageRoomInfoLayoutBinding2 != null ? cVpCreateRoomPageRoomInfoLayoutBinding2.f131665p : null;
                if (shapeEditText2 != null) {
                    shapeEditText2.setTag("");
                }
            }
            ExtensionsKt.setLastClickTime(this.f130816a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class b implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130819a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130820b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CreateRoomPageRoomInfoView f130821c;

        public b(View view, long j11, CreateRoomPageRoomInfoView createRoomPageRoomInfoView) {
            this.f130819a = view;
            this.f130820b = j11;
            this.f130821c = createRoomPageRoomInfoView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130819a) >= this.f130820b) {
                RoomTopicRecDialog roomTopicRecDialogA = RoomTopicRecDialog.INSTANCE.a(1, "");
                roomTopicRecDialogA.U(this.f130821c.new c(roomTopicRecDialogA));
                Context context = this.f130821c.getContext();
                FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
                if (fragmentActivity != null) {
                    roomTopicRecDialogA.show(fragmentActivity.getSupportFragmentManager(), "partyTopicRec");
                }
                a1.f162146a.c();
            }
            ExtensionsKt.setLastClickTime(this.f130819a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: CreateRoomPageRoomInfoView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/ui/CreateRoomPageRoomInfoView$c", "Lcn/soulapp/cpnt_voiceparty/soulhouse/dialog/RoomTopicRecDialog$TopicClickListener;", "Lcn/soulapp/cpnt_voiceparty/bean/ChatRoomTopicBean;", "roomTopicBean", "Lkotlin/w;", "onTopicItemClick", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class c implements RoomTopicRecDialog.TopicClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RoomTopicRecDialog f130823b;

        c(RoomTopicRecDialog roomTopicRecDialog) {
            this.f130823b = roomTopicRecDialog;
        }

        @Override // cn.soulapp.cpnt_voiceparty.soulhouse.dialog.RoomTopicRecDialog.TopicClickListener
        public void onTopicItemClick(@Nullable ChatRoomTopicBean chatRoomTopicBean) {
            if (PatchProxy.proxy(new Object[]{chatRoomTopicBean}, this, changeQuickRedirect, false, 2, new Class[]{ChatRoomTopicBean.class}, Void.TYPE).isSupported) {
                return;
            }
            ShapeEditText roomNameEt = CreateRoomPageRoomInfoView.this.getRoomNameEt();
            if (roomNameEt != null) {
                String topicName = chatRoomTopicBean != null ? chatRoomTopicBean.getTopicName() : null;
                if (topicName == null) {
                    topicName = "";
                }
                roomNameEt.setText(topicName);
            }
            this.f130823b.dismiss();
            a1.f162146a.i();
        }
    }

    /* JADX INFO: compiled from: CreateRoomPageRoomInfoView.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J*\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J*\u0010\u000b\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0012\u0010\r\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\u000e"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/ui/CreateRoomPageRoomInfoView$d", "Landroid/text/TextWatcher;", "", "s", "", ViewProps.START, "count", "after", "Lkotlin/w;", "beforeTextChanged", "before", "onTextChanged", "Landroid/text/Editable;", "afterTextChanged", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class d implements TextWatcher {
        public static ChangeQuickRedirect changeQuickRedirect;

        d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@Nullable Editable editable) {
            ImageView imageView;
            ImageView imageView2;
            if (PatchProxy.proxy(new Object[]{editable}, this, changeQuickRedirect, false, 2, new Class[]{Editable.class}, Void.TYPE).isSupported) {
                return;
            }
            String string = editable != null ? editable.toString() : null;
            if (string == null) {
                string = "";
            }
            ICreateRoomInfoListener iCreateRoomInfoListener = CreateRoomPageRoomInfoView.this.listener;
            if (iCreateRoomInfoListener != null) {
                iCreateRoomInfoListener.roomNameEditTextChanged(string);
            }
            CreateRoomPageRoomInfoView.this.r(string.length() > 0);
            boolean z11 = string.length() == 0;
            if (!v.e(Boolean.valueOf(z11), CreateRoomPageRoomInfoView.this.lastIsCreate)) {
                CreateRoomPageRoomInfoView.this.lastIsCreate = Boolean.valueOf(z11);
                cn.soulapp.cpnt_voiceparty.util.track.a.f162372a.a1(string.length() > 0);
            }
            if (string.length() > 0) {
                CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = CreateRoomPageRoomInfoView.this.binding;
                if (cVpCreateRoomPageRoomInfoLayoutBinding == null || (imageView2 = cVpCreateRoomPageRoomInfoLayoutBinding.f131663n) == null) {
                    return;
                }
                imageView2.setImageResource(R$drawable.f127118b5);
                return;
            }
            CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding2 = CreateRoomPageRoomInfoView.this.binding;
            if (cVpCreateRoomPageRoomInfoLayoutBinding2 == null || (imageView = cVpCreateRoomPageRoomInfoLayoutBinding2.f131663n) == null) {
                return;
            }
            imageView.setImageResource(R$drawable.f127139c5);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@Nullable CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@Nullable CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    /* JADX INFO: compiled from: extensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "cn/soulapp/android/lib/common/utils/ExtensionsKt$singleClick$1", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class e implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f130825a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f130826b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CreateRoomPageRoomInfoView f130827c;

        public e(View view, long j11, CreateRoomPageRoomInfoView createRoomPageRoomInfoView) {
            this.f130825a = view;
            this.f130826b = j11;
            this.f130827c = createRoomPageRoomInfoView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - ExtensionsKt.getLastClickTime(this.f130825a) >= this.f130826b) {
                ICreateRoomInfoListener iCreateRoomInfoListener = this.f130827c.listener;
                if (iCreateRoomInfoListener != null) {
                    iCreateRoomInfoListener.roomPrivateBtnClick();
                }
                SoulRouter.j().e("soul://ul.soulapp.cn/reactnative/container?pageId=soul_rn_room_status_setting&privateStatus=" + this.f130827c.roomPrivateStatus + "&showOnlyFriendOption=" + this.f130827c.showOnlyFriendOption + "&animated=false&transparent=true").d();
                IReactNativeService iReactNativeService = (IReactNativeService) SoulRouter.j().u(IReactNativeService.class);
                if (iReactNativeService != null) {
                    iReactNativeService.addRouterCallbackListener("soul_rn_room_status_setting", this.f130827c.new f());
                }
            }
            ExtensionsKt.setLastClickTime(this.f130825a, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: compiled from: CreateRoomPageRoomInfoView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0016J\u001c\u0010\b\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0016¨\u0006\t"}, d2 = {"cn/soulapp/cpnt_voiceparty/createroom/ui/CreateRoomPageRoomInfoView$f", "Lcn/soulapp/android/lib/rn/ReactNativeRouterCallback;", "", "", "", "params", "Lkotlin/w;", "onReceived", "onReceivedAfterPop", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class f implements ReactNativeRouterCallback {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: compiled from: LightExecutor.kt */
        @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/w;", "run", "()V", "cn/soulapp/lib/executors/LightExecutor$f", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        public static final class a implements Runnable {
            public static ChangeQuickRedirect changeQuickRedirect;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CreateRoomPageRoomInfoView f130829a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f130830b;

            public a(CreateRoomPageRoomInfoView createRoomPageRoomInfoView, int i11) {
                this.f130829a = createRoomPageRoomInfoView;
                this.f130830b = i11;
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], Void.TYPE).isSupported) {
                    return;
                }
                ICreateRoomInfoListener iCreateRoomInfoListener = this.f130829a.listener;
                if (iCreateRoomInfoListener != null) {
                    iCreateRoomInfoListener.roomPrivateStatusChanged(this.f130830b);
                }
                this.f130829a.p();
            }
        }

        f() {
        }

        @Override // cn.soulapp.android.lib.rn.ReactNativeRouterCallback
        public void onReceived(@NotNull Map<String, ? extends Object> params) {
            if (PatchProxy.proxy(new Object[]{params}, this, changeQuickRedirect, false, 2, new Class[]{Map.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(params, "params");
        }

        @Override // cn.soulapp.android.lib.rn.ReactNativeRouterCallback
        public void onReceivedAfterPop(@NotNull Map<String, ? extends Object> params) {
            if (PatchProxy.proxy(new Object[]{params}, this, changeQuickRedirect, false, 3, new Class[]{Map.class}, Void.TYPE).isSupported) {
                return;
            }
            v.j(params, "params");
            Object obj = params.get("privateStatus");
            Double d11 = obj instanceof Double ? (Double) obj : null;
            int iDoubleValue = d11 != null ? (int) d11.doubleValue() : 0;
            CreateRoomPageRoomInfoView.this.roomPrivateStatus = iDoubleValue;
            CreateRoomPageRoomInfoView createRoomPageRoomInfoView = CreateRoomPageRoomInfoView.this;
            if (!v.e(Looper.getMainLooper(), Looper.myLooper())) {
                LightExecutor.f165927a.X().post(new a(createRoomPageRoomInfoView, iDoubleValue));
                return;
            }
            ICreateRoomInfoListener iCreateRoomInfoListener = createRoomPageRoomInfoView.listener;
            if (iCreateRoomInfoListener != null) {
                iCreateRoomInfoListener.roomPrivateStatusChanged(iDoubleValue);
            }
            createRoomPageRoomInfoView.p();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CreateRoomPageRoomInfoView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CreateRoomPageRoomInfoView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CreateRoomPageRoomInfoView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        v.j(context, "context");
        this.f130815g = new LinkedHashMap();
        this.binding = CVpCreateRoomPageRoomInfoLayoutBinding.bind(View.inflate(context, R$layout.f129620i1, this));
        m();
        k();
    }

    private final void j() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding;
        ImageView imageView;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 8, new Class[0], Void.TYPE).isSupported || (cVpCreateRoomPageRoomInfoLayoutBinding = this.binding) == null || (imageView = cVpCreateRoomPageRoomInfoLayoutBinding.f131652c) == null) {
            return;
        }
        imageView.setOnClickListener(new a(imageView, 500L, this));
    }

    private final void k() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 5, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        j();
        l();
        n();
    }

    private final void l() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding;
        LinearLayout linearLayout;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 7, new Class[0], Void.TYPE).isSupported || (cVpCreateRoomPageRoomInfoLayoutBinding = this.binding) == null || (linearLayout = cVpCreateRoomPageRoomInfoLayoutBinding.f131660k) == null) {
            return;
        }
        linearLayout.setOnClickListener(new b(linearLayout, 500L, this));
    }

    private final void m() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding;
        ShapeEditText shapeEditText;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 9, new Class[0], Void.TYPE).isSupported || (cVpCreateRoomPageRoomInfoLayoutBinding = this.binding) == null || (shapeEditText = cVpCreateRoomPageRoomInfoLayoutBinding.f131665p) == null) {
            return;
        }
        shapeEditText.addTextChangedListener(new d());
    }

    private final void n() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding;
        LeftTextRightIconCommonView leftTextRightIconCommonView;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 6, new Class[0], Void.TYPE).isSupported || (cVpCreateRoomPageRoomInfoLayoutBinding = this.binding) == null || (leftTextRightIconCommonView = cVpCreateRoomPageRoomInfoLayoutBinding.f131661l) == null) {
            return;
        }
        leftTextRightIconCommonView.setOnClickListener(new e(leftTextRightIconCommonView, 500L, this));
    }

    private final void o() {
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 18, new Class[0], Void.TYPE).isSupported || this.roomPrivateStatus != 2 || this.showOnlyFriendOption) {
            return;
        }
        this.roomPrivateStatus = 0;
        p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        String str;
        LeftTextRightIconCommonView leftTextRightIconCommonView;
        if (PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 19, new Class[0], Void.TYPE).isSupported) {
            return;
        }
        int i11 = this.roomPrivateStatus;
        if (i11 == 1) {
            str = "已隐藏";
        } else {
            str = i11 == 2 ? "仅挚友" : "已公开";
        }
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding == null || (leftTextRightIconCommonView = cVpCreateRoomPageRoomInfoLayoutBinding.f131661l) == null) {
            return;
        }
        leftTextRightIconCommonView.setTitle(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(boolean z11) {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding;
        ImageView imageView;
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 13, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported || (cVpCreateRoomPageRoomInfoLayoutBinding = this.binding) == null || (imageView = cVpCreateRoomPageRoomInfoLayoutBinding.f131652c) == null) {
            return;
        }
        ExtensionsKt.visibleOrGone(imageView, z11);
    }

    public static /* synthetic */ void setWarmContentTv$default(CreateRoomPageRoomInfoView createRoomPageRoomInfoView, boolean z11, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        createRoomPageRoomInfoView.setWarmContentTv(z11, str);
    }

    @Nullable
    public final View getCreatorHallEntry() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding != null) {
            return cVpCreateRoomPageRoomInfoLayoutBinding.f131654e;
        }
        return null;
    }

    @Nullable
    public final View getFmCodeBtn() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding != null) {
            return cVpCreateRoomPageRoomInfoLayoutBinding.f131657h;
        }
        return null;
    }

    @Nullable
    public final View getMoreTopicBtn() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding != null) {
            return cVpCreateRoomPageRoomInfoLayoutBinding.f131660k;
        }
        return null;
    }

    @Nullable
    public final View getPartyTypeBtn() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding != null) {
            return cVpCreateRoomPageRoomInfoLayoutBinding.f131662m;
        }
        return null;
    }

    @Nullable
    public final ImageView getRandomNameBtn() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding != null) {
            return cVpCreateRoomPageRoomInfoLayoutBinding.f131663n;
        }
        return null;
    }

    @NotNull
    public final String getRoomName() {
        Editable text;
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 12, new Class[0], String.class);
        if (patchProxyResultProxy.isSupported) {
            return (String) patchProxyResultProxy.result;
        }
        ShapeEditText roomNameEt = getRoomNameEt();
        String string = (roomNameEt == null || (text = roomNameEt.getText()) == null) ? null : text.toString();
        return string == null ? "" : string;
    }

    @Nullable
    public final ShapeEditText getRoomNameEt() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding != null) {
            return cVpCreateRoomPageRoomInfoLayoutBinding.f131665p;
        }
        return null;
    }

    @Nullable
    public final RecyclerView getTopicRv() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding != null) {
            return cVpCreateRoomPageRoomInfoLayoutBinding.f131667r;
        }
        return null;
    }

    @Nullable
    public final View getVgFmCode() {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding != null) {
            return cVpCreateRoomPageRoomInfoLayoutBinding.f131668s;
        }
        return null;
    }

    public final void q(boolean z11) {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding;
        ShapeConstraintLayout shapeConstraintLayout;
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 4, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported || !SwitchUtil.f162115a.d() || (cVpCreateRoomPageRoomInfoLayoutBinding = this.binding) == null || (shapeConstraintLayout = cVpCreateRoomPageRoomInfoLayoutBinding.f131654e) == null) {
            return;
        }
        ExtensionsKt.visibleOrGone(shapeConstraintLayout, z11);
    }

    public final void s(boolean z11) {
        View view;
        LinearLayout linearLayout;
        RecyclerView recyclerView;
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 20, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding != null && (recyclerView = cVpCreateRoomPageRoomInfoLayoutBinding.f131667r) != null) {
            ExtensionsKt.visibleOrGone(recyclerView, z11);
        }
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding2 = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding2 != null && (linearLayout = cVpCreateRoomPageRoomInfoLayoutBinding2.f131660k) != null) {
            ExtensionsKt.visibleOrGone(linearLayout, z11);
        }
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding3 = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding3 == null || (view = cVpCreateRoomPageRoomInfoLayoutBinding3.f131666q) == null) {
            return;
        }
        ExtensionsKt.visibleOrGone(view, z11);
    }

    public final void setFmCodeTv(@Nullable String str) {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding;
        LeftTextRightIconCommonView leftTextRightIconCommonView;
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 15, new Class[]{String.class}, Void.TYPE).isSupported || (cVpCreateRoomPageRoomInfoLayoutBinding = this.binding) == null || (leftTextRightIconCommonView = cVpCreateRoomPageRoomInfoLayoutBinding.f131657h) == null) {
            return;
        }
        leftTextRightIconCommonView.setTitle(str);
    }

    public final void setListener(@NotNull ICreateRoomInfoListener listener) {
        if (PatchProxy.proxy(new Object[]{listener}, this, changeQuickRedirect, false, 11, new Class[]{ICreateRoomInfoListener.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(listener, "listener");
        this.listener = listener;
    }

    public final void setPartyTypeTitle(@Nullable String str) {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding;
        LeftTextRightIconCommonView leftTextRightIconCommonView;
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 17, new Class[]{String.class}, Void.TYPE).isSupported || (cVpCreateRoomPageRoomInfoLayoutBinding = this.binding) == null || (leftTextRightIconCommonView = cVpCreateRoomPageRoomInfoLayoutBinding.f131662m) == null) {
            return;
        }
        leftTextRightIconCommonView.setTitle(str);
    }

    public final void setRoomConfigListMode(@Nullable RoomConfigListModel roomConfigListModel) {
        if (PatchProxy.proxy(new Object[]{roomConfigListModel}, this, changeQuickRedirect, false, 2, new Class[]{RoomConfigListModel.class}, Void.TYPE).isSupported) {
            return;
        }
        this.roomConfigListMode = roomConfigListModel;
        int iE = roomConfigListModel != null ? roomConfigListModel.getPrivateStatus() : 0;
        this.roomPrivateStatus = iE;
        ICreateRoomInfoListener iCreateRoomInfoListener = this.listener;
        if (iCreateRoomInfoListener != null) {
            iCreateRoomInfoListener.roomPrivateStatusChanged(iE);
        }
        p();
    }

    public final void setRoomName(@Nullable String str) {
        ShapeEditText shapeEditText;
        ShapeEditText shapeEditText2;
        Editable text;
        ShapeEditText shapeEditText3;
        int length = 0;
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 10, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding != null && (shapeEditText3 = cVpCreateRoomPageRoomInfoLayoutBinding.f131665p) != null) {
            shapeEditText3.setText(str == null ? "" : str);
        }
        try {
            CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding2 = this.binding;
            if (cVpCreateRoomPageRoomInfoLayoutBinding2 != null && (shapeEditText2 = cVpCreateRoomPageRoomInfoLayoutBinding2.f131665p) != null && (text = shapeEditText2.getText()) != null) {
                length = text.length();
            }
            CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding3 = this.binding;
            if (cVpCreateRoomPageRoomInfoLayoutBinding3 == null || (shapeEditText = cVpCreateRoomPageRoomInfoLayoutBinding3.f131665p) == null) {
                return;
            }
            shapeEditText.setSelection(length);
        } catch (Throwable unused) {
            SoulHouseExtensionKt.u0(this, "setRoomName", "roomNameEt:" + str);
        }
    }

    public final void setShowOnlyFriendOption(boolean z11) {
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0)}, this, changeQuickRedirect, false, 3, new Class[]{Boolean.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        this.showOnlyFriendOption = z11;
        o();
    }

    public final void setSongMachineIconIv(@DrawableRes int i11) {
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding;
        LeftTextRightIconCommonView leftTextRightIconCommonView;
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 16, new Class[]{Integer.TYPE}, Void.TYPE).isSupported || (cVpCreateRoomPageRoomInfoLayoutBinding = this.binding) == null || (leftTextRightIconCommonView = cVpCreateRoomPageRoomInfoLayoutBinding.f131657h) == null) {
            return;
        }
        leftTextRightIconCommonView.setIconIv(i11);
    }

    public final void setWarmContentTv(boolean z11, @Nullable String str) {
        TextView textView;
        TextView textView2;
        boolean z12 = false;
        if (PatchProxy.proxy(new Object[]{new Byte(z11 ? (byte) 1 : (byte) 0), str}, this, changeQuickRedirect, false, 14, new Class[]{Boolean.TYPE, String.class}, Void.TYPE).isSupported) {
            return;
        }
        if (z11) {
            if (!(str == null || q.w(str))) {
                z12 = true;
            }
        }
        if (!z12) {
            CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding = this.binding;
            if (cVpCreateRoomPageRoomInfoLayoutBinding == null || (textView = cVpCreateRoomPageRoomInfoLayoutBinding.f131669t) == null) {
                return;
            }
            ViewExtKt.j(textView);
            return;
        }
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding2 = this.binding;
        if (cVpCreateRoomPageRoomInfoLayoutBinding2 != null && (textView2 = cVpCreateRoomPageRoomInfoLayoutBinding2.f131669t) != null) {
            ViewExtKt.l(textView2);
        }
        CVpCreateRoomPageRoomInfoLayoutBinding cVpCreateRoomPageRoomInfoLayoutBinding3 = this.binding;
        TextView textView3 = cVpCreateRoomPageRoomInfoLayoutBinding3 != null ? cVpCreateRoomPageRoomInfoLayoutBinding3.f131669t : null;
        if (textView3 == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        textView3.setText(str);
    }

    public /* synthetic */ CreateRoomPageRoomInfoView(Context context, AttributeSet attributeSet, int i11, int i12, kotlin.jvm.internal.q qVar) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }
}