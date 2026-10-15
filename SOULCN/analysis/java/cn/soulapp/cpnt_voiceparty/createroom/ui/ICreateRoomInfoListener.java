package cn.soulapp.cpnt_voiceparty.createroom.ui;

import cn.soul.android.plugin.ChangeQuickRedirect;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: CreateRoomPageRoomInfoView.kt */
/* JADX INFO: loaded from: classes17.dex */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\t\u001a\u00020\u0004H&¨\u0006\n"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/createroom/ui/ICreateRoomInfoListener;", "", "", "content", "Lkotlin/w;", "roomNameEditTextChanged", "", "status", "roomPrivateStatusChanged", "roomPrivateBtnClick", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public interface ICreateRoomInfoListener {
    public static ChangeQuickRedirect changeQuickRedirect;

    void roomNameEditTextChanged(@NotNull String str);

    void roomPrivateBtnClick();

    void roomPrivateStatusChanged(int i11);
}