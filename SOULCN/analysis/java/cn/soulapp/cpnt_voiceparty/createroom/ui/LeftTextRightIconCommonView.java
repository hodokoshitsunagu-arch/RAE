package cn.soulapp.cpnt_voiceparty.createroom.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.soul.android.lib.hotfix.PatchProxy;
import cn.soul.android.plugin.ChangeQuickRedirect;
import cn.soulapp.cpnt_voiceparty.R$layout;
import cn.soulapp.cpnt_voiceparty.databinding.CVpCommonTextIconLayoutBinding;
import com.alipay.sdk.m.b0.d;
import com.bytedance.apm.agent.v2.instrumentation.AppAgent;
import com.umeng.analytics.pro.f;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: LeftTextRightIconCommonView.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\b\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u0006R\u0018\u0010\f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/ui/LeftTextRightIconCommonView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "title", "Lkotlin/w;", d.f175386p, "", "resId", "setIconIv", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpCommonTextIconLayoutBinding;", "a", "Lcn/soulapp/cpnt_voiceparty/databinding/CVpCommonTextIconLayoutBinding;", "binding", "Landroid/content/Context;", f.X, "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", AppAgent.CONSTRUCT, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public final class LeftTextRightIconCommonView extends ConstraintLayout {
    public static ChangeQuickRedirect changeQuickRedirect;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    @Nullable
    private CVpCommonTextIconLayoutBinding binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public Map<Integer, View> f130832b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LeftTextRightIconCommonView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LeftTextRightIconCommonView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        v.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LeftTextRightIconCommonView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        v.j(context, "context");
        this.f130832b = new LinkedHashMap();
        this.binding = CVpCommonTextIconLayoutBinding.bind(View.inflate(context, R$layout.f129459c1, this));
    }

    public final void setIconIv(@DrawableRes int i11) {
        ImageView imageView;
        ImageView imageView2;
        if (PatchProxy.proxy(new Object[]{new Integer(i11)}, this, changeQuickRedirect, false, 3, new Class[]{Integer.TYPE}, Void.TYPE).isSupported) {
            return;
        }
        CVpCommonTextIconLayoutBinding cVpCommonTextIconLayoutBinding = this.binding;
        if (cVpCommonTextIconLayoutBinding != null && (imageView2 = cVpCommonTextIconLayoutBinding.f131619c) != null) {
            imageView2.setImageResource(i11);
        }
        CVpCommonTextIconLayoutBinding cVpCommonTextIconLayoutBinding2 = this.binding;
        if (cVpCommonTextIconLayoutBinding2 == null || (imageView = cVpCommonTextIconLayoutBinding2.f131619c) == null) {
            return;
        }
        imageView.setPadding(0, 0, 0, 0);
    }

    public final void setTitle(@Nullable String str) {
        if (PatchProxy.proxy(new Object[]{str}, this, changeQuickRedirect, false, 2, new Class[]{String.class}, Void.TYPE).isSupported) {
            return;
        }
        CVpCommonTextIconLayoutBinding cVpCommonTextIconLayoutBinding = this.binding;
        TextView textView = cVpCommonTextIconLayoutBinding != null ? cVpCommonTextIconLayoutBinding.f131618b : null;
        if (textView == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        textView.setText(str);
    }

    public /* synthetic */ LeftTextRightIconCommonView(Context context, AttributeSet attributeSet, int i11, int i12, q qVar) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }
}