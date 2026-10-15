package cn.soulapp.android.chatroom.bean;

import cn.soul.android.plugin.ChangeQuickRedirect;
import java.io.Serializable;

/* JADX INFO: loaded from: classes11.dex */
public class RoomTypeBean implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;
    public String bannerSceneCode;
    public String classifyName;
    public RoomTypeIconConfigBean iconConfig;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public int f24105id;
    public boolean isSelected;
    public String joinCode;
    public boolean match;
    public String pageSceneId;
    public String planet2JoinCode;
    public int tabClassify = 1;
    public boolean underAgeShow;
}