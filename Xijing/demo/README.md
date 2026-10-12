# 戏鲸 Pia 戏前端演示

依据：[专项 APK 证据](../PIAXI-EVIDENCE.md)、[交互重建说明](../PIAXI-RECONSTRUCTION.md)。没有复制原版源码或平台剧本；这是本地交互演示，其他人物为演示人物。

从交付仓库根目录启动：

```sh
node Xijing/demo/server.mjs
```

打开 [http://127.0.0.1:4186](http://127.0.0.1:4186)。可通过 `PIAXI_PORT` 选择端口。只有 localhost 可以访问，不对外发布。服务器无需 npm 安装或构建。

1. 手机先点“展开舞台”；选择一个空麦位，认领角色，点击“准备好了”。
2. 主持人可缓存 BGM，点击“开始走本”。也可以在开场前直接试听音乐。
3. 阅读台词；点击音效时间点，确认跳 B。控制台支持切曲、拖进度、快进快退与音量。
4. 原声、R&B 和电话音会应用于主动开启的麦克风录音。不开麦也能完整体验 BGM 和剧本。
5. “录下这一场”保存本地音频。麦克风未开启时只录 BGM。结束后出现试听播放器和下载链接。
6. 点击“结束演绎”查看本地杀青统计；切换剧本会重置角色与音乐；离开房间会停止媒体。

“演示身份”可切换主持人和演员，检视权限差异。演示角色、状态、公屏和缓存都只在本页会话内存在；录音刷新后清空，需要保留时先下载。演示 BGM 是生成的原创合成音，不是 APK 内的商业音乐。

手机常驻播放器支持在阅读中播放/暂停，并跳到音乐与录音控制台。桌面采用舞台、剧本、BGM/消息三列。没有实现真实联机、后台房间、API 调用或原版奖励。

验证命令：

```sh
node --test Xijing/demo/tests/model.test.mjs
node --check Xijing/demo/app.mjs
node --check Xijing/demo/audio.mjs
node --check Xijing/demo/server.mjs
```

本次使用已有 Node 24.17.0 运行独立演示；未改动仓库工具链或安装软件。验证范围与未验证项见 [verification/README.md](verification/README.md)。
