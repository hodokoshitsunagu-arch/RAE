package z6;

import cn.soulapp.imlib.msg.chat.ChatMessage;
import com.soul.im.protos.CommandMessage;
import com.soul.im.protos.MsgCommand;
import java.util.Map;

/* JADX INFO: compiled from: MsgPacket.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends w6.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public MsgCommand f64840o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MsgCommand.c f64841p;

    public h(String str, int i10, MsgCommand.Type type, String str2, ChatMessage chatMessage) {
        super(str2, str);
        MsgCommand.c cVarNewBuilder = MsgCommand.newBuilder();
        this.f64841p = cVarNewBuilder;
        cVarNewBuilder.t2(o6.a.c().f57408c).a3(str == null ? "" : str).Q2(i10).c3(type);
        Map<String, String> transExtMap = chatMessage != null ? chatMessage.getTransExtMap() : null;
        if (transExtMap != null && !transExtMap.isEmpty()) {
            this.f64841p.f2(f7.c.b(transExtMap));
        }
        this.f63545n.y2(CommandMessage.Type.MSG);
    }

    public void b() {
        this.f63544m = this.f63545n.X1(this.f64840o).L1(s6.b.c(this.f64840o)).v2(System.currentTimeMillis()).build();
    }

    @Override // v6.a, cn.soulapp.imlib.packet.Packet
    public int getMsgSubType() {
        MsgCommand msgCommand = this.f64840o;
        return msgCommand != null ? msgCommand.getTypeValue() : super.getMsgSubType();
    }

    public h(String str, int i10, MsgCommand.Type type, String str2, String str3, ChatMessage chatMessage) {
        super(str2, str);
        MsgCommand.c cVarNewBuilder = MsgCommand.newBuilder();
        this.f64841p = cVarNewBuilder;
        cVarNewBuilder.t2(o6.a.c().f57408c).a3(str == null ? "" : str).Q2(i10).c3(type).z2(str3 == null ? "" : str3);
        Map<String, String> transExtMap = chatMessage != null ? chatMessage.getTransExtMap() : null;
        if (transExtMap != null && !transExtMap.isEmpty()) {
            this.f64841p.f2(f7.c.b(transExtMap));
        }
        this.f63545n.y2(CommandMessage.Type.MSG);
    }
}
