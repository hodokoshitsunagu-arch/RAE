package e7;

import a7.b;
import c7.c;
import cn.soulapp.imlib.msg.ImMessage;
import cn.soulapp.imlib.msg.chat.AudioMsg;
import cn.soulapp.imlib.msg.chat.CallMsg;
import cn.soulapp.imlib.msg.chat.ChatMessage;
import cn.soulapp.imlib.msg.chat.DiceFingerMsg;
import cn.soulapp.imlib.msg.chat.ExpressionMsg;
import cn.soulapp.imlib.msg.chat.ExtChatMsg;
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
import cn.soulapp.imlib.msg.chat.TopChatMsg;
import cn.soulapp.imlib.msg.chat.UserCardMsg;
import cn.soulapp.imlib.msg.chat.VideoMsg;
import cn.soulapp.imlib.msg.chat.VoiceChatMsg;
import cn.soulapp.imlib.msg.order.DeleteCmdMsg;
import cn.soulapp.imlib.msg.order.KickoutCmdMsg;
import cn.soulapp.imlib.msg.order.OrderCmdMsg;
import cn.soulapp.imlib.msg.report.LoginReportMsg;
import cn.soulapp.imlib.msg.report.RelationReportMsg;
import cn.soulapp.imlib.msg.report.ReportCmdMsg;
import cn.soulapp.imlib.msg.room.RoomMsg;
import cn.soulapp.imlib.msg.transcmd.TransCmdMsg;
import cn.soulapp.imlib.packet.Packet;
import com.soul.im.protos.MsgCommand;
import w6.d;
import z6.e;
import z6.f;
import z6.g;
import z6.i;
import z6.j;
import z6.k;
import z6.l;
import z6.m;
import z6.n;
import z6.o;
import z6.p;
import z6.q;
import z6.s;
import z6.u;
import z6.v;
import z6.w;
import z6.x;

/* JADX INFO: compiled from: PacketConverter.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static Packet a(ImMessage imMessage) {
        Packet sVar;
        Packet mVar;
        int msgType = imMessage.getMsgType();
        if (msgType != 1) {
            switch (msgType) {
                case 5:
                    TransCmdMsg transCmd = imMessage.getTransCmd();
                    if (transCmd == null) {
                        return null;
                    }
                    return new d7.a(imMessage.getTo(), transCmd, imMessage.getMsgId());
                case 6:
                    OrderCmdMsg orderCmd = imMessage.getOrderCmd();
                    int i10 = orderCmd.type;
                    if (i10 == 0) {
                        KickoutCmdMsg kickoutCmdMsg = (KickoutCmdMsg) orderCmd.getMsgContent();
                        return new b(kickoutCmdMsg.kicker, kickoutCmdMsg.asser, kickoutCmdMsg.timestamp);
                    }
                    if (i10 != 1) {
                        return null;
                    }
                    return new a7.a(((DeleteCmdMsg) orderCmd.getMsgContent()).list);
                case 7:
                    ReportCmdMsg reportCmd = imMessage.getReportCmd();
                    int type = reportCmd.getType();
                    if (type == 0) {
                        LoginReportMsg loginReportMsg = (LoginReportMsg) reportCmd.getMsgContent();
                        return new b7.a(loginReportMsg.getClientType(), loginReportMsg.getLoginType(), loginReportMsg.getFrom(), loginReportMsg.getTo(), loginReportMsg.getTimestamp());
                    }
                    if (type != 3) {
                        return null;
                    }
                    RelationReportMsg relationReportMsg = (RelationReportMsg) reportCmd.getMsgContent();
                    mVar = new b7.b(relationReportMsg.getMasterId(), relationReportMsg.getViceId(), relationReportMsg.getDeleteMasterId(), relationReportMsg.getDeleteViceId(), imMessage.msgId);
                    break;
                    break;
                case 8:
                    RoomMsg roomMsg = imMessage.getRoomMsg();
                    if (roomMsg == null) {
                        return null;
                    }
                    int type2 = roomMsg.getType();
                    if (type2 != 1 && type2 != 2) {
                        if (type2 == 3) {
                            return new c7.b(roomMsg, imMessage.getMsgId(), imMessage.getTo());
                        }
                        if (type2 == 4) {
                            return new c(roomMsg, imMessage.getMsgId(), imMessage.getTo());
                        }
                        if (type2 != 5) {
                            return null;
                        }
                    }
                    return new c7.a(roomMsg, imMessage.getMsgId(), imMessage.getTo());
                case 9:
                    return new y6.a(imMessage.getTo(), imMessage.getMapMessage(), imMessage.getMsgId());
                case 10:
                    return new x6.a(imMessage.getGroupMsg(), imMessage.getMsgId(), imMessage.getGroupMsg().groupId);
                case 11:
                    return new d(imMessage.getSyncCmdMsg().getViceIds());
                default:
                    return null;
            }
        } else {
            ChatMessage chatMessage = imMessage.getChatMessage();
            switch (chatMessage.getMsgType()) {
                case 1:
                    sVar = new s(imMessage.getTo(), MsgCommand.Type.TEXT, (TextMsg) chatMessage.getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage());
                    return sVar;
                case 2:
                    sVar = new j(imMessage.getTo(), imMessage.getChatMessage().getSnapChat(), imMessage.getMsgId(), (ImgMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getChatMessage());
                    return sVar;
                case 3:
                    return new k(imMessage.getTo(), ((ImgMsgs) imMessage.getChatMessage().getMsgContent()).imgMsgList, imMessage.getMsgId(), imMessage.getChatMessage());
                case 4:
                    sVar = new w(imMessage.getTo(), imMessage.getChatMessage().getSnapChat(), (VideoMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage());
                    return sVar;
                case 5:
                    return new z6.a(imMessage.getTo(), (AudioMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage());
                case 6:
                    mVar = new m(imMessage.getTo(), ((RePostMsg) imMessage.getChatMessage().getMsgContent()).toJson(), imMessage.getMsgId(), MsgCommand.Type.REPOST, imMessage.getChatMessage());
                    break;
                case 7:
                case 11:
                case 14:
                case 16:
                case 17:
                case 21:
                case 27:
                case 28:
                case 36:
                case 37:
                case 38:
                default:
                    return null;
                case 8:
                    return new v(imMessage.getTo(), (ExpressionMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage());
                case 9:
                    return new g(imMessage.getTo(), MsgCommand.Type.RECALL, imMessage.getMsgId(), imMessage.getChatMessage());
                case 10:
                    return new u(imMessage.getTo(), ((UserCardMsg) imMessage.getChatMessage().getMsgContent()).toJson(), imMessage.getMsgId(), imMessage.getChatMessage());
                case 12:
                    return new z6.d(imMessage.getTo(), ((DiceFingerMsg) imMessage.getChatMessage().getMsgContent()).number, imMessage.getMsgId(), imMessage.getChatMessage());
                case 13:
                    return new n(imMessage.getTo(), ((DiceFingerMsg) imMessage.getChatMessage().getMsgContent()).number, imMessage.getMsgId(), imMessage.getChatMessage());
                case 15:
                    return new q(imMessage.getTo(), ((SoulmateInviteMsg) imMessage.getChatMessage().getMsgContent()).status, imMessage.getMsgId(), imMessage.getChatMessage());
                case 18:
                    sVar = new s(imMessage.getTo(), MsgCommand.Type.SHAREBG_INVITATION, (TextMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage());
                    return sVar;
                case 19:
                    mVar = new s(imMessage.getTo(), MsgCommand.Type.PROMPT, ((PromptMsg) imMessage.getChatMessage().getMsgContent()).text, imMessage.getMsgId(), imMessage.getChatMessage());
                    break;
                case 20:
                    return new g(imMessage.getTo(), MsgCommand.Type.REPORT, imMessage.getMsgId(), imMessage.getChatMessage());
                case 22:
                    return new g(imMessage.getTo(), MsgCommand.Type.INPUTSTART, imMessage.getMsgId(), imMessage.getChatMessage());
                case 23:
                    return new g(imMessage.getTo(), MsgCommand.Type.INPUTEND, imMessage.getMsgId(), imMessage.getChatMessage());
                case 24:
                    return new g(imMessage.getTo(), MsgCommand.Type.READALL, imMessage.getMsgId(), imMessage.getChatMessage());
                case 25:
                    return new g(imMessage.getTo(), MsgCommand.Type.READ, imMessage.getMsgId(), imMessage.getChatMessage());
                case 26:
                    return new p(imMessage.getTo(), ((TopChatMsg) imMessage.getChatMessage().getMsgContent()).mark, imMessage.getMsgId(), imMessage.getChatMessage());
                case 29:
                    return new z6.c(imMessage.getTo(), (ExtChatMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage());
                case 30:
                    return new x(imMessage.getTo(), (VoiceChatMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage());
                case 31:
                    return new o(imMessage.getTo(), (ShareTagMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage());
                case 32:
                    mVar = new m(imMessage.getTo(), ((StringMsg) imMessage.getChatMessage().getMsgContent()).content, imMessage.getMsgId(), MsgCommand.Type.POST, imMessage.getChatMessage());
                    break;
                case 33:
                    return new l(imMessage.getTo(), (PositionMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage());
                case 34:
                    return new i(imMessage.getTo(), (MusicMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage());
                case 35:
                    return new f(imMessage.getTo(), (JsonMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage().getNotice(), chatMessage);
                case 39:
                    return new z6.b(imMessage.getTo(), (CallMsg) imMessage.getChatMessage().getMsgContent(), imMessage.getMsgId(), imMessage.getChatMessage().getNotice(), chatMessage);
                case 40:
                    return new e(imMessage.getTo(), imMessage.getMsgId(), imMessage.getChatMessage().getNotice(), chatMessage);
            }
        }
        return mVar;
    }
}
