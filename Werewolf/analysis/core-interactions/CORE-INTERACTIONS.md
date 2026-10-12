# 网易狼人杀：核心交互静态恢复

2026-10-12，目标 `com.netease.lrs` 2.18.21。APK SHA-256：`5870d8ef15292cb7aedd91cd76fdc7c1b20f466cab5ec650692327e31a933373`。范围是原包经典房间、技能、投票和身份资源，不执行 APK、不连接游戏服务、不修改 REA。

这轮已经从“只有加密 Lua 目录”推进到**可解析的 Unity prefab 控件树、原始界面文字和角色/麦位 Sprite**。能确认具体交互的表现词汇与目标选择方式；不能确认服务端状态机、所有板子的规则或运行时阶段顺序。前端演示应是基于这些表现事实的独立重构。

## 证据边界

- **observed（包内观察）**：UnityPy 1.25.4 静态解析 UnityFS 和 serialized asset typetree，保留 member SHA-256、对象 `path_id`、控件树和 PNG SHA-256。不是运行时截图，也不是 Lua 反编译。
- **derived（格式解析派生）**：UnityFS 前有 8 个 ASCII 空格；解析视图从实际 `UnityFS\0` 起点读取。原 APK 与 member 未修改。Sprite 导出保留该 Sprite 的裁切区域及 Alpha；ASTC 解码产生 PNG，不能将 PNG 哈希误叫原包字节哈希。
- **inferred（推断）**：不同 prefab 和资源对应准备、身份、夜间技能、白天发言、放逐、结算的产品环节。它们的串联与生命周期未从源码证实。
- **unknown（未知）**：Lua 正文仍加密，IL2CPP 仅恢复元数据格式和有限字面量，未恢复业务函数/native 调用图；没有实际服务器消息或媒体房权限。

重用 REA 原包 Evidence：`ev_c18c0ba2d43e1f3e63be51860479245d23f1044aa8ee96a86e6657d997a23554`（包结构），`ev_2ce671059efbc451c50e17afe5ee64acfc032f30a28b811f99f6fd5f6b17d5ec`（Lua 加密归档）。本目录 UnityPy 的 JSON 与图像是**补充静态证据，不冒充新 REA Evidence ID**。

## 可直接定位的交互

以下文字均来自序列化 prefab 的默认 `m_Text`。可能是编辑器占位、某板子特例或由 Lua 动态替换，不代表本次执行过该界面。

| 环节 | 原包成员（`assets/ui/room_new/prefab/` 下） | 包内观察及关键 path_id | 演示映射 |
|---|---|---|---|
| 准备开局 | `roomui.ab` | `ReadyView` / `ReadyBtn`；文字“准 备”“已 准 备”“等待房主开始游戏”“开始游戏”“12人标准场” | 房主开始与玩家准备两种状态、准备人数、12 个玩家位 |
| 身份发放 | `identity.ab` | `6888461358697355652` = “身份发放”；狼人、任务、OK、等待；描述有明显“啊啊/哈哈”占位文字 | 单独的私密身份揭示层、确认后进入对局；不照抄占位描述 |
| 预言家选择 | `role/role3.ab` | `2098944388524580930` = “【点击头像】查验其他玩家是否为狼人”；`-3501067221141685291` = “检 查” | 点玩家头像→确认查验；避免默认为选中即执行 |
| 预言家结果 | `role_skill/skill_prophet.ab` | `-2203629167746743293` = “TA是好人”；`5505269686549550565` = “TA是狼人”；`Good_person`/`werewolf` 两个节点 | 查验输出阵营，而不是无证据声称返回完整身份 |
| 狼人目标 | `role/role2.ab` | `3377743323995878960` = “【点击左右头像】请选择爪击一名未出局玩家”；“杀”“带走” | 未出局目标选择与提交；具体 role2 数字映射仅由控件语义关联 |
| 狼人协作展示 | `role_skill/skill_werewolf.ab` | `-3880764200414349973` = `[No.1(you)]choice[No.2]...`；`8066687837261683060` = “TA被杀” | 可呈现队友目标选择；这条是英文占位默认文本，协商合并算法未知 |
| 女巫药剂 | `role/role5.ab` | `4241716561181112659` = “点击左右头像…选择一名未死亡的玩家使用【毒药】”；“毒药”“解药”“x1”“x0”“先选目标”“不能使用”“救ta” | 独立解药/毒药按钮、库存与不可用状态、先选目标再确认 |
| 女巫结果 | `role_skill/skill_witch.ab` / `skill_witch_revive.ab` | `-7859822944639692976` = “TA被毒杀”；`1509562547076928868` = “TA被救活” | 明确区分毒杀与救活反馈 |
| 猎人开枪 | `role/role8.ab` | `-3936566651928335070` = “点击选择左右头像…选择其他一名未死亡的玩家开枪，将其杀死”；`-4803562792128653223` = “开枪” | 选择其他存活玩家→确认开枪；触发资格不在该 prefab 中 |
| 白天发言 | `roomui.ab` / `logicbtn.ab` | `EndofSpeech`、`VoiceSpeakBtn`；“按住发言”“结束发言”“正在发言 | 允许插麦”“不可插麦”“禁止插麦” | 当前发言者、时限、结束发言、开麦反馈、插麦设置；媒体不接真实服务 |
| 出局权限表现 | `logicbtn.ab` | `8694071027906380299` = “你已经出局”；`6298776214659512022` = “结算前将进入观战频道...” | 出局座位与观战提示；不能据此声称服务端已严格隔离频道 |
| 放逐投票 | `dialogbox.ab` | `KillVote` 节点，“放逐投票”“投票”“取消”“确认” | 选中目标与确认动作分开 |
| 票型与放逐 | `pre_vote_public.ab` / `vote_settlement.ab` | `-3029479975588676122` = “票型一览”；`7136444731531957598` = “号票数最多！”；`8036459868875646714` = “放逐结果：【3号】玩家获得票数最多”；`7844435330733242279` = “弃票” | 展示投票者→目标、票数与弃票；平票处理仍是演示规则 |
| 警长分支 | `dialogbox.ab` | 参加竞选、警长投票、移交/撕掉警徽、顺序/逆序发言；还含“2.5票…第二晚出局”等明显特定模式默认文案 | 确认产品有警长相关界面；基础演示可明确省略，不移植特定模式文案 |
| 结算/再来一局 | `gameover.ab` / `roomui.ab` | `gameover.ab` 有独立 prefab；“再来一局”；图集有 `win_hr`/`win_lr`/`MVP_1` | 胜负与身份公开可独立演示；原版胜利判定未恢复 |

全部文字见 [prefab-texts.json](prefab-texts.json)。对象树在 `assets/ui__room_new__prefab__*/<path_id>.json`，对象类型及来源成员在两份 `asset-provenance*.json`，不要仅凭对象名称当作调用图。

## Lua 模组边界

[lua-core-inventory.json](lua-core-inventory.json) 保留 `fight/`、`ui/room/`、`ui/GameMode/`、`protol/` 和关键共享配置的可见 ZIP 中心目录事实。

- `fight/GameController.lua`、`GameSocketProcessor.lua`、`SkillController.lua` / `SkillSocketProcessor.lua`、`GamePlayer.lua` / `MainGamePlayer.lua` 支持对局、技能、玩家、信令处理拆分的推断。
- `ui/room/RoomView.lua`、`RoomSocketProcessor.lua`、`SpeakView.lua`、`LogicBtnView.lua`、`Seat.lua` / `SeatManager.lua` 支持房间表现与对局处理分开。
- `ui/room/SimplifiedServer/localserver.lua`、`LocalRoomSocketProcesser.lua`、`gameTriggerConfig.json` 表明包内有本地引导/简化服务器资源候选，正文加密，不能复用其执行逻辑。
- `protol/lrsProtos/game/lrsGameSC.lua`、room CS/SC、`net/WebSocketManager.lua` 的存在不建立具体消息字段、方向或权威性。

## 可用的原包视觉素材

图像导出保留透明度。`asset-provenance.json` / `asset-provenance-more.json` / `background-provenance.json` / `role-poster-provenance.json` 给出 APK/member/Object/PNG 链。

| 用途 | PNG 相对本目录路径 | 边界 |
|---|---|---|
| 默认玩家头像 | `assets/texture__1__playerhead/1_room_default_head.png` | 原包默认图；同一图用于多玩家时可加独立演示配色 |
| 完整身份海报 | `assets/role-posters/{lanren_lanren,prophet_prophet,witch_witch,hunter_hunter,idoit_idoit,villager_villager}.png` | 486×648，角色标题与完整插画；来源 `animationtimelinescripts/effectandshader/posterdissolve/*_atlas.ab`，已视觉核对预言家/狼人可展示；推荐演示身份揭示使用此组 |
| 职业图标 | `assets/texture__1__room__identity__identity_icon/t_room_idgrab_*_icon_01.png` | 包含 wolf、prophet、witch、hunter、idoit、villager；保留原拼写。部分是白色 mask，未经着色不适合直接人物展示 |
| 职业竖幅 | `assets/texture__1__room__identity__{prophet,witch,villager,hunter,guard,idoit}/t_room_idgrab_*_img_01.png` | 原包身份素材，部分是紫色 shader mask/背景层，不能视为直接可用的正常人物肖像；未证明实际此版本每次开局都用该图 |
| 麦位和夜间选人 | `assets/texture__1__playerhead/1_room_table_head_border_*` | 有 ready、taghorn、死亡、狼人选择、PK 标记 |
| 日夜字标/投票/技能 | `assets/texture__1__room/{Days_N,Days_d,room_vote_bg01,icon_kill,t_room_skill_seer_img_01}.png` | 日夜图只是字标；room_main_bg 等不少是透明/黑底装饰，不是场景插画 |
| 狼与红月全屏插画 | `assets/backgrounds/mainmenu_UI_scene_BG.png` | 540×1166，来源是登录背景 `assets/texture/1/login/mainmenu_ui_scene_bg/mainmenu_ui_scene_bg_atlas.ab`；用作演示氛围是设计选择，不冒充原对局场景 |

## 演示中必须明示的独立规则

以下未从加密 Lua 或服务器恢复，不能写成“网易原版规则”：

1. 固定 12 人：4 狼 + 预言家/女巫/猎人/白痴 + 4 村民。包内直接支持“12人标准场”文字和这些角色图，但不证明这一固定配比。
2. 先狼人、预言家、女巫的夜间执行顺序，以及各阶段具体秒数。
3. 屠边胜利、平票再次投票、弃票/票权、同一晚药剂限制、女巫自救限制。
4. 猎人非毒杀才可开枪、白痴被投翻牌且失去投票权。
5. AI 发言脚本、机器人目标选择、票型与结算结果。
6. 本地单机状态权威、角色观察视角切换。不要用公开席位直接暴露其他玩家真实身份；揭示仅用于结算或明确的演示观察模式。

这些规则可用于完整可操作演示；原包能支持的交互事实是选头像、确认技能、展示阵营/药剂反馈、轮流发言表现、放逐票型与出局表现。

## 未完成的逆向目标

经典对局的业务调用图、协议字段、完整状态转移、恢复/重连、真正麦克风权限、胜负算法仍未知。本轮没有 native 反编译环境，不安装 Java/Ghidra、不执行 APK，辅助 UnityPy 只位于隔离 `/tmp` venv。IL2CPP v31 字面量表解析结果见 `il2cpp-literal-candidates.json`；相关候选主要是压缩/平台库字符串，没有由此恢复经典对局业务逻辑。没有尝试密码穷举。
