    public void changeVoiceProvider(int i10, String str, String str2, String str3, int i11, AGEventHandler aGEventHandler, int i12) {
        VoiceProvider voiceProvider = this.voiceProvider;
        if (voiceProvider != null && voiceProvider.getType() != i10) {
            this.voiceProvider.quit();
            this.voiceProvider = null;
        }
        if (this.voiceProvider == null) {
            this.isVolumeMuteMode = false;
            if (i12 == 0) {
                this.earMonirotingVolume = 0;
            } else {
                this.earMonirotingVolume = x.d().h(ConstantTag.TAG_EAR_MONITOR_VOLUME, 0);
                this.audioMixingVolume = x.d().h(ConstantTag.TAG_MUSIC_VOLUME, 25);
                int iH = x.d().h(ConstantTag.TAG_RECORD_VOLUME, 150);
                this.audioRecordVolume = iH;
                if (iH <= 10 || iH > 300) {
                    this.audioRecordVolume = 150;
                    setRecordVolume(150);
                }
            }
            if (i10 == 0) {
                this.voiceProvider = new AgoraVoiceProvider(str, str3, String.valueOf(i11), str2, aGEventHandler, i12);
            }
            this.voiceProvider.setRecordVolume(this.audioRecordVolume);
            this.voiceProvider.setAudioMixingVolume(this.audioMixingVolume);
            this.voiceProvider.setEarMonitingVolume(this.earMonirotingVolume);
            this.voiceProvider.adjustPlaybackSignalVolume(100);
            this.audioMixingState = 0;
        }
    }