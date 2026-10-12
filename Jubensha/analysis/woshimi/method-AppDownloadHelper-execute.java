    public void execute() {
        this.mManager.addHelper(this);
        Retrofit retrofitBuild = new Retrofit.Builder().baseUrl(this.mBaseUrl).addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(getDefaultOkHttp()).build();
        this.mAdapter = retrofitBuild;
        this.mUploadService = (AppDownloadSource) retrofitBuild.create(AppDownloadSource.class);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        this.mUploadService.download(this.mApkName).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).subscribe(new Observer<ResponseBody>() { // from class: com.mszmapp.detective.model.net.download.AppDownloadHelper.1
            @Override // io.reactivex.Observer
            public void onComplete() {
                if (AppDownloadHelper.this.isCancel) {
                    jb.a.c("cancel");
                    AppDownloadHelper.this.mListener.onError("cancel");
                } else if (AppDownloadHelper.this.mListener != null) {
                    jb.a.c("succeed");
                    AppDownloadHelper.this.mListener.onComplated();
                }
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th2) {
                jb.a.c("onError" + th2.getMessage());
                AppProgressListener appProgressListener = AppDownloadHelper.this.mListener;
                if (appProgressListener != null) {
                    appProgressListener.onError(th2.getMessage());
                }
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
            }

            /* JADX WARN: Code duplicated, block: B:53:0x00e3 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:54:0x00e5 A[Catch: Exception -> 0x00e1, TRY_LEAVE, TryCatch #7 {Exception -> 0x00e1, blocks: (B:50:0x00dd, B:54:0x00e5), top: B:63:0x00dd }] */
            /* JADX WARN: Code duplicated, block: B:63:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // io.reactivex.Observer
            public void onNext(ResponseBody responseBody) throws Throwable {
                OutputStream outputStream;
                jb.a.c("next" + responseBody.contentLength());
                InputStream inputStream = null;
                fileOutputStream = null;
                OutputStream fileOutputStream = null;
                inputStream = null;
                try {
                    try {
                        File file = new File(AppDownloadHelper.this.mPath);
                        InputStream inputStreamByteStream = responseBody.byteStream();
                        try {
                            if (AppDownloadHelper.this.innerStorage || Build.VERSION.SDK_INT < 29) {
                                fileOutputStream = new FileOutputStream(file);
                            } else {
                                ContentValues contentValues = new ContentValues();
                                ContentResolver contentResolver = x8.a.b().getContentResolver();
                                contentValues.put("mime_type", "video/mp4");
                                contentValues.put("relative_path", AppDownloadHelper.this.mPath);
                                fileOutputStream = contentResolver.openOutputStream(contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues));
                            }
                            byte[] bArr = new byte[8192];
                            while (true) {
                                int i10 = inputStreamByteStream.read(bArr);
                                if (i10 == -1) {
                                    inputStreamByteStream.close();
                                    if (fileOutputStream == null) {
                                        break;
                                    }
                                    fileOutputStream.close();
                                    break;
                                }
                                if (AppDownloadHelper.this.isCancel) {
                                    file.delete();
                                    try {
                                        inputStreamByteStream.close();
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                            return;
                                        }
                                        return;
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                        return;
                                    }
                                }
                                fileOutputStream.write(bArr, 0, i10);
                            }
                        } catch (IOException e11) {
                            e = e11;
                            OutputStream outputStream2 = fileOutputStream;
                            inputStream = inputStreamByteStream;
                            outputStream = outputStream2;
                            try {
                                e.printStackTrace();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                        if (outputStream != null) {
                                            outputStream.close();
                                        }
                                    } catch (Exception e12) {
                                        e12.printStackTrace();
                                        throw th;
                                    }
                                } else if (outputStream != null) {
                                    outputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            OutputStream outputStream3 = fileOutputStream;
                            inputStream = inputStreamByteStream;
                            outputStream = outputStream3;
                            if (inputStream != null) {
                                inputStream.close();
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                            } else if (outputStream != null) {
                                outputStream.close();
                            }
                            throw th;
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                } catch (IOException e14) {
                    e = e14;
                    outputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    outputStream = null;
                }
                Log.i("AppDownLoadHelper", "========time" + (System.currentTimeMillis() - jCurrentTimeMillis));
            }
        });
        AppProgressListener appProgressListener = this.mListener;
        if (appProgressListener != null) {
            appProgressListener.onStart();
        }
    }