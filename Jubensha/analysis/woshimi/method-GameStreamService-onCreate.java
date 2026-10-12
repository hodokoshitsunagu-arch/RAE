    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f22494a = new i4.b();
        this.f22500g = GameRepository.getInstance(new GameRemoteSource());
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                j0();
            } else {
                i0();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        h4.d.b(this);
    }