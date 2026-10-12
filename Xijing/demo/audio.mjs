export class RoomAudio {
  constructor(element) { this.element = element; this.cache = new Map(); this.volume = .35; this.mic = null; this.micTicket = 0; this.effect = 'dry'; this.urls = []; }
  async initialize() {
    if (!this.context) {
      const AudioContext = window.AudioContext || window.webkitAudioContext;
      if (!AudioContext) throw new Error('浏览器不支持 Web Audio，请使用 Chrome 或 Safari');
      this.context = new AudioContext();
      this.mix = this.context.createMediaStreamDestination();
      this.source = this.context.createMediaElementSource(this.element);
      this.bgmGain = this.context.createGain(); this.bgmGain.gain.value = this.volume;
      this.source.connect(this.bgmGain); this.bgmGain.connect(this.context.destination); this.bgmGain.connect(this.mix);
      this.highpass = this.context.createBiquadFilter(); this.highpass.type = 'highpass'; this.highpass.frequency.value = 400;
      this.lowpass = this.context.createBiquadFilter(); this.lowpass.type = 'lowpass'; this.lowpass.frequency.value = 2800;
      this.reverb = this.context.createConvolver();
      const impulse = this.context.createBuffer(2, this.context.sampleRate * 1.7, this.context.sampleRate);
      let seed = 31415;
      for (let ch = 0; ch < 2; ch++) { const data = impulse.getChannelData(ch); for (let i = 0; i < data.length; i++) { seed = (seed * 1664525 + 1013904223) >>> 0; data[i] = (seed / 2147483648 - 1) * Math.pow(1 - i / data.length, 3) * .35; } }
      this.reverb.buffer = impulse;
      this.wetGain = this.context.createGain(); this.wetGain.gain.value = .4;
    }
    await this.context.resume();
  }
  setVolume(volume) { this.volume = volume; if (this.bgmGain) this.bgmGain.gain.value = volume; }
  select(track, { reset = false } = {}) { if (this.track?.id === track.id && !reset) return; this.element.pause(); this.track = track; this.element.src = this.cache.get(track.id) || track.file; this.element.load(); }
  async play() { await this.initialize(); await this.element.play(); }
  pause() { this.element.pause(); }
  async seek(time) {
    if (this.element.readyState < 1) await new Promise((resolve, reject) => {
      const timer = setTimeout(() => { clean(); reject(new Error('音频加载超时，请重试')); }, 8000);
      const clean = () => { clearTimeout(timer); this.element.removeEventListener('loadedmetadata', loaded); this.element.removeEventListener('error', failed); };
      const loaded = () => { clean(); resolve(); }; const failed = () => { clean(); reject(new Error('音频文件加载失败')); };
      this.element.addEventListener('loadedmetadata', loaded); this.element.addEventListener('error', failed); this.element.load();
    });
    this.element.currentTime = Math.max(0, Math.min(time, this.element.duration || this.track.duration));
  }
  async cacheTracks(tracks) {
    for (const track of tracks) {
      if (this.cache.has(track.id)) continue;
      const response = await fetch(track.file); if (!response.ok) throw new Error('BGM 缓存失败，请重试');
      const blob = await response.blob(); const url = URL.createObjectURL(blob); this.urls.push(url); this.cache.set(track.id, url);
    }
  }
  async startMic() {
    const ticket = ++this.micTicket;
    if (!navigator.mediaDevices?.getUserMedia) throw new Error('此浏览器无法使用麦克风，请在 localhost 中打开');
    await this.initialize();
    const stream = await navigator.mediaDevices.getUserMedia({ audio: { echoCancellation: true, noiseSuppression: true }, video: false });
    if (ticket !== this.micTicket) { stream.getTracks().forEach(t => t.stop()); return false; }
    this.mic = stream; this.micSource = this.context.createMediaStreamSource(stream); this.applyEffect(this.effect); return true;
  }
  stopMic() { this.micTicket++; this.mic?.getTracks().forEach(t => t.stop()); this.micSource?.disconnect(); this.mic = null; this.micSource = null; }
  applyEffect(effect) {
    this.effect = effect; if (!this.micSource) return;
    this.micSource.disconnect(); this.highpass.disconnect(); this.lowpass.disconnect(); this.reverb.disconnect(); this.wetGain.disconnect();
    // Only feed the local recording bus. No live monitoring, feedback loop or network sender.
    if (effect === 'phone') { this.micSource.connect(this.highpass); this.highpass.connect(this.lowpass); this.lowpass.connect(this.mix); }
    else { this.micSource.connect(this.mix); if (effect === 'reverb') { this.micSource.connect(this.reverb); this.reverb.connect(this.wetGain); this.wetGain.connect(this.mix); } }
  }
  async record(onComplete) {
    if (typeof MediaRecorder === 'undefined') throw new Error('此浏览器不支持录制，请使用新版 Chrome');
    await this.initialize(); const mime = ['audio/webm;codecs=opus', 'audio/mp4', 'audio/webm'].find(t => MediaRecorder.isTypeSupported(t));
    const recorder = new MediaRecorder(this.mix.stream, mime ? { mimeType: mime } : {}); this.recorder = recorder;
    const chunks = []; recorder.ondataavailable = e => { if (e.data.size) chunks.push(e.data); };
    recorder.onstop = () => { const type = recorder.mimeType; const blob = new Blob(chunks, { type }); const url = URL.createObjectURL(blob); this.urls.push(url); onComplete({ url, blob, extension: type.includes('mp4') ? 'm4a' : 'webm' }); };
    recorder.start(250);
  }
  stopRecord() { if (this.recorder?.state === 'recording') this.recorder.stop(); }
  dispose() { this.pause(); this.stopRecord(); this.stopMic(); this.urls.forEach(url => URL.revokeObjectURL(url)); this.context?.close(); }
}
