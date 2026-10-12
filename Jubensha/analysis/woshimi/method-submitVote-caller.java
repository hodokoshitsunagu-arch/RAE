        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(ObservableEmitter observableEmitter) {
            GrpcStreamObserver grpcStreamObserver = new GrpcStreamObserver(observableEmitter);
            c.this.f70171b.add(grpcStreamObserver);
            StubCreater.getRoomStub().Y(this.f70179a, grpcStreamObserver);
        }