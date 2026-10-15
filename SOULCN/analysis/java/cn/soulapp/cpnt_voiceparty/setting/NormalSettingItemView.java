package cn.soulapp.cpnt_voiceparty.setting;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Checkable;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.android.lib.common.utils.ExtensionsKt;
import cn.soulapp.cpnt_voiceparty.R$drawable;
import cn.soulapp.cpnt_voiceparty.databinding.CVpViewNormalSettingItemBinding;
import cn.soulapp.cpnt_voiceparty.util.t1;
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

/* JADX INFO: compiled from: NormalSettingItemView.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/setting/NormalSettingItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcn/soulapp/cpnt_voiceparty/setting/NormalSettingItemModel;", "model", "Lkotlin/w;", "setModel", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpViewNormalSettingItemBinding;", "a", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpViewNormalSettingItemBinding;", "binding", "Landroid/content/Context;", com.umeng.analytics.pro.f.X, "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", AppAgent.CONSTRUCT, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class NormalSettingItemView extends ConstraintLayout {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private final CVpViewNormalSettingItemBinding binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f144099b;

    /* JADX INFO: compiled from: ViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Landroid/view/View;", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "it", "Lkotlin/w;", "onClick", "(Landroid/view/View;)V", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    public static final class a implements View.OnClickListener {
        public static ChangeQuickRedirect changeQuickRedirect;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f144100a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f144101b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ NormalSettingItemModel f144102c;

        public a(View view, long j11, NormalSettingItemModel normalSettingItemModel) {
            this.f144100a = view;
            this.f144101b = j11;
            this.f144102c = normalSettingItemModel;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PatchProxy.proxy(new Object[]{view}, this, changeQuickRedirect, false, 2, new Class[]{View.class}, Void.TYPE).isSupported) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - t1.d(this.f144100a) > this.f144101b || (this.f144100a instanceof Checkable)) {
                t1.j(this.f144100a, jCurrentTimeMillis);
                this.f144102c.b().invoke();
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NormalSettingItemView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NormalSettingItemView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NormalSettingItemView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        v.j(context, "context");
        this.f144099b = new LinkedHashMap();
        CVpViewNormalSettingItemBinding cVpViewNormalSettingItemBindingInflate = CVpViewNormalSettingItemBinding.inflate(LayoutInflater.from(context), this);
        v.i(cVpViewNormalSettingItemBindingInflate, "inflate(LayoutInflater.from(context), this)");
        this.binding = cVpViewNormalSettingItemBindingInflate;
        setPadding(ExtensionsKt.dp(16), 0, ExtensionsKt.dp(16), 0);
        setMinimumHeight(ExtensionsKt.dp(68));
    }

    public final void setModel(@NotNull NormalSettingItemModel model) {
        boolean z11 = true;
        if (PatchProxy.proxy(new Object[]{model}, this, changeQuickRedirect, false, 2, new Class[]{NormalSettingItemModel.class}, Void.TYPE).isSupported) {
            return;
        }
        v.j(model, "model");
        this.binding.f140219g.setText(model.getTitle());
        this.binding.f140216d.setText(model.getDesc());
        if (model.getShowNewBadge()) {
            ViewExtKt.l(this.binding.f140217e);
        } else {
            ViewExtKt.j(this.binding.f140217e);
        }
        String rightHintText = model.getRightHintText();
        if (rightHintText != null && rightHintText.length() != 0) {
            z11 = false;
        }
        if (!z11 || model.getShowRedPoint()) {
            ViewExtKt.l(this.binding.f140218f);
            TextView textView = this.binding.f140218f;
            String rightHintText2 = model.getRightHintText();
            if (rightHintText2 == null) {
                rightHintText2 = "";
            }
            textView.setText(rightHintText2);
            this.binding.f140218f.setCompoundDrawablesWithIntrinsicBounds(model.getShowRedPoint() ? R$drawable.Oc : 0, 0, 0, 0);
        } else {
            ViewExtKt.j(this.binding.f140218f);
        }
        if (model.getShowArrow()) {
            ViewExtKt.l(this.binding.f140214b);
        } else {
            ViewExtKt.j(this.binding.f140214b);
        }
        setOnClickListener(new a(this, 1000L, model));
    }

    public /* synthetic */ NormalSettingItemView(Context context, AttributeSet attributeSet, int i11, int i12, q qVar) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }
}