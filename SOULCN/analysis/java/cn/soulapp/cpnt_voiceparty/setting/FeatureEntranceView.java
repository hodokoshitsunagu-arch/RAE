package cn.soulapp.cpnt_voiceparty.setting;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.databinding.CVpViewFeatureEntranceBinding;
import cn.soulapp.lib.utils.ext.ViewExtKt;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: FeatureEntranceView.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/FeatureEntranceView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcn/soulapp/cpnt_voiceparty/setting/FeatureEntranceModel;", "model", "Lkotlin/w;", "setModel", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpViewFeatureEntranceBinding;", "a", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpViewFeatureEntranceBinding;", "binding", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", AppAgent.CONSTRUCT, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class FeatureEntranceView extends ConstraintLayout {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final CVpViewFeatureEntranceBinding binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f144090b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public FeatureEntranceView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public FeatureEntranceView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public FeatureEntranceView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        v.j(context, "context");
        this.f144090b = new LinkedHashMap();
        CVpViewFeatureEntranceBinding cVpViewFeatureEntranceBindingInflate = CVpViewFeatureEntranceBinding.inflate(LayoutInflater.from(context), this);
        v.i(cVpViewFeatureEntranceBindingInflate, "inflate(LayoutInflater.from(context), this)");
        this.binding = cVpViewFeatureEntranceBindingInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(FeatureEntranceModel model, View view) {
        if (PatchProxy.proxy(new Object[]{model, view}, null, changeQuickRedirect, true, 7, new Class[]{FeatureEntranceModel.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(model, "$model");
        model.c().invoke();
    }

    public final void setModel(@NotNull final FeatureEntranceModel model) {
        if (PatchProxy.proxy(new Object[]{model}, this, changeQuickRedirect, false, 2, new Class[]{FeatureEntranceModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(model, "model");
        if (model.getCom.huawei.hms.push.constant.RemoteMessageConst.Notification.ICON java.lang.String() != -1) {
            this.binding.f139753b.setImageResource(model.getCom.huawei.hms.push.constant.RemoteMessageConst.Notification.ICON java.lang.String());
        }
        this.binding.f139755d.setText(model.getName());
        if (model.getShowRedPoint()) {
            ViewExtKt.l(this.binding.f139754c);
        } else {
            ViewExtKt.j(this.binding.f139754c);
        }
        setOnClickListener(new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.setting.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FeatureEntranceView.b(model, view);
            }
        });
    }

    public /* synthetic */ FeatureEntranceView(Context context, AttributeSet attributeSet, int i11, int i12, q qVar) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }
}