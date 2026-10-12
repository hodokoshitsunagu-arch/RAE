package cn.soulapp.imlib.msg.chat;

import com.soul.game.protos.AnswerResult;
import com.soul.game.protos.GameMessage;
import com.soul.game.protos.GameoverGameMessage;
import com.soul.game.protos.InviteGameMessage;
import com.soul.im.protos.CommandMessage;
import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class GameMsg extends TopChatMsg {
    public Map<String, String> extMap;
    public String gameId;
    public GameoverGameMsg gameoverGameMsg;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public String f16870id;
    public InviteGameMsg inviteGameMsg;
    public int phase;
    public int type;

    @Retention(RetentionPolicy.SOURCE)
    public @interface GameType {

        /* JADX INFO: renamed from: k3, reason: collision with root package name */
        public static final int f16871k3 = 1;
    }

    public static class GameoverGameMsg implements Serializable {
        public DrawSomethingGameoverGameMsg drawSomethingGameoverGameMsg;

        public static class DrawSomethingGameoverGameMsg implements Serializable {
            public List<AnswerResult> answerResults;

            public static class AnswerResult implements Serializable {
                public String answer;
                public String answerDesc;
                public Map<String, String> extMap;
                public String question;
                public String questionDesc;
                public boolean right;

                /* JADX INFO: renamed from: ts, reason: collision with root package name */
                public long f16872ts;

                public static AnswerResult convert(com.soul.game.protos.AnswerResult answerResult) {
                    AnswerResult answerResult2 = new AnswerResult();
                    answerResult2.question = answerResult.getQuestion();
                    answerResult2.questionDesc = answerResult.getQuestionDesc();
                    answerResult2.answer = answerResult.getAnswer();
                    answerResult2.answerDesc = answerResult.getAnswerDesc();
                    answerResult2.right = answerResult.getRight();
                    answerResult2.f16872ts = answerResult.getTs();
                    answerResult2.extMap = answerResult.getExtMapMap();
                    return answerResult2;
                }
            }
        }
    }

    public static class InviteGameMsg implements Serializable {
        public Map<String, String> extMap;
        public String invitee;
        public String inviter;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Phase {

        /* JADX INFO: renamed from: l3, reason: collision with root package name */
        public static final int f16873l3 = 1;

        /* JADX INFO: renamed from: m3, reason: collision with root package name */
        public static final int f16874m3 = 4;
    }

    public static GameMsg convert(CommandMessage commandMessage) {
        GameMessage gameMessage = commandMessage.getMsgCommand().getGameMessage();
        GameMsg gameMsg = new GameMsg();
        gameMsg.f16870id = commandMessage.getCmdId();
        gameMsg.gameId = gameMessage.getGameId();
        int phaseValue = gameMessage.getPhaseValue();
        if (phaseValue == 1) {
            gameMsg.phase = 1;
            InviteGameMsg inviteGameMsg = new InviteGameMsg();
            InviteGameMessage inviteGameMessage = gameMessage.getInviteGameMessage();
            inviteGameMsg.invitee = inviteGameMessage.getInvitee();
            inviteGameMsg.inviter = inviteGameMessage.getInviter();
            inviteGameMsg.extMap = inviteGameMessage.getExtMapMap();
            gameMsg.inviteGameMsg = inviteGameMsg;
        } else if (phaseValue == 4) {
            gameMsg.phase = 4;
            if (gameMessage.getTypeValue() == 1) {
                GameoverGameMessage gameoverGameMessage = gameMessage.getGameoverGameMessage();
                GameoverGameMsg gameoverGameMsg = new GameoverGameMsg();
                GameoverGameMsg.DrawSomethingGameoverGameMsg drawSomethingGameoverGameMsg = new GameoverGameMsg.DrawSomethingGameoverGameMsg();
                ArrayList arrayList = new ArrayList();
                Iterator<AnswerResult> it = gameoverGameMessage.getDrawSomethingGameoverGameMessage().getAnswerResults().getAnswerResultsList().iterator();
                while (it.hasNext()) {
                    arrayList.add(GameoverGameMsg.DrawSomethingGameoverGameMsg.AnswerResult.convert(it.next()));
                }
                drawSomethingGameoverGameMsg.answerResults = arrayList;
                gameoverGameMsg.drawSomethingGameoverGameMsg = drawSomethingGameoverGameMsg;
                gameMsg.gameoverGameMsg = gameoverGameMsg;
            }
        }
        gameMsg.extMap = gameMessage.getExtMapMap();
        if (gameMessage.getTypeValue() == 1) {
            gameMsg.type = 1;
        }
        return gameMsg;
    }
}
