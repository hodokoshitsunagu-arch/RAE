    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        String str = getApplicationInfo().sourceDir;
        b.b("apkPath:%s", str);
        try {
            com.netease.android.protect.a.C0077a c0077aA = new com.netease.android.protect.a(context, this, str).a();
            ShellSupporter.initNative(str, c0077aA.d, c0077aA.e, context.getPackageName(), c0077aA.b);
            II0I0IO0(c0077aA.d, c0077aA.i, c0077aA.j, c0077aA.k, c0077aA.m);
            ClassLoader classLoader = (ClassLoader) II0IOI0O(context);
            b.b("old loader " + classLoader.toString(), new Object[0]);
            a(new ArrayList<>(Arrays.asList(c.a(c0077aA.e, "classes"))), classLoader, new File(c0077aA.f), false);
            b.b("new loader " + classLoader.toString(), new Object[0]);
            II0IOI00(classLoader);
            b.b("protect attachBaseContext used:%d", Long.valueOf(System.currentTimeMillis() - this.f660a));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }