    public static y8.b getRoomStub(int i10) {
        y8.b bVar = (y8.b) y8.X(ChannelInstance.getInstance()).d(new JwtCallCredential("Bearer " + UserInfo.getInstance().getUserId() + Constants.COLON_SEPARATOR + UserInfo.getInstance().getToken()));
        if (i10 != -1) {
            bVar.e(i10, TimeUnit.MILLISECONDS);
        }
        return bVar;
    }