    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f34215a = this;
        ImagePickerUtils.application = this;
        p3.e.f70094i = "我是谜是有底线的";
        registerActivityLifecycleCallbacks(f34216b);
        if (!wp.c.d().l(this)) {
            wp.c.d().s(this);
        }
        pe.d.q().m(new b());
        ze.b.y0(new c());
        j();
        h();
        d();
        MMKV.initialize(this);
        p();
        RichText.initCacheDir(FileUtil.getGlideDir());
        ExpandableTextView.K = new d();
        AppContextUtils.init(this);
        Glide.with(this);
        k();
        l();
        q2.a.a(this);
        h.a(this);
        e();
        BaseServiceProvider baseServiceProviderD = ze.a.d("/detetive/AppProvider");
        if (baseServiceProviderD != null) {
            baseServiceProviderD.init(this);
            baseServiceProviderD.apply();
        }
        BaseServiceProvider baseServiceProviderD2 = ze.a.d("/forest/AppProvider");
        if (baseServiceProviderD2 != null) {
            baseServiceProviderD2.init(this);
            baseServiceProviderD2.apply();
        }
        BaseServiceProvider baseServiceProviderD3 = ze.a.d("/living/XiYaApplication");
        if (baseServiceProviderD3 != null) {
            baseServiceProviderD3.init(this);
            baseServiceProviderD3.apply();
        }
    }