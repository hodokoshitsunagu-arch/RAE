package cn.soulapp.android.chatroom.bean;

import cn.soul.android.plugin.ChangeQuickRedirect;
import java.io.Serializable;

/* JADX INFO: loaded from: classes11.dex */
public class CreateRoomModel implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;
    public int createFailedCode;
    public String createFailedDesc;
    public boolean createResult;
    public String createRoomInvisibilityCloakOpenStatusMsg;
    public String identifyUrl;
    public String roomId;
    public int rtcChannel;
}