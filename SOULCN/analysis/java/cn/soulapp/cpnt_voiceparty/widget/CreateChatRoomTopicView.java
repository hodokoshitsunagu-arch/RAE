package cn.soulapp.cpnt_voiceparty.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.lib.hotfix.PatchProxyResult;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.adapter.CreateChatRoomTopicAdapter;
import cn.soulapp.cpnt_voiceparty.databinding.CVpViewCreateChatRoomTopicBinding;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.soul.slmediasdkandroid.shortVideo.transcode.utils.ExpcompatUtils;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: CreateChatRoomTopicView.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0007\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/widget/CreateChatRoomTopicView;", "Landroid/widget/LinearLayout;", "Lcn/soulapp/cpnt_voiceparty/adapter/CreateChatRoomTopicAdapter;", "a", "Lkotlin/Lazy;", "getTopicAdapter", "()Lcn/soulapp/cpnt_voiceparty/adapter/CreateChatRoomTopicAdapter;", "topicAdapter", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpViewCreateChatRoomTopicBinding;", ExpcompatUtils.COMPAT_VALUE_780, "Lcn/soulapp/cpnt_voiceparty/databinding/CVpViewCreateChatRoomTopicBinding;", "viewBinding", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", AppAgent.CONSTRUCT, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class CreateChatRoomTopicView extends LinearLayout {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final Lazy topicAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private CVpViewCreateChatRoomTopicBinding viewBinding;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f162641c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CreateChatRoomTopicView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        kotlin.jvm.internal.v.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CreateChatRoomTopicView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        kotlin.jvm.internal.v.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CreateChatRoomTopicView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        kotlin.jvm.internal.v.j(context, "context");
        this.f162641c = new LinkedHashMap();
        this.topicAdapter = kotlin.j.b(CreateChatRoomTopicView$topicAdapter$2.INSTANCE);
        this.viewBinding = CVpViewCreateChatRoomTopicBinding.inflate(LayoutInflater.from(context), this, true);
    }

    private final CreateChatRoomTopicAdapter getTopicAdapter() {
        PatchProxyResult patchProxyResultProxy = PatchProxy.proxy(new Object[0], this, changeQuickRedirect, false, 2, new Class[0], CreateChatRoomTopicAdapter.class);
        return patchProxyResultProxy.isSupported ? (CreateChatRoomTopicAdapter) patchProxyResultProxy.result : (CreateChatRoomTopicAdapter) this.topicAdapter.getValue();
    }

    public /* synthetic */ CreateChatRoomTopicView(Context context, AttributeSet attributeSet, int i11, int i12, kotlin.jvm.internal.q qVar) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }
}