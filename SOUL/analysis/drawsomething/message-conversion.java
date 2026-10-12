package cn.soulapp.imlib.msg;

import android.text.TextUtils;
import cn.soulapp.imlib.database.ChatMsgDb;
import cn.soulapp.imlib.database.GroupMsgDb;
import cn.soulapp.imlib.msg.chat.AudioMsg;
import cn.soulapp.imlib.msg.chat.CallMsg;
import cn.soulapp.imlib.msg.chat.ChatMessage;
import cn.soulapp.imlib.msg.chat.DiceFingerMsg;
import cn.soulapp.imlib.msg.chat.ExpressionMsg;
import cn.soulapp.imlib.msg.chat.ExtChatMsg;
import cn.soulapp.imlib.msg.chat.GameMsg;
import cn.soulapp.imlib.msg.chat.ImgMsg;
import cn.soulapp.imlib.msg.chat.ImgMsgs;
import cn.soulapp.imlib.msg.chat.JsonMsg;
import cn.soulapp.imlib.msg.chat.MusicMsg;
import cn.soulapp.imlib.msg.chat.PositionMsg;
import cn.soulapp.imlib.msg.chat.PromptMsg;
import cn.soulapp.imlib.msg.chat.RePostMsg;
import cn.soulapp.imlib.msg.chat.ShareTagMsg;
import cn.soulapp.imlib.msg.chat.SoulmateInviteMsg;
import cn.soulapp.imlib.msg.chat.StringMsg;
import cn.soulapp.imlib.msg.chat.TextMsg;
import cn.soulapp.imlib.msg.chat.UserCardMsg;
import cn.soulapp.imlib.msg.chat.VideoMsg;
import cn.soulapp.imlib.msg.chat.VoiceChatMsg;
import cn.soulapp.imlib.msg.group.GroupMsg;
import com.soul.im.protos.CommandMessage;
import com.soul.im.protos.CommonMessage;
import com.soul.im.protos.MsgCommand;
import com.soul.im.protos.MusicMessage;
import com.soul.im.protos.PicMessage;
import com.soul.im.protos.PositionMessage;
import com.soul.im.protos.ShareTagMessage;
import com.soul.im.protos.VideoMessage;
import com.soul.im.protos.VoiceMessage;
import f7.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ImMessageConverter.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: cn.soulapp.imlib.msg.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ImMessageConverter.java */
    public static /* synthetic */ class C0138a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f16833a;

        static {
            int[] iArr = new int[MsgCommand.Type.values().length];
            f16833a = iArr;
            try {
                iArr[MsgCommand.Type.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16833a[MsgCommand.Type.PIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16833a[MsgCommand.Type.MULTI_PIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16833a[MsgCommand.Type.VIDEO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16833a[MsgCommand.Type.VOICE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16833a[MsgCommand.Type.REPOST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16833a[MsgCommand.Type.EXPRESSION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16833a[MsgCommand.Type.USER_EXPRESSION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16833a[MsgCommand.Type.RECALL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16833a[MsgCommand.Type.PROMPT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16833a[MsgCommand.Type.USER_CARD.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16833a[MsgCommand.Type.FINGER_GUESS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16833a[MsgCommand.Type.ROLL_DICE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16833a[MsgCommand.Type.CUSTOM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16833a[MsgCommand.Type.SOULMATE_CARD.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16833a[MsgCommand.Type.FOLLOW_TOAST.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16833a[MsgCommand.Type.SHAREBG_INVITATION.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f16833a[MsgCommand.Type.SENSITIVE_WORD.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f16833a[MsgCommand.Type.VOICE_CHAT.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f16833a[MsgCommand.Type.TAG.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f16833a[MsgCommand.Type.POST.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f16833a[MsgCommand.Type.POSITION.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f16833a[MsgCommand.Type.MUSIC.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f16833a[MsgCommand.Type.COMMON.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f16833a[MsgCommand.Type.GAME.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f16833a[MsgCommand.Type.MEDIACALL.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
        }
    }

    public static void A(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(8);
        chatMessage.setMsgContent(ExpressionMsg.convert(commandMessage.getMsgCommand().getUserExpressionMessage()));
    }

    public static void B(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(4);
        chatMessage.setSnapChat(commandMessage.getMsgCommand().getSnapChat());
        VideoMessage videoMessage = commandMessage.getMsgCommand().getVideoMessage();
        chatMessage.setMsgContent(new VideoMsg(videoMessage.getRemoteUrl(), "", videoMessage.getWidth(), videoMessage.getHeight()));
    }

    public static void C(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(5);
        VoiceMessage voiceMessage = commandMessage.getMsgCommand().getVoiceMessage();
        chatMessage.setMsgContent(new AudioMsg(voiceMessage.getRemoteUrl(), "", voiceMessage.getDuration(), voiceMessage.getWord()));
    }

    public static void D(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(30);
        chatMessage.setMsgContent(VoiceChatMsg.convert(commandMessage.getMsgCommand().getVoiceChatMessage()));
    }

    public static ImMessage a(ChatMsgDb chatMsgDb) {
        if (chatMsgDb == null) {
            return null;
        }
        ImMessage imMessage = new ImMessage();
        imMessage.setMsgId(chatMsgDb.msgId);
        imMessage.setMsgStatus(chatMsgDb.msgStatus);
        imMessage.setLocalTime(chatMsgDb.localTime);
        imMessage.setFrom(chatMsgDb.senderId);
        imMessage.setTo(chatMsgDb.receiverId);
        imMessage.setMsgType(1);
        imMessage.setIsAck(chatMsgDb.isAck);
        imMessage.setServerTime(chatMsgDb.serverTime);
        imMessage.setMsgSource(chatMsgDb.msgSource);
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.setSessionId(chatMsgDb.sessionId);
        chatMessage.setMsgType(chatMsgDb.msgType);
        chatMessage.setSnapChat(chatMsgDb.snapChat);
        chatMessage.setExtString(chatMsgDb.extString);
        if (!TextUtils.isEmpty(chatMsgDb.extMap)) {
            chatMessage.setTransExtMap(e.h(chatMsgDb.extMap));
        }
        switch (chatMsgDb.msgType) {
            case 1:
                TextMsg textMsg = (TextMsg) e.e(chatMsgDb.msgContent, TextMsg.class);
                if (!TextUtils.isEmpty(chatMsgDb.text)) {
                    textMsg.text = chatMsgDb.text;
                }
                chatMessage.setMsgContent(textMsg);
                break;
            case 2:
                chatMessage.setMsgContent((ImgMsg) e.e(chatMsgDb.msgContent, ImgMsg.class));
                break;
            case 3:
                chatMessage.setMsgContent((ImgMsgs) e.e(chatMsgDb.msgContent, ImgMsgs.class));
                break;
            case 4:
                chatMessage.setMsgContent((VideoMsg) e.e(chatMsgDb.msgContent, VideoMsg.class));
                break;
            case 5:
                chatMessage.setMsgContent((AudioMsg) e.e(chatMsgDb.msgContent, AudioMsg.class));
                break;
            case 6:
                chatMessage.setMsgContent((RePostMsg) e.e(chatMsgDb.msgContent, RePostMsg.class));
                break;
            case 7:
            case 11:
            case 14:
            case 20:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 36:
            case 37:
            case 38:
            default:
                chatMessage.setMsgContent((TextMsg) e.e(chatMsgDb.msgContent, TextMsg.class));
                break;
            case 8:
                chatMessage.setMsgContent((ExpressionMsg) e.e(chatMsgDb.msgContent, ExpressionMsg.class));
                break;
            case 9:
                chatMessage.setMsgContent(null);
                break;
            case 10:
                chatMessage.setMsgContent((UserCardMsg) e.e(chatMsgDb.msgContent, UserCardMsg.class));
                break;
            case 12:
                chatMessage.setMsgContent((DiceFingerMsg) e.e(chatMsgDb.msgContent, DiceFingerMsg.class));
                break;
            case 13:
                chatMessage.setMsgContent((DiceFingerMsg) e.e(chatMsgDb.msgContent, DiceFingerMsg.class));
                break;
            case 15:
                chatMessage.setMsgContent((SoulmateInviteMsg) e.e(chatMsgDb.msgContent, SoulmateInviteMsg.class));
                break;
            case 16:
            case 17:
                break;
            case 18:
            case 21:
            case 27:
            case 28:
                chatMessage.setMsgContent((TextMsg) e.e(chatMsgDb.msgContent, TextMsg.class));
                break;
            case 19:
                chatMessage.setMsgContent((PromptMsg) e.e(chatMsgDb.msgContent, PromptMsg.class));
                break;
            case 29:
                chatMessage.setMsgContent((ExtChatMsg) e.e(chatMsgDb.msgContent, ExtChatMsg.class));
                break;
            case 30:
                chatMessage.setMsgContent((VoiceChatMsg) e.e(chatMsgDb.msgContent, VoiceChatMsg.class));
                break;
            case 31:
                chatMessage.setMsgContent((ShareTagMsg) e.e(chatMsgDb.msgContent, ShareTagMsg.class));
                break;
            case 32:
                chatMessage.setMsgContent((StringMsg) e.e(chatMsgDb.msgContent, StringMsg.class));
                break;
            case 33:
                chatMessage.setMsgContent((PositionMsg) e.e(chatMsgDb.msgContent, PositionMsg.class));
                break;
            case 34:
                chatMessage.setMsgContent((MusicMsg) e.e(chatMsgDb.msgContent, MusicMsg.class));
                break;
            case 35:
                chatMessage.setMsgContent((JsonMsg) e.e(chatMsgDb.msgContent, JsonMsg.class));
                break;
            case 39:
                chatMessage.setMsgContent((CallMsg) e.e(chatMsgDb.msgContent, CallMsg.class));
                break;
            case 40:
                chatMessage.setMsgContent((GameMsg) e.e(chatMsgDb.msgContent, GameMsg.class));
                break;
        }
        imMessage.setChatMessage(chatMessage);
        return imMessage;
    }

    public static ImMessage b(GroupMsgDb groupMsgDb) {
        if (groupMsgDb == null) {
            return null;
        }
        ImMessage imMessage = new ImMessage();
        imMessage.setMsgId(groupMsgDb.msgId);
        imMessage.setMsgStatus(groupMsgDb.msgStatus);
        imMessage.setLocalTime(groupMsgDb.localTime);
        imMessage.setFrom(groupMsgDb.senderId);
        imMessage.setTo(groupMsgDb.receiverId);
        imMessage.setMsgType(10);
        imMessage.setIsAck(groupMsgDb.isAck);
        imMessage.setServerTime(groupMsgDb.serverTime);
        GroupMsg groupMsg = new GroupMsg();
        groupMsg.groupId = groupMsgDb.sessionId + "";
        groupMsg.userId = groupMsgDb.senderId;
        groupMsg.offlinePushType = groupMsgDb.offlinePush;
        groupMsg.type = groupMsgDb.msgType;
        groupMsg.text = groupMsgDb.text;
        if (!TextUtils.isEmpty(groupMsgDb.dataMap)) {
            groupMsg.dataMap = e.h(groupMsgDb.dataMap);
        }
        if (!TextUtils.isEmpty(groupMsgDb.userInfoMap)) {
            groupMsg.userInfoMap = e.h(groupMsgDb.userInfoMap);
        }
        if (!TextUtils.isEmpty(groupMsgDb.toUids)) {
            groupMsg.toUids = e.f(groupMsgDb.toUids);
        }
        imMessage.setGroupMessage(groupMsg);
        return imMessage;
    }

    public static ImMessage c(CommandMessage commandMessage) {
        MsgCommand msgCommand = commandMessage.getMsgCommand();
        ChatMessage chatMessageCreate = ChatMessage.create(msgCommand.getFrom().equals(o6.a.c().f57408c) ? msgCommand.getTo() : msgCommand.getFrom());
        switch (C0138a.f16833a[commandMessage.getMsgCommand().getType().ordinal()]) {
            case 1:
                x(chatMessageCreate, commandMessage);
                break;
            case 2:
                m(chatMessageCreate, commandMessage);
                break;
            case 3:
                k(chatMessageCreate, commandMessage);
                break;
            case 4:
                B(chatMessageCreate, commandMessage);
                break;
            case 5:
                C(chatMessageCreate, commandMessage);
                break;
            case 6:
                r(chatMessageCreate, commandMessage);
                break;
            case 7:
                g(chatMessageCreate, commandMessage);
                break;
            case 8:
                A(chatMessageCreate, commandMessage);
                break;
            case 9:
                q(chatMessageCreate, commandMessage);
                break;
            case 10:
                p(chatMessageCreate, commandMessage);
                break;
            case 11:
                z(chatMessageCreate, commandMessage);
                break;
            case 12:
                h(chatMessageCreate, commandMessage);
                break;
            case 13:
                s(chatMessageCreate, commandMessage);
                break;
            case 14:
                e(chatMessageCreate, commandMessage);
                break;
            case 15:
                v(chatMessageCreate, commandMessage);
                break;
            case 16:
                E(chatMessageCreate, commandMessage);
                break;
            case 17:
                u(chatMessageCreate, commandMessage);
                break;
            case 18:
                t(chatMessageCreate, commandMessage);
                break;
            case 19:
                D(chatMessageCreate, commandMessage);
                break;
            case 20:
                w(chatMessageCreate, commandMessage);
                break;
            case 21:
                o(chatMessageCreate, commandMessage);
                break;
            case 22:
                n(chatMessageCreate, commandMessage);
                break;
            case 23:
                l(chatMessageCreate, commandMessage);
                break;
            case 24:
                j(chatMessageCreate, commandMessage);
                break;
            case 25:
                i(chatMessageCreate, commandMessage);
                break;
            case 26:
                d(chatMessageCreate, commandMessage);
                break;
            default:
                f(chatMessageCreate, commandMessage);
                break;
        }
        Map<String, String> extMapMap = msgCommand.getExtMapMap();
        if (extMapMap != null) {
            chatMessageCreate.putAllTransExtMap(extMapMap);
        }
        ImMessage imMessageCreateChatSendMsg = commandMessage.getMsgCommand().getFrom().equals(o6.a.c().f57408c) ? ImMessage.createChatSendMsg(chatMessageCreate, commandMessage.getMsgCommand().getTo(), commandMessage.getCmdId(), commandMessage.getMsgCommand().getTimestamp()) : ImMessage.createChatReceiveMsg(chatMessageCreate, commandMessage);
        if (commandMessage.getMsgCommand().getFrom().equals(o6.a.c().f57408c)) {
            imMessageCreateChatSendMsg.setMsgStatus(4);
        }
        int clientTypeValue = commandMessage.getClientTypeValue();
        if (clientTypeValue == 0) {
            imMessageCreateChatSendMsg.setMsgSource(0);
        } else if (clientTypeValue == 1) {
            imMessageCreateChatSendMsg.setMsgSource(2);
        } else if (clientTypeValue == 2) {
            imMessageCreateChatSendMsg.setMsgSource(3);
        } else if (clientTypeValue != 3) {
            imMessageCreateChatSendMsg.setMsgSource(0);
        } else {
            imMessageCreateChatSendMsg.setMsgSource(4);
        }
        return imMessageCreateChatSendMsg;
    }

    public static void d(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(39);
        chatMessage.setMsgContent(CallMsg.convert(commandMessage.getMsgCommand().getCallMessage()));
    }

    public static void f(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(1);
        chatMessage.setMsgContent(new TextMsg(commandMessage.getMsgCommand().getNotice()));
    }

    public static void g(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(7);
        chatMessage.setMsgContent(null);
    }

    public static void h(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(12);
        chatMessage.setMsgContent(new DiceFingerMsg(commandMessage.getMsgCommand().getFingerGuessMessage().getFinger()));
    }

    public static void i(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(40);
        chatMessage.setMsgContent(GameMsg.convert(commandMessage));
    }

    public static void j(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(35);
        CommonMessage commonMessage = commandMessage.getMsgCommand().getCommonMessage();
        chatMessage.setMsgContent(new JsonMsg(commonMessage.getMessageType(), commonMessage.getContent(), commandMessage.getMsgCommand().getNotice()));
    }

    public static void k(ChatMessage chatMessage, CommandMessage commandMessage) {
        List<PicMessage> picMessagesList = commandMessage.getMsgCommand().getPicMessages().getPicMessagesList();
        ArrayList arrayList = new ArrayList();
        Iterator<PicMessage> it = picMessagesList.iterator();
        while (it.hasNext()) {
            arrayList.add(ImgMsg.convert(it.next()));
        }
        chatMessage.setSnapChat(commandMessage.getMsgCommand().getSnapChat());
        chatMessage.setMsgContent(new ImgMsgs(arrayList));
        chatMessage.setMsgType(3);
    }

    public static void l(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(34);
        MusicMessage musicMessage = commandMessage.getMsgCommand().getMusicMessage();
        chatMessage.setMsgContent(new MusicMsg(musicMessage.getCoverUrl(), musicMessage.getAuthor(), musicMessage.getName(), musicMessage.getUrl(), musicMessage.getPlatform()));
    }

    public static void m(ChatMessage chatMessage, CommandMessage commandMessage) {
        PicMessage picMessage = commandMessage.getMsgCommand().getPicMessage();
        chatMessage.setMsgType(2);
        chatMessage.setSnapChat(commandMessage.getMsgCommand().getSnapChat());
        chatMessage.setMsgContent(ImgMsg.convert(picMessage));
    }

    public static void n(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(33);
        PositionMessage positionMessage = commandMessage.getMsgCommand().getPositionMessage();
        chatMessage.setMsgContent(new PositionMsg(positionMessage.getTitle(), positionMessage.getAddress(), positionMessage.getLng(), positionMessage.getLat()));
    }

    public static void o(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(32);
        chatMessage.setMsgContent(new StringMsg(commandMessage.getMsgCommand().getRepostMessge().getInfo()));
    }

    public static void p(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(19);
        chatMessage.setMsgContent(new PromptMsg(commandMessage.getMsgCommand().getTextMsg().getText()));
    }

    public static void r(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(6);
        chatMessage.setMsgContent((RePostMsg) e.e(commandMessage.getMsgCommand().getRepostMessge().getInfo(), RePostMsg.class));
    }

    public static void s(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(13);
        chatMessage.setMsgContent(new DiceFingerMsg(commandMessage.getMsgCommand().getRollDiceMessage().getDicePoints()));
    }

    public static void u(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(18);
        chatMessage.setMsgContent(new TextMsg(commandMessage.getMsgCommand().getTextMsg().getText()));
    }

    public static void v(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(15);
        chatMessage.setMsgContent(new SoulmateInviteMsg(commandMessage.getMsgCommand().getSoulmateCardMessage().getStatus()));
    }

    public static void w(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(31);
        ShareTagMessage shareTagMessage = commandMessage.getMsgCommand().getShareTagMessage();
        chatMessage.setMsgContent(new ShareTagMsg(shareTagMessage.getTagId(), shareTagMessage.getTagName()));
    }

    public static void x(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(1);
        chatMessage.setMsgContent(new TextMsg(commandMessage.getMsgCommand().getTextMsg().getText(), commandMessage.getMsgCommand().getTextMsg().getType()));
    }

    public static void z(ChatMessage chatMessage, CommandMessage commandMessage) {
        chatMessage.setMsgType(10);
        chatMessage.setMsgContent((UserCardMsg) e.e(commandMessage.getMsgCommand().getUserCardMessage().getUserInfo(), UserCardMsg.class));
    }

    public static void E(ChatMessage chatMessage, CommandMessage commandMessage) {
    }

    public static void e(ChatMessage chatMessage, CommandMessage commandMessage) {
    }

    public static void q(ChatMessage chatMessage, CommandMessage commandMessage) {
    }

    public static void t(ChatMessage chatMessage, CommandMessage commandMessage) {
    }

    public static void y(ChatMessage chatMessage, CommandMessage commandMessage) {
    }
}
