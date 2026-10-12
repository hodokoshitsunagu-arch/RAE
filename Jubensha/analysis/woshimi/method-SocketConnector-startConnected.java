    public final void startConnected() {
        disposeSocket(true);
        Observable observableA = b.a((x2.b.n().d() ? this.helper.e("URL_ENV", E_PublicVersion.TEST.getType()) : this.helper.e("URL_ENV", E_PublicVersion.PRODUCE.getType())) == 3 ? this.debugConnectUrl : this.releaseConnectUrl);
        Intrinsics.checkNotNull(observableA);
        observableA.subscribe(this.socketSubscriber);
        Disposable disposable = this.heartBeatDisposable;
        if (disposable != null) {
            Intrinsics.checkNotNull(disposable);
            if (!disposable.isDisposed()) {
                return;
            }
        }
        startHeartBeatTimer();
    }