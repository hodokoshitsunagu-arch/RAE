package cn.soulapp.cpnt_voiceparty.soulhouse.playmode;

import androidx.exifinterface.media.ExifInterface;
import cn.soul.android.plugin.ChangeQuickRedirect;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: IPlayModeHandler.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J#\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H&¨\u0006\n"}, d2 = {"Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IPlayModeHandler;", "", "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IModeViewProxy;", ExifInterface.GPS_DIRECTION_TRUE, "Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/PlayMode;", "mode", "loadModeView", "(Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/PlayMode;)Lcn/soulapp/cpnt_voiceparty/soulhouse/playmode/IModeViewProxy;", "Lkotlin/w;", "removeModeView", "cpnt-voiceparty_release"}, k = 1, mv = {1, 6, 0})
public interface IPlayModeHandler {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    <T extends IModeViewProxy> T loadModeView(@NotNull PlayMode mode);

    void removeModeView(@NotNull PlayMode playMode);
}