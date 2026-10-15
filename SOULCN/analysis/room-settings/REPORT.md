# Soul 中国 Android 6.38.0：房内设置与玩法切换静态调查

本分报告仅依据本次 APK 提取的 `../java/`、DEX 类型索引及父调查保存的 REA/artifact 身份。`SOULCN/analysis/java` 是 JADX 生成材料，不是官方源码。下面的 `RS-*` 是本分报告的本地 finding 标识，**不是 REA Evidence ID**；主报告应关联本次 APK 的 REA Evidence/provenance。摘录保存在 `EXCERPTS.md`，其行号均对应此次原始 Java 文件。

未登录 Soul、未运行 Android、未调用真实房间 API；因此“代码显示”不能替代实际账号 UI、服务端目录和在线权限观察。整个 APK 有 hotfix PatchProxy，账户实验、远端开关、服务端列表及下载 RN 包还可能改变可见流程。

## RS-01：存在两条有证据的房内入口，不能把新 UX 当所有账号唯一默认

**静态观察**：`util/e.java:158-165` 的 `E()` 读取实验 `218596`，值为字符 `a` 才为 true。

- `soulhouse/bottom/BottomCommonBlock.java:2138-2143`：E=true 调 `adaptPartyNewUX()`，否则调用 `bindPlayFunc()`。
- 新 UX `1078-1100`：调整聊天输入“说点什么吧”，显示底栏 `R$id.jM` 图标；房主与其他角色使用两个 drawable。500ms 防重复点击，`261-272` 展示 `PartySettingContainerDialog`。
- 旧入口 `1198-1228`：底栏独立玩法图标 `R$id.Ht`，仅 `getIsOwner() && !isMelancholyRoom()` 可见；`isMelancholyRoom()` 的代码条件是 `chatRoomModel.createFrom == 4`（`1441-1450`附近，方法名的业务含义不进一步外推）。图标允许远程 `party_play_func_icon` 覆盖。
- 点击旧入口 `369-383`：若驱动尚无缓存 `PlayFunctionBean`，先取玩法目录；已有缓存则直接展示 `RoomPlayFunctionDialog`。
- 新入口不在底栏点击处限制角色；进入设置后按 `RoomUser.role` 决定区块，当前玩法卡片仅 role=1 可见。

**推导**：demo 可用“新 UX / 独立玩法入口”切换展示这两种代码路径，但这个切换是演示控制器，不能声称 Soul 原应用有手动实验选择器。开房 Native/RN 分流由父报告处理，不能用此分报告推出 Native 是唯一开房默认。

## RS-02：新设置是带子页栈的底部容器

`setting/PartySettingContainerDialog.java:404-552`：宽铺满、底部 gravity=80、高为屏幕 82%；初始嵌入 `PartySettingDialog`，子页通过 `s(fragment, tag, isBackButton)` 添加到 fragment back stack。按返回键/页内返回可以 pop 子页，拖动作用按当前页调整；初始页拖动关闭整个容器，子页是否关闭或回退受 isBackButton 与 drag helper 影响。不能把全部子页关闭动作一概模拟为关闭整个设置。

`PartySettingDialog.java:3342-3367`：初始化读取自己 RoomUser.role，分别组装快捷入口、当前玩法、用户管理、房间设置、其他设置，并注册玩法改变监听。

## RS-03：设置角色矩阵及可见文案

以下 role 数值来自实际分支；结合“群主中心”“房客”等文案，将 role=1 标作群主、role=3 标作管理是合理推导，后端授权未验证。列表中条件项不能保证每个账户都出现。

| 区块 | role=1（群主） | role=3（管理） | 其他角色 |
|---|---|---|---|
| 顶部快捷入口 | 派对信息、氛围背景、群主中心、分享派对 | 公告板、氛围背景、趣味中心、分享派对 | 趣味中心、氛围背景、分享派对、举报 |
| 当前玩法卡片 | 可见，有“切换” | 隐藏 | 隐藏 |
| 用户管理 | 连麦管理、禁言管理、自助上麦、禁止所有人上麦、进场消息合并、屏蔽进场动画 | 连麦管理、禁言管理、道具记录、进场消息合并、屏蔽进场动画 | 隐藏 |
| 房间设置 | 精彩瞬间（条件）、道具记录、礼物心愿单（开关与URL条件）、群聊小助手、设置房间状态、禁用虚拟管家（条件）、我的派对群（条件） | 隐藏 | 隐藏 |
| 其他设置 | 趣味中心、我的歌单、礼物特效屏蔽、省电模式（条件）、异常反馈 | 我的歌单、礼物特效屏蔽、省电模式、快速破冰（条件）、异常反馈、举报 | 推荐派对、我的歌单、省电模式、快速破冰（条件）、隐身斗篷（条件）、派对小组件（条件）、礼物特效屏蔽、派对大厅、不感兴趣（条件）、异常反馈 |

出处：`PartySettingDialog.java:1008-1040`、`2026-2060`、`2103-2120`、`2156-2179`、`3094-3123`；具体项创建位置见摘录。

关键文案/参数：

- 自助上麦：“开启后，房客可自助上麦”；提交 `{roomId, rightsCode: RightsFeatureModel.ASSISTANT_AUTO_MIRCO, turnOn:boolean}`；失败显示 failedMsg 并回退可见开关（`3220-3297`）。rightsCode 的常量最终字面值未在此分报告追踪。
- 禁止所有人上麦：“开启后，房客将不可申请上麦，只可群主邀请”；提交代理 f9(roomId, switchOn?0:1)，初始值另从服务端拉取（`1413-1426,3125-3189`）。
- 进场消息合并：“开启后，LV.4以下的用户，进房消息合并”；提交 `{roomId,state:开启?'1':'0'}`；失败 toast（缺消息兜底“操作失败，请稍后重试”）并恢复 UI；成功缓存状态，关闭发送 MSG_CLOSE_ENTER_MERGE（`1608-1730`）。
- 屏蔽进场动画：“开启后，LV.6以下的用户，进房特效不展示”（`3192-3217`）。
- 禁用虚拟管家：“开启后将禁用AI虚拟管家:麦麦”；远端 ChatRoomSwitches.aiManager 控制入口，customConfig.aiManager='1' 表示启用，禁用提交 '0'（`1509-1580`）。
- 礼物特效屏蔽：“开启后，将屏蔽1000Soul币以下的礼物”（`1874-2024`）。

## RS-04：房间可见性不是简单公开/密码二选一

`PartySettingDialog.G0():884-900` 状态标题：0=“所有人”；1=“关闭推荐分发”；2=远程 `close_friend_option_title`（默认“仅挚友可进”）；3=“仅特定私聊对象可进”；其他值显示“所有人”。

`P0():1312-1323` 打开 RN 页面 `soul_rn_room_status_setting`，参数包括 `privateStatus`、`showOnlyFriendOption`、`animated=false`、`transparent=true`。`showOnlyFriendOption` 是当前玩法检查值，不应硬编码始终可选。注册 RN callback，返回 `privateStatus` 后再提交；`2557-2569` 调 updatePrivateStatusV2，成功才更新本地 privateStatus 与文案（subscriber `689-732`）。父任务另对 APK 固定预下载配置匹配的 RN JS 分析，可补充真正状态页布局与流程。

API declaration：`api/ISoulHouse.java:2740-2742`，POST `live/room/updatePrivateStatusV2`，form fields `roomId,privateStatus`。

**独立旧类**：`soulhouse/SoulHouseSettingActivity.java:141-166` 文案“允许所有Souler加入派对”“关闭时，派对入口仅本群成员及其关注者可见”；点击切换布尔，setRoomDistribute(开启?'0':'1','0')，成功刷新图标。本调查尚未把该旧 Activity 与所有当前入口连通；不把它当新状态页的替代实现。

## RS-05：玩法目录是服务端模型驱动，客户端模式枚举不是当前完整目录

链路：`ISoulHouse.playSetupList()` GET `live/playSetupList`（`2043-2045`）→代理 `h30/g.r7():6307-6315`→`PartySettingDialog.A0():757-813` 或底栏 getPlaySetupList→`PlayFunctionBean.updateFuncOpenState(dataBus)`→驱动缓存→玩法 UI。

模型：`FunctionBean` 的 name/iconUrl/cornerMark/tagIconUrls/desc/type/techType/bizType/isOpened/childGameSetups 均由数据承载。`isTypeGroup()` 只有 type=3（`bean/FunctionBean.java:214-220`）；`isNativeGame()` 为 techType=1。`PlayFunctionBean` 有 playSetups、recPlaySetups、classifySetups；分类项是 `PlayFunctionTypeBean` 的 classifyName/classifyType/bizTypes；二级项来自 `ChildPlaySetups.playSetups`，二级 banner 来自 positionContentResp。

- 最近玩法行布局随条目数变化（1至4个的 span 分配，`RoomPlayFunctionDialog.java:506-548`），其具体条目与顺序来自 recPlaySetups，不能把本地示例最近玩法当用户真实历史。
- 默认列表将已开启项或含已开启子项的 group 稳定移动到前（`PlayFunctionBean.java:412-432`）；分类不等同于全局这个排序：它按分类 bizTypes 的顺序匹配顶层项目（`212-245`）。
- 分类标题点击出下拉弹层；选择分类后标题改为 classifyName，classifyType=0 显示排序后的全部项，否则按 bizTypes 过滤；点遮罩隐藏分类层（`RoomPlayFunctionDialog.java:224-385`）。
- 列表行包含 icon/name/desc/tagIconUrls；本人项目 isOpened 显示一种 mark，有子项目开启显示另一种 mark（`adapter/PlayFunctionAdapter.java:112-202`）。仅从 drawable 不能把字面内容宣称为实时截图观察。

## RS-06：一级项目、二级项目及打开/关闭/切换是不同路径

`RoomFunctionDialogHelper.u():287-520`：type=3 group 直接打开 `RoomPlayFunctionSecDialog`；二级页标题为父 name，纵向列表使用 childGameSetups.playSetups，顶部可有68dp banner，banner每5秒轮换、点击跳转 OperationModel.jumpUrl（`RoomPlayFunctionSecDialog.java:163-246`）。二级项目再回到同一个 helper。

非 group→特定派对互动互斥拦截→`function/b0.a()`→本地 handler。`b0.a` 的 JADX 输出明显控制流错误/空值条件破损，所以本报告仅依其末端可靠分支及独立 handler 建模，不声称已逐字恢复所有 techType 匹配。

可独立核实的通用 handler（`function/BaseRoomFunction.java`）：

1. 已开项目 close：先 d(dataBus) 判断能否关闭。允许时提示“确认关闭<name>吗？”（特定模式追加“玩法吗？”）；按钮“取消”“确认关闭”；确认 callback operation=1。
2. 新开项目 open：e(dataBus) 允许则 callback operation=2；不允许转 g()，有些玩法在 g 中显示其专属开场确认。
3. 与现有功能冲突：b0.D 先用 `ModeConflictConfiguration.g` 找出冲突已开项；非空调用 BaseRoomFunction.c，经 CommonUtil.q 检查后提示“确定切换为【<name>】？”；正文取“提醒：正在进行中的玩法将会被关闭，直接结算”或“提醒：当前正在进行中的玩法将被关闭”；按钮“取消”“立即切换”；确认 callback operation=3。

**不能把所有不同玩法点击都做成无条件替换**：有主玩法加附属功能的模型。`RoomFunctionSwitchManager.java:748-776` 对音乐集市 R、点唱机 P、随机话题 Q 更新开启状态，但不修改房间主 playType；其他普通切换会修改主 playType/房间 groupType，再增删相应 slice/block。

## RS-07：模式特有确认/进行中限制（仅列本次可清晰读出的分支）

| 模式/handler | 代码触发条件 | UI 文案/行为 |
|---|---|---|
| KTV / KTVRoomFunction | CommonUtil.H1(driver) 为真，d()返回false进入 f() | “比赛正在进行中，无法关闭模式，是否结束比赛？”；继续走结束比赛路径，不能直接当切换成功 |
| 海龟汤 / TurtleSoupRoomFunction | e() 固定 false，首次打开走 g() | “是否开启海龟汤游戏？”；“下次一定”“确认开启”，确认 operation=2 |
| PK / PkRoomFunction | e() 固定 false | “是否开启PK模式”；“下次一定”“确认开启” |
| 心动 / HeartBeatRoomFunction | HeartBeatModel.isStartHeartBeatMode() 为真，d false | “心动正在进行中，关闭后心动值与配对结果将不保留”；“确认关闭”“取消” |
| 欢乐预言 / PvpRoomFunction | d 固定 false，进入关闭提醒后检查 PkRoundInfo.stage==20 | “关闭玩法提醒”“关闭欢乐预言，将导致玩法关闭或提前结算”；助力阶段校验 toast “玩法已进入助力阶段，请结算后再切换。” |
| 冒险之雷 / j0 | ThrowingThunderInfo.canCloseGame() false，缺对象也false | “暂不支持关闭”“当前正在进行冒险之雷玩法，暂不支持关闭，请等本局结束后进行操作”“我知道了” |
| 速配 / g0 | 当前速配且 statusDTO.status==1 | toast“当前速配进行中，无法关闭速配模式” |
| 音乐集市 / p | MusicMarketInfo.songName 非空 | toast“有未演唱的歌曲，无法关闭模式” |
| 弹球类 / f | BulletGameInfo.state==3 | toast“对局进行中，暂时无法关闭哦～” |
| 拍战 / AuctionPkRoomFunction | 专用 d()/f() 判断 | “当前正在进行拍战，暂不支持关闭，请等本局结束后进行操作或者点击流拍，结束本局”；“取消”“流拍” |
| 仪式 / g | Ceremony处于不能关闭状态 | “暂不支持关闭”“当前仪式正在进行中，暂不支持关闭”“我知道了” |

限制：不要单靠所有“游戏中不可关闭”字符串就推定其一定可达。例 `function/c.java` 的 d()固定true，虽 f()含“正在游戏中，不支持切换模式哦”，基类直接 close 路径不会进入该 f()。`function/n0.java` 狼人 handler 对 enableClose==1 返回false，命名与直觉有反差，本次未验证协议真实语义，必须保留条件原文、不要按名字修正布尔。还有多处反编译推断警告，以上不是全模式运行状态穷举。

## RS-08：请求契约与回调，demo 不应伪装请求真实后台

下表 URL 均为打包 Retrofit declaration 静态观察，无真实网络流量。

| 操作 | API 与参数 | 代码依据 |
|---|---|---|
| 目录 | GET live/playSetupList，无声明参数 | ISoulHouse:2043-2045；g.r7:6307 |
| 普通开启/关闭 | POST live/game/switch，body `{roomId,playType,operateType}`；operateType打开'1'、关闭'2' | GameViewModel.p:735-744→g.a7→ISoulHouse:1959-1961 |
| 冲突切换 | POST live/playModify，body `{roomId,openType,openBizType,extParams?}`；openType取 FunctionBean.type，不是固定常数3 | GameViewModel.m:707-720→g.R9→ISoulHouse:2616-2619 |
| 功能开关 | POST live/function/switch，body `{roomId,bizType,operateType}`；已开则2、未开则1 | GameViewModel.i:685-695→g.u1→ISoulHouse:822-825 |
| 点唱机 | POST live/song/openMode，QueryMap `{roomId,type}`；未开1、已开0 | GameViewModel.o:723-732→g.s9→ISoulHouse:2515-2518 |
| 音乐集市 | POST music-fair/pattern/switch，body `{outerRoomId,outerRoomType:'chat_live',type}`；helper打开用1、关闭用2 | GameViewModel.q:747-757→g.ha→IRoomPlayApi:381-383附近 |
| PK | POST live/optCompetitionGameStyle form `{roomId,type}`；打开1、关闭0 | GameViewModel.c/k:643-650,698-704→g.e7→ISoulHouse:1984-1986 |
| 房间可见性 | POST live/room/updatePrivateStatusV2 form `{roomId,privateStatus}` | PartySettingDialog.g1:2557-2569→g.ra→ISoulHouse:2740-2742 |
| 自助上麦 | POST partyLevel/rights/switch，FieldMap `{roomId,rightsCode,turnOn}` | PartySettingDialog.z0:3283-3295→g.L→ISoulHouse:458-461 |

Helper 观察四组 LiveData 回调，收到结果后 dismiss 并调用 changed callback（RoomFunctionDialogHelper:220-285）；某些失败只显示 failedMsg，不更新模式。真实 UI 更新还依赖房间 IM/状态消息，`RoomFunctionSwitchManager.d` 由 roomModeInfo/playType/groupType/isOpen 决定具体 Slice 切换。Demo 用本地状态和“模拟成功/失败”来展示这些分支，这是重建选择。

## 覆盖结论

- 已回答（静态）：新/旧房内入口条件、新设置容器/子页栈、角色分组、当前玩法卡片、服务端目录模型、分类/最近/二级玩法 UI、通用及多个专属确认、主要请求参数。
- 部分回答：所有玩法互斥矩阵与进行中限制（已追踪 owner配置与通用调度，未运行每种游戏）；具体 drawable 像素以资源调查为准；RN 房间状态页由父任务报告补充。
- 未观察：任何实际账号命中实验结果、当日完整服务端目录、真实房间网络响应、多人/语音/付费体验、Android runtime截图、服务端最终权限。客户端本地分支不建立后端权限事实。
