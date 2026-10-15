package cn.soulapp.cpnt_voiceparty.setting;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.databinding.CVpViewButtonSettingItemBinding;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: ButtonSettingItemView.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/ButtonSettingItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcn/soulapp/cpnt_voiceparty/setting/ButtonSettingItemModel;", "model", "Lkotlin/w;", "setModel", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpViewButtonSettingItemBinding;", "a", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpViewButtonSettingItemBinding;", "binding", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", AppAgent.CONSTRUCT, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class ButtonSettingItemView extends ConstraintLayout {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final CVpViewButtonSettingItemBinding binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f144084b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ButtonSettingItemView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ButtonSettingItemView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ButtonSettingItemView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        v.j(context, "context");
        this.f144084b = new LinkedHashMap();
        CVpViewButtonSettingItemBinding cVpViewButtonSettingItemBindingInflate = CVpViewButtonSettingItemBinding.inflate(LayoutInflater.from(context), this);
        v.i(cVpViewButtonSettingItemBindingInflate, "inflate(LayoutInflater.from(context), this)");
        this.binding = cVpViewButtonSettingItemBindingInflate;
        setPadding(ExtensionsKt.dp(16), 0, ExtensionsKt.dp(16), 0);
        setMinimumHeight(ExtensionsKt.dp(68));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ButtonSettingItemModel model, View view) {
        if (PatchProxy.proxy(new Object[]{model, view}, null, changeQuickRedirect, true, 7, new Class[]{ButtonSettingItemModel.class, View.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(model, "$model");
        model.c().invoke();
    }

    public final void setModel(@NotNull final ButtonSettingItemModel model) {
        if (PatchProxy.proxy(new Object[]{model}, this, changeQuickRedirect, false, 2, new Class[]{ButtonSettingItemModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(model, "model");
        this.binding.f139633d.setText(model.getTitle());
        this.binding.f139632c.setText(model.getDesc());
        this.binding.f139631b.setText(model.getButtonText());
        this.binding.f139631b.setBackgroundResource(R$drawable.f127095a3);
        if (model.getIsHighlight()) {
            this.binding.f139631b.setTextColor(-1);
        } else {
            this.binding.f139631b.setTextColor(-1711276033);
        }
        this.binding.f139631b.setOnClickListener(new View.OnClickListener() { // from class: cn.soulapp.cpnt_voiceparty.setting.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ButtonSettingItemView.b(model, view);
            }
        });
    }

    public /* synthetic */ ButtonSettingItemView(Context context, AttributeSet attributeSet, int i11, int i12, q qVar) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }
}