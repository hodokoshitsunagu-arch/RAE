    @Override // com.piaxiya.app.lib_base.view.WSMBroadCastActivity, com.piaxiya.app.lib_base.socketconnect.SocketConnector.MessageListener
    public void onReceivedSignalMsg(String msg) {
        List<String> data;
        List<String> data2;
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (JSON.parseObject(msg).getIntValue("type") == 100 || JSON.parseObject(msg).getIntValue("action") == 1200) {
            return;
        }
        if (JSON.parseObject(msg).getIntValue("action") == 3) {
            DramaGiftData dramaGiftData = (DramaGiftData) com.blankj.utilcode.util.n.d(((DramaGiftBean) com.blankj.utilcode.util.n.d(msg, DramaGiftBean.class)).getExtra(), DramaGiftData.class);
            Intrinsics.checkNotNull(dramaGiftData);
            kh(dramaGiftData);
            LivingMsgBean livingMsgBeanBuild = new LivingMsgBean.Builder().setType(0).appendClickedContent(dramaGiftData.getFromUser().getNickname(), SchemeGenerator.createUserScheme(dramaGiftData.getFromUser().getUserId(), dramaGiftData.getFromUser().getUserGuid())).appendColorContent(" 赠送 ", "#40E2A5").appendClickedContent(dramaGiftData.getToUser().getNickname(), SchemeGenerator.createUserScheme(dramaGiftData.getToUser().getUserId(), dramaGiftData.getToUser().getUserGuid())).appendColorContent(HanziToPinyin.Token.SEPARATOR + dramaGiftData.getGift().getGiftNumber() + "个" + dramaGiftData.getGift().getGiftName(), "#40E2A5").build();
            DramaMessageBean dramaMessageBean = new DramaMessageBean();
            dramaMessageBean.setMsgContent(livingMsgBeanBuild.getContent());
            CstMessageAdapter cstMessageAdapter = this.cstMessageAdapter;
            if (cstMessageAdapter != null) {
                String msgContent = dramaMessageBean.getMsgContent();
                cstMessageAdapter.addData(msgContent != null ? msgContent : "");
            }
            RecyclerView recyclerViewHb = Hb();
            CstMessageAdapter cstMessageAdapter2 = this.cstMessageAdapter;
            recyclerViewHb.scrollToPosition(((cstMessageAdapter2 == null || (data2 = cstMessageAdapter2.getData()) == null) ? 1 : data2.size()) - 1);
            eb.a.f62492a.a().add(dramaMessageBean);
            return;
        }
        if (JSON.parseObject(msg).getIntValue("action") != 1501) {
            DramaMessageBean dramaMessageBean2 = new DramaMessageBean();
            dramaMessageBean2.parseData(msg);
            if (dramaMessageBean2.getNeed_ignore() == 1) {
                return;
            }
            LivingMsgBean.Builder type = new LivingMsgBean.Builder().setType(0);
            type.appendIcons(com.blankj.utilcode.util.i.c(16.0f), dramaMessageBean2.getVip_icon());
            if (dramaMessageBean2.getNickname() != null) {
                type.appendClickedColorContent(dramaMessageBean2.getNickname() + ": ", "#57565a99", SchemeGenerator.createUserScheme(dramaMessageBean2.getUser_id(), dramaMessageBean2.getUser_guid()));
            }
            JSONObject msgExtra = dramaMessageBean2.getMsgExtra();
            if ((msgExtra != null ? msgExtra.get("chat_bubble") : null) != null) {
                JSONObject msgExtra2 = dramaMessageBean2.getMsgExtra();
                dramaMessageBean2.setSignalBubbleBean((DramaSignalBubbleBean) com.blankj.utilcode.util.n.d(String.valueOf(msgExtra2 != null ? msgExtra2.get("chat_bubble") : null), DramaSignalBubbleBean.class));
            }
            String color = dramaMessageBean2.getColor();
            if (color == null || color.length() == 0) {
                type.appendContent(dramaMessageBean2.getMsgContent());
            } else {
                type.appendColorContent(dramaMessageBean2.getMsgContent(), dramaMessageBean2.getColor());
            }
            dramaMessageBean2.setMsgContent(type.build().getContent());
            CstMessageAdapter cstMessageAdapter3 = this.cstMessageAdapter;
            if (cstMessageAdapter3 != null) {
                String msgContent2 = dramaMessageBean2.getMsgContent();
                cstMessageAdapter3.addData(msgContent2 != null ? msgContent2 : "");
            }
            RecyclerView recyclerViewHb2 = Hb();
            CstMessageAdapter cstMessageAdapter4 = this.cstMessageAdapter;
            recyclerViewHb2.scrollToPosition(((cstMessageAdapter4 == null || (data = cstMessageAdapter4.getData()) == null) ? 1 : data.size()) - 1);
            eb.a.f62492a.a().add(dramaMessageBean2);
        }
    }