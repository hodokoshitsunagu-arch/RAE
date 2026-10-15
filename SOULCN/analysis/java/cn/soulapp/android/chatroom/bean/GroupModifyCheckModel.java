package cn.soulapp.android.chatroom.bean;

import cn.soul.android.plugin.ChangeQuickRedirect;
import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: GroupModifyCheckModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b)\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001c\u0010'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\b¨\u0006-"}, d2 = {"Lcn/soulapp/android/chatroom/bean/GroupModifyCheckModel;", "Ljava/io/Serializable;", "()V", "group_introduction", "Lcn/soulapp/android/chatroom/bean/GroupSettingModifyInfo;", "getGroup_introduction", "()Lcn/soulapp/android/chatroom/bean/GroupSettingModifyInfo;", "setGroup_introduction", "(Lcn/soulapp/android/chatroom/bean/GroupSettingModifyInfo;)V", "group_manage", "getGroup_manage", "setGroup_manage", "group_manage_apply", "getGroup_manage_apply", "setGroup_manage_apply", "group_manage_at_all", "getGroup_manage_at_all", "setGroup_manage_at_all", "group_manage_audit", "getGroup_manage_audit", "setGroup_manage_audit", "group_manage_chat_live", "getGroup_manage_chat_live", "setGroup_manage_chat_live", "group_manage_history_message", "getGroup_manage_history_message", "setGroup_manage_history_message", "group_manage_invite", "getGroup_manage_invite", "setGroup_manage_invite", "group_manage_managers", "getGroup_manage_managers", "setGroup_manage_managers", "group_name", "getGroup_name", "setGroup_name", "group_notice", "getGroup_notice", "setGroup_notice", "group_remark", "getGroup_remark", "setGroup_remark", "group_to_public", "getGroup_to_public", "setGroup_to_public", "lib-chatroom_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class GroupModifyCheckModel implements Serializable {
    public static ChangeQuickRedirect changeQuickRedirect;

    @Nullable
    private GroupSettingModifyInfo group_introduction;

    @Nullable
    private GroupSettingModifyInfo group_manage;

    @Nullable
    private GroupSettingModifyInfo group_manage_apply;

    @Nullable
    private GroupSettingModifyInfo group_manage_at_all;

    @Nullable
    private GroupSettingModifyInfo group_manage_audit;

    @Nullable
    private GroupSettingModifyInfo group_manage_chat_live;

    @Nullable
    private GroupSettingModifyInfo group_manage_history_message;

    @Nullable
    private GroupSettingModifyInfo group_manage_invite;

    @Nullable
    private GroupSettingModifyInfo group_manage_managers;

    @Nullable
    private GroupSettingModifyInfo group_name;

    @Nullable
    private GroupSettingModifyInfo group_notice;

    @Nullable
    private GroupSettingModifyInfo group_remark;

    @Nullable
    private GroupSettingModifyInfo group_to_public;

    @Nullable
    public final GroupSettingModifyInfo getGroup_introduction() {
        return this.group_introduction;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_manage() {
        return this.group_manage;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_manage_apply() {
        return this.group_manage_apply;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_manage_at_all() {
        return this.group_manage_at_all;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_manage_audit() {
        return this.group_manage_audit;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_manage_chat_live() {
        return this.group_manage_chat_live;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_manage_history_message() {
        return this.group_manage_history_message;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_manage_invite() {
        return this.group_manage_invite;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_manage_managers() {
        return this.group_manage_managers;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_name() {
        return this.group_name;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_notice() {
        return this.group_notice;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_remark() {
        return this.group_remark;
    }

    @Nullable
    public final GroupSettingModifyInfo getGroup_to_public() {
        return this.group_to_public;
    }

    public final void setGroup_introduction(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_introduction = groupSettingModifyInfo;
    }

    public final void setGroup_manage(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_manage = groupSettingModifyInfo;
    }

    public final void setGroup_manage_apply(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_manage_apply = groupSettingModifyInfo;
    }

    public final void setGroup_manage_at_all(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_manage_at_all = groupSettingModifyInfo;
    }

    public final void setGroup_manage_audit(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_manage_audit = groupSettingModifyInfo;
    }

    public final void setGroup_manage_chat_live(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_manage_chat_live = groupSettingModifyInfo;
    }

    public final void setGroup_manage_history_message(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_manage_history_message = groupSettingModifyInfo;
    }

    public final void setGroup_manage_invite(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_manage_invite = groupSettingModifyInfo;
    }

    public final void setGroup_manage_managers(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_manage_managers = groupSettingModifyInfo;
    }

    public final void setGroup_name(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_name = groupSettingModifyInfo;
    }

    public final void setGroup_notice(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_notice = groupSettingModifyInfo;
    }

    public final void setGroup_remark(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_remark = groupSettingModifyInfo;
    }

    public final void setGroup_to_public(@Nullable GroupSettingModifyInfo groupSettingModifyInfo) {
        this.group_to_public = groupSettingModifyInfo;
    }
}