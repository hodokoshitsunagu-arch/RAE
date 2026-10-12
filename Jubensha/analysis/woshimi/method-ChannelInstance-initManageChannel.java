    private static void initManageChannel(String str, int i10, int i11) throws Exception {
        mhost = str;
        mport = i10;
        HashMap map = new HashMap();
        String str2 = "WSM/" + com.blankj.utilcode.util.c.e() + " (Android " + AppDeviceInfo.getSystemVersion() + ";" + AppDeviceInfo.getPhoneType() + ")";
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put("UA", str2);
        s sVar = new s("CONSTANT");
        int iE = Constant.HTTP_DEBUG_MODE ? sVar.e("URL_ENV", E_PublicVersion.TEST.getType()) : sVar.e("URL_ENV", E_PublicVersion.PRODUCE.getType());
        if (iE == E_PublicVersion.TEST.getType()) {
            if (i11 == 1) {
                channel = build(str, i10, str, true, q2.a.f70559b.getAssets().open("dfw.txt"), map);
                return;
            } else {
                channel = build(str, i10, str, false, null, map);
                return;
            }
        }
        if (iE == E_PublicVersion.PRODUCE_TEST.getType()) {
            channel = build(str, i10, str, true, i11 == 1 ? a.c().getResources().openRawResource(R.raw.monopoly_server) : a.c().getResources().openRawResource(R.raw.server), map);
        } else {
            channel = build(str, i10, str, true, i11 == 1 ? a.c().getResources().openRawResource(R.raw.monopoly_server) : a.c().getResources().openRawResource(R.raw.server), map);
        }
    }