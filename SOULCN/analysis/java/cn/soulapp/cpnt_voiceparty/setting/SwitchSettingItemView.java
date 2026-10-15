package cn.soulapp.cpnt_voiceparty.setting;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.android.lib.soul_view.SwitchView;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.databinding.CVpViewSwitchSettingItemBinding;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: SwitchSettingItemView.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/SwitchSettingItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcn/soulapp/cpnt_voiceparty/setting/SwitchSettingItemModel;", "model", "Lkotlin/w;", "setModel", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpViewSwitchSettingItemBinding;", "a", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpViewSwitchSettingItemBinding;", "binding", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", AppAgent.CONSTRUCT, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class SwitchSettingItemView extends ConstraintLayout {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final CVpViewSwitchSettingItemBinding binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f144163b;

    /* JADX INFO: compiled from: SwitchSettingItemView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0007"}, d2 = {"cn/soulapp/cpnt_voiceparty/setting/SwitchSettingItemView$a", "Lcn/android/lib/soul_view/SwitchView$SwitchListener;", "", "isOn", "isClick", "Lkotlin/w;", "switchChanged", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
    public static final class a implements SwitchView.SwitchListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SwitchSettingItemModel f144164a;

        a(SwitchSettingItemModel switchSettingItemModel) {
            this.f144164a = switchSettingItemModel;
        }

        @Override // cn.android.lib.soul_view.SwitchView.SwitchListener
        public void switchChanged(boolean z11, boolean z12) {
            Object[] objArr = {new Byte(z11 ? (byte) 1 : (byte) 0), new Byte(z12 ? (byte) 1 : (byte) 0)};
            ChangeQuickRedirect changeQuickRedirect2 = changeQuickRedirect;
            Class cls = Boolean.TYPE;
            if (!PatchProxy.proxy(objArr, this, changeQuickRedirect2, false, 2, new Class[]{cls, cls}, Void.TYPE).isSupported && z12) {
                this.f144164a.b().invoke(Boolean.valueOf(z11));
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchSettingItemView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchSettingItemView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchSettingItemView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        v.j(context, "context");
        this.f144163b = new LinkedHashMap();
        CVpViewSwitchSettingItemBinding cVpViewSwitchSettingItemBindingInflate = CVpViewSwitchSettingItemBinding.inflate(LayoutInflater.from(context), this);
        v.i(cVpViewSwitchSettingItemBindingInflate, "inflate(LayoutInflater.from(context), this)");
        this.binding = cVpViewSwitchSettingItemBindingInflate;
        setPadding(ExtensionsKt.dp(16), 0, ExtensionsKt.dp(16), 0);
        setMinimumHeight(ExtensionsKt.dp(68));
    }

    public final void setModel(@NotNull SwitchSettingItemModel model) {
        if (PatchProxy.proxy(new Object[]{model}, this, changeQuickRedirect, false, 2, new Class[]{SwitchSettingItemModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(model, "model");
        this.binding.f140501d.setText(model.getTitle());
        this.binding.f140500c.setText(model.getDesc());
        this.binding.f140499b.setSwitch(model.getSwitchChecked());
        this.binding.f140499b.setSwitchListener(new a(model));
    }

    public /* synthetic */ SwitchSettingItemView(Context context, AttributeSet attributeSet, int i11, int i12, q qVar) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }
}