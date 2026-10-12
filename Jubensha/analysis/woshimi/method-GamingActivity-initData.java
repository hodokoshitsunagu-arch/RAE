    /* JADX WARN: Code duplicated, block: B:17:0x0044  */
    @Override // com.mszmapp.detective.base.DetectiveBaseActivity
    public void initData() {
        boolean z10;
        String roomId;
        new m4(this);
        Re(true);
        this.enterRoomBean = (EnterRoomBean) getIntent().getParcelableExtra("enterRoomBean");
        ImageView imageViewPc = pc();
        EnterRoomBean enterRoomBean = this.enterRoomBean;
        if (Intrinsics.areEqual(enterRoomBean != null ? enterRoomBean.getPassword() : null, "0")) {
            z10 = false;
        } else {
            EnterRoomBean enterRoomBean2 = this.enterRoomBean;
            String password = enterRoomBean2 != null ? enterRoomBean2.getPassword() : null;
            if (password == null || password.length() == 0) {
                z10 = false;
            } else {
                z10 = true;
            }
        }
        yh.h.e(imageViewPc, z10);
        EnterRoomBean enterRoomBean3 = this.enterRoomBean;
        if (enterRoomBean3 == null || (roomId = enterRoomBean3.getRoomId()) == null) {
            roomId = "";
        }
        this.roomId = roomId;
        EnterRoomBean enterRoomBean4 = this.enterRoomBean;
        this.roomTitle = enterRoomBean4 != null ? enterRoomBean4.getRoomTitle() : null;
        this.isFirstEnterInto = getIntent().getBooleanExtra("isFirstEnterInto", false);
        TextView textViewHd = hd();
        EnterRoomBean enterRoomBean5 = this.enterRoomBean;
        textViewHd.setText("房间号: " + (enterRoomBean5 != null ? enterRoomBean5.getShowRoomId() : null));
        this.isGiftOpen = g4.b.a();
        if (VoiceProviderManager.getInstance().getVoiceProvider() != null) {
            VoiceProviderManager.getInstance().getVoiceProvider().setHandler(i6());
            wc().setClickable(true);
            rc().setClickable(true);
            this.joinedChannel = true;
            if (VoiceProviderManager.getInstance().isMuteSelf()) {
                E(true);
            }
        }
        this.dpOne = h4.b.b(this, 1.0f);
        this.giftList = new ArrayList();
        SocketConnector.Companion companion = SocketConnector.INSTANCE;
        String currentChangeRoom = companion.get().getCurrentChangeRoom();
        if (currentChangeRoom == null || currentChangeRoom.length() == 0) {
            companion.get().changeRoom("game://" + this.roomId);
        }
        k4 k4Var = this.presenter;
        if (k4Var != null) {
            k4Var.n0(this.roomId);
        }
        eb.c.L().W0(this.roomId);
        eb.c.L().k0();
        boolean zN0 = eb.c.L().n0();
        this.isWatcher = zN0;
        if (zN0) {
            gd().setVisibility(4);
        }
        ld().setText(this.roomTitle);
        int userId = UserInfo.getInstance().getUserId();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(userId);
        this.playerId = sb2.toString();
        PlayersAdapter playersAdapter = new PlayersAdapter(null);
        this.adapter = playersAdapter;
        playersAdapter.bindToRecyclerView(Uc());
        RecyclerView.ItemAnimator itemAnimator = Uc().getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        Wg(60);
        PlayersAdapter playersAdapter2 = this.adapter;
        if (playersAdapter2 != null) {
            playersAdapter2.setOnItemClickListener(new l());
        }
        PlayersAdapter playersAdapter3 = this.adapter;
        if (playersAdapter3 != null) {
            playersAdapter3.m(new Function1() { // from class: e9.x0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return GamingActivity.Dd(this.f62478a, (String) obj);
                }
            });
        }
        this.serviceConnection = new m();
        Playbook$PlaybookConstant playbook$PlaybookConstantE = eb.c.L().E();
        this.constant = playbook$PlaybookConstantE;
        if (playbook$PlaybookConstantE == null) {
            String strC = h4.m.c(R.string.failed_to_get_your_character_info);
            Intrinsics.checkNotNullExpressionValue(strC, "getString(...)");
            errorFinish(strC);
            return;
        }
        ec().postDelayed(new Runnable() { // from class: e9.i1
            @Override // java.lang.Runnable
            public final void run() {
                GamingActivity.Ed(this.f62293a);
            }
        }, 1800L);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        DecisionAdapter decisionAdapter = new DecisionAdapter(this, arrayList, (j4) this.presenter);
        DecisionCenterAdapter decisionCenterAdapter = new DecisionCenterAdapter(this, arrayList2, (j4) this.presenter);
        Sc().setAdapter(decisionAdapter);
        Tc().setAdapter(decisionCenterAdapter);
        decisionCenterAdapter.bindToRecyclerView(Tc());
        decisionCenterAdapter.i(new n());
        decisionAdapter.bindToRecyclerView(Sc());
        this.giftItemDivider = h4.b.b(this, 5.0f);
        if (this.isFirstEnterInto) {
            Wb().c(true);
        } else {
            Wb().c(false);
        }
        k4 k4Var2 = this.presenter;
        if (k4Var2 != null) {
            k4Var2.d0(eb.c.L().R());
        }
        if (eb.c.L().g0() > 0) {
            md().setText("在线 " + eb.c.L().g0() + " >");
        }
        mc();
        vb();
    }