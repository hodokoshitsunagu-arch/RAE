# 百变大侦探 6.45.2：Unity / IL2CPP 子系统静态调查

## 结论与适用范围

**观察**：该 APK 包含 Unity IL2CPP 原生层、118 个程序集的类型元数据、HybridCLR API、可单独解析的 PE/CLI DLL，以及 Addressables 资源目录。Unity 元数据中的可见业务以多游戏入口、独立小游戏、下载与宿主桥接为主。

**推断（中高置信度）**：Unity 是 Android 宿主嵌入的多游戏执行与资源交付子系统，不能将它等同于整个剧本杀 App 的核心实现。存在 NativeClient / ClientActionHandler / Route 这类桥接命名，以及显式 showHideUnity、AndroidEnterGame、getGameBasicInfo、unityEventReceiver 等协议字段；下载场景和游戏模式主要对应飞行棋、五子棋、台球、派对等。

**未知**：Java 壳之后的完整剧本杀读本、搜证、投票、结算与社交架构；Unity 热更新远端业务 DLL 的实际内容；当前线上远端 catalog；各游戏真正可达性与运行行为。未运行 APK，未请求包内服务 URL，未将名字当调用链，未恢复 IL2CPP 原生方法体。

## 身份与证据分层

原始 APK：`Jubensha/apks/baibian-6.45.2.apk`；父任务提供的 SHA-256 为 `8522e582689c462c2746ffad8dcf7190e98b52d6d93c79468a239005fe8d9fe3`。本调查只读原包并在当前 unity 目录中保存成员。

| 来源 | 成员 SHA-256 | 来源位置 / 保留内容 |
|---|---|---|
| `assets/bin/Data/Managed/Metadata/global-metadata.dat` | `b3262d57c0a135387eb99136990cc62b5b4fdf12c22f905ea9974cc46d49c12b` | ZIP local header offset 292584962，解压后 22498144 字节 |
| `assets/aa/catalog.json` | `ba402032e976583f60f13e765b9f1b83bdd4f82ecbac1ff4863ce4f320938e12` | ZIP local header offset 269256062 |
| `assets/aa/settings.json` | `c17f6c8d3c0dcab90eee8a3f489ae95340d3b0cc90f44f34f059f93a2233889d` | ZIP local header offset 269274854 |
| `assets/Android/MonopolyLoca.dll` | `3804ef01fd38e8788190982bb62451ee5fffd7679b9f52b1c305eb7e27baaacc` | REA artifact 与 members 双重核验 |
| `assets/Android/Tools.dll` | `1ac8cef4966ac8ba48b106ba04b6c8875b5971511870535236bb6207c8bd4f05` | REA artifact 核验；members 超过资源预算 |

所有解压成员身份见 `members.json`。ZIP local header offset 指压缩包头位置，不是解压后字节映射；方法 offset 为解压后的具体成员内偏移，两者不能互换。

**REA Evidence（工具生成）**：

- `rea-monopoly.json`：`ev_28135d3ea15433bb730b211df141e853c723a8ac8bc65eb697c3cd846052250c`，`inspect_managed_artifact`。CLI header offset 520；分类为 managed / unity-mono / CIL / AnyCPU。PE machine x86 不等于 Android 执行架构。
- `rea-monopoly-members.json`：`ev_a776549dba3ea4ba9dd3f3aeb35c6d1828c806b25b36a7913d576be2f791eb6f`，`inspect_managed_members`。74 方法、524 静态 CIL call edges；coverage 为 partial。保留每个方法体文件 offset、IL SHA-256、指令 anchors 与元数据 token。
- `rea-tools.json`：`ev_ebff6e9e83fb2142516c70f2ace010544bda3fde8f74e036606533b8536a7859`，完整 artifact metadata；引用 Unity、Grpc.Core、Google.Protobuf、Unity.Addressables、HybridCLR.Runtime 等。
- `rea-tools-members.json`：`ev_a70254a752aaef831c0acf3d94b7e5ba11fb09b7f756cea8cbcd8cdcc6e7487c`。成员 inspection 不可用：metadata representation 超过 67108864 字节预算；无 types / methods / edges。未伪报已完成 CIL 分析。

**补充 shell 静态证据（非 REA Evidence）**：Python zipfile / JSON 解析；复用 `TaoTie/analysis/parse_metadata.py` 的 v31 record layouts，不修改该脚本，仅将输入 / 输出根目录改到本目录执行。该解析检查 magic、version、全部 header pair 边界、image→type、type→method/field 范围及 method declaring-type 一致性。结果保留在 `metadata-summary.json`、`metadata-selected.json`；后者包含选中类型与方法的成员内 offset。未保留全量约 19 万个方法的展示文件。

## 模块清单与可见边界

IL2CPP metadata v31：118 images、22957 types、192655 methods、102249 fields。这里多数属于运行库及插件，不能称为 118 个业务模块。

| 层 / 模块 | 可见类型及事实 | 判读与限制 |
|---|---|---|
| 多游戏入口与下载 | Assembly-CSharp.dll 143 类型；Party2DDownloadAsset、ACDownloadAsset、BCDownloadAsset、BTDownloadAsset、DreamDownloadAsset、GbDownloadAsset、PHDownloadAsset、BPDownloadAsset、UGDownloadAsset、RCDownloadAsset、LoadingScene | 独立下载器、游戏类型与场景命名的观察；不是完整 App 功能覆盖 |
| 宿主桥接与公共基座 | Tools.dll 550 类型；NativeClient、ClientActionHandler、Route、UnityIns、GameDownloadAssetBase、UnityGameBasicInfo | 元数据声明证明名称 / 字段存在；未建立这些类之间真实调用边 |
| 金龙独立玩法 | GlodDragonDll.dll 83 类型；GD_PrepareController、GD_GamingController、GD_Manager | RoundStart / CardPublic / DecisionStart / sendOutCoin / showGameResult；更像独立回合卡牌 / 金币玩法，未确认产品中文名称或经济规则 |
| 金龙入口层 | GoldDragonLocal.dll 9 类型；G_DragonDownloadAsset、G_DragonBottomBarController、G_DragonNavController | 入口、资源更新、导航与房间模型声明 |
| 地产 / 大富翁类资源入口 | MonopolyLoca.dll IL2CPP metadata 9 类型；补充 DLL 实际 TypeDef 11、MethodDef 74；AddressableManager、RoadResManager | 两种载体不能按名字直接当同一版本的方法体；REA 静态 CIL 能证明补充 DLL 的调用指令 |
| 2D 空间子系统 | GameMain、Map、World、WorldEditState、WorldPlayState、SlimGameManager、SlimScoketManage | 地图编辑、建筑放置、玩家移动、WebSocket 命名；不等同于剧本杀搜证地图 |
| 网络栈 | Grpc.Core、Grpc.Core.Api、Google.Protobuf、com.Tivadar.Best.HTTP、com.Tivadar.Best.WebSockets、websocket-sharp、Unity.Netcode.Runtime、Unity.Networking.Transport | 网络库随包存在；不能据此证明全部同时生效或服务端架构 |
| 渲染 / 动作 / UI | URP、Cinemachine、RootMotion、MagicaClothV2、spine、DOTween、QFramework、UIKit、TextMeshPro | 引擎与插件库存观察；运行路径未知 |
| 热更新接口 | HybridCLR.Runtime.dll 6 类型；RuntimeApi.LoadMetadataForAOTAssembly | 热更新能力存在；资源 catalog 同时指向 GlodDragonDll.bytes；实际应用策略仍需方法体或运行时佐证 |

`UnityGameType` 字段（metadata offset 19963452）包括 Monopoly、Dream、GoldDragon、Pet、PoolBall、Party、GoBang、VoiceGuess、AeroplaneChess、BraggingTavern、Party2D、UndercoverGuess、BombCat、SniperElite，以及 Type14…Type25 占位。不能将占位视为已经发布游戏。

`UnityGameBasicInfo`（offset 19963012）含 gameType、gameMode、gameName、dllName、bgImage；`UnityGameInfo`（19962660）含 IsLoaded、resVerNum、UpdateTwice、loadDll；`UnityIns`（19962836）含 gameInfos、currentMode、basicInfos、currGameType、needSwitchGameType。这支持“统一入口按配置选择游戏”的架构推断，但没有反编译此 DLL 的实现。

## 资源交付与实际 CIL 证据

settings 声明 Addressables 1.19.19，buildTarget Android；远端 hash 地址为 `http://static.mszmapp.com/upload/unity/Android/60200/catalog_1.hash`，缓存位于 `{UnityEngine.Application.persistentDataPath}/com.unity.addressables/catalog_1.hash`；本地 catalog 位于 RuntimePath。`m_DisableCatalogUpdateOnStart=true`，`m_maxConcurrentWebRequests=500`，catalog timeout 为 3。以上是打包配置值，未证明线上吞吐或有效 URL。

catalog 有 201 个 m_InternalIds，包含 11 个独立下载 / loading 场景入口：AeroplaneChess、BombCat、BraggingTavern、CommonGame、Dream、Gobang、Monoplay、PartyGame、PetHome、PoolBall、UndercoverGuess，以及 Scenes/GameEnter / Scenes/AndroidEmpty。catalog 同时声明两个 GoldDragon 远端 bundle，和 `Assets/GoldDragon/HotfixScripts/GlodDragonDll.bytes`、`Assets/GoldDragon/Scenes/GoldDragonGame.unity`。这里只解析明确的 InternalIds，不把尚未解码的二进制 key / entry 数据声称为完整依赖图；来源 index 保留在 `addressables-summary.json`。

REA 从 **MonopolyLoca.dll 实际 CIL** 读出以下指令边（不是 metadata 名称推导；不是运行记录）：

- `AddressableManager.Start` → `LoadAOTAssembly`、`setRemoteUrl`、member-ref `onEnterUnity`。
- `AddressableManager.load` → member-ref `CheckForCatalogUpdates`、`UpdateCatalogs`；内部方法 `GetDownLoadSizeAndKeys`、`startDownload`。
- `AddressableManager.GetDownLoadSizeAndKeys` → `LoadContentCatalogAsync`、`GetDownloadSizeAsync`。
- `<startDownload>d__16.MoveNext` → `DownloadDependenciesAsync`。
- `<LoadScene>d__22.MoveNext` → `LoadSceneAsync`；加载回调 → `UnloadSceneAsync`。
- `AddressableManager.LoadAOTAssembly` → `SendWebRequest`、`get_downloadHandler`、member-ref `LoadMetadataForAOTAssembly`，后者 MemberRef token `0x0a000041`、row offset 12032。

具体 call edge、caller body offset、IL hash、MemberRef signature 见 `rea-monopoly-call-selection.json`。member-ref 只保留声明 token / 名称，未加载解析外部程序集，不能扩展成远端调用完整目标。CIL 所属补充 DLL 与当前 IL2CPP AOT 类型布局有差异：例如补充 DLL 有 startDownload / LoadScene 协程，IL2CPP AddressableManager 元数据方法列表不同。**补充 DLL 证明包内携带该实现，不保证当前原生入口执行同一实现。**

## 与主线程 APK 证据交叉核对

主线程 REA package Evidence `ev_64fd7e6cf8a87d99729f37787ef61c3b3f208c1a43aa58d098672ff4edf6c300` 报告 Manifest 同时声明 UnityFeatureRouterActivity / LivingUnityActivity / UnityGameActivity、ReactActivity、普通 Gaming / DMGaming；Android 资源含剧本下载 / 解压 / 解析错误及阶段文案。此项由主线程提供，原始记录位于父目录 package.json；结合 Unity 游戏下载器佐证“多技术栈 App 里的 Unity 子系统”，仍不构成 Android 核心方法体的恢复。

## 覆盖检查

- Unity 业务程序集、主要类型 / 方法名字：已回答，来源范围为静态 metadata。
- 多玩法分类、宿主桥接、下载职责：部分回答，结构推断具备声明及 catalog 佐证。
- Addressables / HybridCLR 机制：部分回答，包内补充 DLL 的实际 CIL 提供更强静态证据，当前运行有效性未知。
- “Unity 是否承载整个剧本杀核心”：未能证明。现有证据更支持多游戏子系统；不能凭未找到名字断言核心不在 Unity。
- 真实调用链、线上配置、动态下发 DLL、加固后 Java 业务：未验证。

没有安装工具，没有启动 APK，没有修改原包，没有提交。
