# 网易狼人杀 APK 模组与架构分析

分析日期：2026-10-12。已完成市场筛选、APK 获取、安装包结构、Android 平台代码定点反编译、C# 更新程序集元数据及静态调用边分析。目标是理解产品分层与模块边界，不是恢复完整客户端源码或后台部署拓扑。

## 结论

样本呈现为 **Android 保护壳与平台 SDK + Unity/IL2CPP 引擎 + xLua 脚本业务层 + 独立音频 native 层 + 资源/脚本更新体系**。这不是一个只靠 Android 原生页面组织的语聊 App。核心业务目录包括经典对局、匹配、社交关系、语音、跑跑类玩法、模组玩法和商业运营。

模块存在有包内证据；跨层调用中只有报告明确列出的 Java→JNI、保护壳 ClassLoader 操作和 managed CIL 边得到代码级验证。Lua 包加密，业务模块之间的调用关系仍为推断。服务端部署、房间权威状态机、真实媒体传输与麦位权限没有运行时证据。

## 后续：核心交互恢复与前端演示

进一步解析 Unity Prefab 和 Sprite 后，已确认准备、身份发放、头像选人、预言家阵营结果、女巫药剂、猎人开枪、发言、放逐/弃票/票型与出局观战等界面事实。完整来源及 path_id 见 [核心交互静态恢复](core-interactions/CORE-INTERACTIONS.md)。可运行的独立演示见 [前端说明](../demo/README.md)。这些补充证据没有解密 Lua 或证明服务端规则；演示的规则与状态机是独立实现。

## 样本身份

| 项目 | 包内或文件事实 |
| --- | --- |
| 产品 | 网易《狼人杀—官方正版》；成熟度选择依据见 [市场筛选](MARKET.md) |
| 下载来源 | [百度手机助手](https://mobile.baidu.com/appitemp/3249252)，第三方分发样本 |
| 本地 APK | [netease-lrs-2.18.21.apk](../netease-lrs-2.18.21.apk) |
| 包名 / 版本 | `com.netease.lrs` / `2.18.21` |
| versionCode | `1780064634` |
| 最低 / 目标 Android SDK | 26 / 34 |
| 包大小 | 1,253,436,691 字节 |
| SHA-256 | `5870d8ef15292cb7aedd91cd76fdc7c1b20f466cab5ec650692327e31a933373` |
| MD5 | `e9373430c1e76b52e21000e2a5675d08`，与渠道元数据一致 |
| 归档条目 | 12,412；累计未压缩 1,491,456,622 字节 |
| 原生 ABI | `arm64-v8a`、`armeabi-v7a`，各 65 个 `.so` |
| Java 字节码 | 6 个 DEX |
| 资源内部构建 | buildNumber 61；svnNumber 186065；resourceVersion 2.18.21 |

这个 APK 不是已证实的最新版本。商店检索可见更新版本。MD5 与渠道一致只证明取得了渠道标识的同一文件；未验证开发者签名、未建立开发者证书信任链。

## 分层架构

下图的实线只表示已从静态代码直接看到的关系，虚线表示根据组件共存和目录组织提出的关系；节点不是服务端实例。

```mermaid
flowchart TD
  A[Android 清单: StubApp] --> B[ShellSupporter.initNative / ClassLoader 调整]
  B -. 启动细节未恢复 .-> P[MAIN: ProtocolLauncher]
  P -->|冷启动 startActivity / 游戏入口配置| C[清单: AppActivity]
  C -. 包内引擎证据 .-> D[Unity + IL2CPP]
  D -. 绑定体系与包内组件 .-> E[xLua / Lua 业务脚本]
  E -. 路径组织 .-> F[匹配 / 经典对局 / 社交 / 跑跑 / 模组]
  E -. sound/CCSdk.lua .-> G[CCVoiceEngine Java 桥]
  G --> H[AudioCommon / AudioCore / AudioCCReName / AudioEngine]
  G --> I[ControlMiniJNI / LoadJNI]
  E -. native/NgVoiceSdk.lua .-> J[NgVoiceManager: 录音 / 播放 / STT / TTS]
  E -. net / protol 目录 .-> K[WebSocket 与消息协议候选]
  E -. 资源清单与加载目录 .-> L[AssetBundle / Lua 包 / C# 更新程序集]
  D -. 小型补充程序集 .-> M[Assembly.HotUpdate.dll / xLua wrappers]
```

### Android 外壳和平台层：已观察

清单的 Application 是 `com.netease.android.protect.StubApp`，MAIN 启动入口为 `com.netease.ntunisdk.external.protocol.ProtocolLauncher`，并另外声明 `com.netease.lrs.AppActivity`。REA 反编译 `StubApp.attachBaseContext` 得到：读取 APK 路径，调用 `ShellSupporter.initNative(...)`，取得 ClassLoader，并通过辅助方法处理 `classes` 路径、修改加载器。由此能够确认保护壳及动态类加载相关静态逻辑，不能仅凭该方法确定被保护字节的解密算法。

`ProtocolLauncher` 清单 meta-data 的 `gameLauncherActivity` 明确指向 `com.netease.lrs.AppActivity`；REA 反编译 `openGameByCold` 确认读取 SDKRuntime 中的游戏入口、设置 Intent 的 ComponentName 并调用 `startActivity`。这建立了协议入口到配置游戏入口的静态链路，未执行该跳转。

`AppActivity` 未出现在本次可见静态类目录中；直接查询返回未找到。它的完整启动实现没有恢复。发现的 `com.netease.android.MainActivity.onCreate` 只有 `super.onCreate`，其基类是普通 Activity，不能把它误当作 Unity 游戏入口。

清单还声明 UniWebView、UniSDK 代理、Mpay 登录/支付/用户中心、微信支付与分享、QQ/微博授权、活体检测等组件。这证明平台集成边界存在，不证明每条链路已在当前产品流程启用。

### 游戏引擎与更新层：观察加推断

包内有 `libunity.so`、`libil2cpp.so`、`libxlua.so`、IL2CPP `global-metadata.dat`、大量 `.ab` 资源、`lua.pak`、`luaconfig.pak`。结合这些独立证据，可高置信判断 Unity/IL2CPP + xLua 的技术组合；尚未恢复完整 IL2CPP 原生调用图。

`patchlist.json` 与 `dynamicsPatchlist.json` 均声明客户端版本、构建包名、`total_size` 和逐文件表。文件条目包含 32 位十六进制值、大小和第三个数值；前者可作为 MD5 候选，第三项语义未验证，不直接叫作下载 URL 或偏移。

`engine/downloadupdatelist.lua`、`downloaddatablock.lua`、`resourceload.lua` 等目录项支持资源更新/按块加载的架构推断；因正文加密，更新顺序、签名校验、失败恢复和灰度策略未知。

REA 对 36,352 字节的 `Assembly.HotUpdate.dll` 直接解析到 27 个 TypeDef 和 155 个 MethodDef，含 `AudioVisualizerMaster`、`FFTBridge`、`UIMeshRendererEx`、`DayNightMaterialController`、`CSHotUpdateMain` 和 xLua 注册/包装类型。它是小型补充程序集，不能据此声称完整狼人杀规则在这个 DLL 里。REA 将这一独立 CIL 程序集归为带 Unity 引用的 managed 内容，不意味着整个应用使用 Mono 代替 IL2CPP。

### 语音层：两套能力边界

**CCVoice / 实时音频候选。** REA 恢复 `CCVoiceEngine` 的静态初始化，明确看到 `System.loadLibrary` 加载 `AudioCommon`、`AudioCore`、`AudioCCReName`、`AudioEngine`。`Load(Context)` 直接调用 `LoadJNI`；`ControlMini(String,int)` 调用 `ControlMiniJNI` 并捕获链接错误。包内同时有 CC WebRTC 的录音、播放、路由类及 `libAudioWebRTC.so`，Lua 目录包含 `sound/CCManager.lua`、`CCSdk.lua`、`CCVoiceState.lua`、`SpeakingEnergyManager.lua`。

这些证据支持存在 CC 音频原生桥与采集/播放组件。业务房间如何加入音频房、何时允许开麦、命令 JSON 字段、服务端媒体拓扑没有恢复。CCVoiceEngine 的 Java 入向引用查询为 0；这是所检查 DEX 的静态引用结果，不是“语音模块没人用”的结论，Lua/native/反射调用未覆盖。

**NgVoice / 语音消息与语音转换接口。** `NgVoiceManager` 方法目录包含开始/停止录音、上传/下载音频、播放/暂停/恢复、蓝牙监听、STT、TTS。Lua 中有 `native/NgVoiceSdk.lua` 和 `sound/NgVoiceManager.lua`。这能够确认接口能力；不能自动认定每个接口用于狼人夜间通话，或与 CC 使用同一媒体服务。

## 业务模组地图

`lua.pak` 是 ZIP 格式：6,398 个条目全部设置加密位；`luaconfig.pak` 有 615 个条目，同样加密。统计包含脚本、配置和少量开发文档，不能称为 7,013 个功能模块。目录树详见 [模组目录](MODULE-CATALOG.md)，完整条目见两个 `*-index.json`。

| 模组 | 可见路径 / 组织事实 | 可支持的结论与边界 |
| --- | --- | --- |
| UI与运营 | `ui/` 4,873 条；含大厅、关系、活动、商店、赛季等目录 | 产品 UI/运营组织规模大；条目数不等于活跃功能数 |
| 经典对局 | `fight/` 131 条；GameController、GameSocketProcessor、技能/玩家/阶段音效 | 独立的对局组织候选；具体状态转移和角色规则未读 |
| 匹配与板子 | `ui/GameMode/`；Matching、GameModeController、GameModeSocketProcesser | 玩法选择/匹配模块候选，排队与匹配算法未知 |
| 房间与社交 | Room相关目录、FriendChatSocketProcesser、Couple、Guild等 | 房间、好友、私聊、CP、公会组织存在；权限和一致性未知 |
| 跑跑类玩法 | `amongUs/` 459 条；房间、实体、AOI、Buff、地图、网络 | 空间玩法与经典发言对局有分离组织；不能由目录名认定复用其他产品代码 |
| 模组玩法 | `amongUsMod/` 416 条、`customMode/` 18 条 | 自定义玩法/模组体系候选；模组格式和执行权限未恢复 |
| 网络 | `net/WebSocketManager.lua`、MessageCenter、NetworkPacketResender | WebSocket/消息分发/重发组件候选；实际协议和重连策略未知 |
| 协议 | 原始拼写 `protol/` 79 条；`lrsProtos` 下 game、logic、room、社交等 CS/SC 文件 | 有业务分区和双向协议生成组织；没有恢复字段/消息号，CS/SC 命名不独立证明 wire 方向 |
| 平台桥接 | `native/` 53 条；SdkManager、NgVoiceSdk、NileSDK | 游戏业务与平台能力分离的候选边界 |
| 框架 | `common/` 45、`engine/` 29、`base/` 13 | Controller/DataManager、UI列表、资源加载等通用组织；是否遵循统一 MVC 未证实 |

## 对产品设计的启示：推断

值得借鉴的是“对局信令、实时媒体、平台能力、资源更新”四个边界。对局阶段与可见身份属于业务规则；采集/播放与蓝牙属于媒体层；登录支付属于平台 SDK；角色皮肤和运营内容属于资源层。这种分离符合本样本的目录与平台桥组织，但不能以此宣称已经验证网易服务端也采用相同服务拆分。

如果要重建类似产品，应自行定义服务端权威状态机、麦位授权与恢复协议；本报告不能提供可直接兼容网易服务端的协议实现。

## Evidence 与覆盖

全部成功操作的完整 Evidence ID、文件、目标摘要在 [Evidence 索引](EVIDENCE.md)。核心锚点：

- 原包结构：`ev_c18c0ba2d43e1f3e63be51860479245d23f1044aa8ee96a86e6657d997a23554`。
- 原包 Android 图投影：`ev_f6b0fad96580a44d76d0f527ab5fbc46b43167d17040cc5815b8799822e7554d`；其 JNI bridge 候选是路径推断，不是解码出的真实调用。
- Lua 加密归档：`ev_2ce671059efbc451c50e17afe5ee64acfc032f30a28b811f99f6fd5f6b17d5ec`。
- C# 更新程序集：`ev_a535fce6deace2ac9fd21bda13e73f58b54be6e0bb9314e510e83fe03ae668d4`。

原包的完整 Android 读取与类搜索因 REA/JADX 输出超过 33,554,432 字节失败。后续生成仅含清单、资源表和原始六个 DEX 的静态分析副本，各成员字节不变，来源在 `code-view-provenance.json`。后续 JVM Evidence 绑定副本摘要，不冒充原包完整覆盖。类查询仅对 `com.netease` 命名空间返回完整匹配集，不能称为所有第三方类都已逐个审阅。

| 原问题 | 状态 |
| --- | --- |
| 市面相关产品与成熟样本选择 | 已回答；不提供未经证实的 MAU/市场份额排名 |
| 找到 APK 并核对样本身份 | 已回答；第三方渠道旧版，签名真实性未验证 |
| 模组分类和客户端分层 | 已回答到安装包组织、平台桥和部分代码级边界 |
| 经典狼人杀规则/完整 Lua 调用图 | 部分回答；正文加密，只有目录候选 |
| 服务端架构、信令字段、媒体协议 | 未回答；需要进一步代码恢复或经授权的运行时证据 |

没有安装或启动 APK，没有登录、连接游戏服务、抓取玩家数据；未修改 REA 源码、提交或推送。本地 APK、派生样本和 Evidence 是调查材料，不应提交到仓库。
