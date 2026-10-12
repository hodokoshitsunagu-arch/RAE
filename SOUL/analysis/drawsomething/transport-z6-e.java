package z6;

import cn.soulapp.imlib.msg.chat.ChatMessage;
import cn.soulapp.imlib.msg.chat.GameMsg;
import com.soul.game.protos.GameMessage;
import com.soul.game.protos.InviteGameMessage;
import com.soul.im.protos.MsgCommand;
import java.util.Map;

/* JADX INFO: compiled from: GamePacket.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends h {
    public e(String str, String str2, String str3, ChatMessage chatMessage) {
        super(str, 0, MsgCommand.Type.GAME, str2, str3, chatMessage);
        GameMessage.c cVarNewBuilder = GameMessage.newBuilder();
        cVarNewBuilder.N0(str2 == null ? "" : str2);
        GameMsg gameMsg = (GameMsg) chatMessage.getMsgContent();
        if (gameMsg != null) {
            String str4 = gameMsg.gameId;
            cVarNewBuilder.J0(str4 == null ? "" : str4);
            if (gameMsg.type == 1) {
                cVarNewBuilder.a1(GameMessage.Type.DRAW_SOMETHING);
            }
            int i10 = gameMsg.phase;
            if (i10 == 1) {
                cVarNewBuilder.R0(GameMessage.Phase.INVITE);
                if (gameMsg.inviteGameMsg != null) {
                    InviteGameMessage.b bVarNewBuilder = InviteGameMessage.newBuilder();
                    String str5 = gameMsg.inviteGameMsg.invitee;
                    InviteGameMessage.b bVarM0 = bVarNewBuilder.m0(str5 == null ? "" : str5);
                    String str6 = gameMsg.inviteGameMsg.inviter;
                    InviteGameMessage.b bVarO0 = bVarM0.o0(str6 != null ? str6 : "");
                    Map<String, String> map = gameMsg.extMap;
                    if (map != null && !map.isEmpty()) {
                        bVarO0.i0(gameMsg.extMap);
                    }
                    cVarNewBuilder.Q0(bVarO0.build());
                }
            } else if (i10 == 4) {
                cVarNewBuilder.R0(GameMessage.Phase.GAMEOVER);
            }
            Map<String, String> map2 = gameMsg.extMap;
            if (map2 != null && !map2.isEmpty()) {
                cVarNewBuilder.F0(f7.c.b(gameMsg.extMap));
            }
        }
        this.f64840o = this.f64841p.w2(cVarNewBuilder.build()).build();
        b();
    }
}
