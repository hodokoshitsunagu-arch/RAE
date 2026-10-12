    /* JADX INFO: Access modifiers changed from: private */
    public boolean openGameByCold() {
        Intent intent;
        String gameLauncherActivity = SDKRuntime.getInstance().getGameLauncherActivity();
        if (TextUtils.isEmpty(gameLauncherActivity)) {
            Toast.makeText(this, "参数gameLauncherActivity错误", 1).show();
            exitGame();
            return true;
        }
        ProtocolManager protocolManager = this.mProtocolManager;
        if (protocolManager != null) {
            protocolManager.onDestroy(this);
        }
        Intent intent2 = this.mIntent;
        if (intent2 != null) {
            intent = new Intent(intent2);
            intent.setAction(null);
            intent.removeCategory("android.intent.category.LAUNCHER");
            intent.setFlags(0);
        } else {
            intent = new Intent();
        }
        intent.addFlags(603979776);
        L.d(TAG, "start Protocol Launcher Activity[冷启动]:" + gameLauncherActivity);
        intent.setComponent(new ComponentName(this, gameLauncherActivity));
        startActivity(intent);
        overridePendingTransition(0, 0);
        ProtocolManager.getInstance().mHasAcceptProtocolByLauncher = true;
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.netease.ntunisdk.external.protocol.ProtocolLauncher.10
            @Override // java.lang.Runnable
            public void run() {
                SDKRuntime.getInstance().setProtocolLauncherShowing(false);
                ProtocolLauncher.this.finish();
            }
        }, 4000L);
        return true;
    }