# 戏鲸 Pia 戏交互：APK 静态证据与演示边界

调查对象：戏鲸 Android 3.56.1，包名 `com.piaxiya.app`，SHA-256 `ad679dd87079e5bc173e3abf64931f1da29ad3ad753c23702d68b901c70e5769`。本页复用此前 REA 6.4.0 + JADX 的证据，并解析相同 APK 的资源表。未执行 APK、登录、连接业务 API 或修改原始证据。

## 核心结论

**观察：Pia 戏相关声明与资源支持“房间 / 麦位 → 选本 / 角色 → 开 Pia / 演绎 → BGM / 进程 / 录制 → 杀青 / 伙伴评价”的交互要素清单。** 箭头顺序是为了演示整理的设计假设，不是已恢复的 APK 调用图。加固使业务方法与事件处理器不可见；不能声称本演示复制了戏鲸的实际屏幕布局、默认配置、时间同步、网络协议或后端逻辑。

本次有用增量是资源表中的原始中文交互文案与布局资源名称，比单凭 Activity 名更细，但仍只证明它们被打包。名称、文案、声明均可能属于旧版本、不同房间模式、不同玩法或不可达分支。

## 证据身份

| ID | 来源 | 性质与检索边界 |
|---|---|---|
| `ev_57bae33db790c42ad9ca35c75940da34dad7ca44a0537685a2330c078b0327a0` | `evidence/package.json`；REA inspect_android_package | APK 身份与完整 Manifest 的直接静态观察 |
| `ev_e7c6b988dd88b9943722d7127977561f4e6c4481c714f487056cef2e25d1fa21` | `evidence/classes.json` | REA 查询只暴露 31 个类；complete 是该查询覆盖，不是业务源码恢复 |
| `DER-PIAXI-MANIFEST` | `evidence/manifest-summary.json` 与 `AndroidManifest.xml` | 从上面的 Manifest Evidence 派生的组件事实，非新增 REA Evidence ID |
| `DER-PIAXI-ARSC` | `evidence/piaxi-resource-pools.json` | Python zipfile + Android RES_STRING_POOL 格式解析；记录 pool chunk_offset、index、value。来源是 APK 的 `resources.arsc`；非 REA Evidence ID |
| `DER-PIAXI-ASSETS` | APK archive inventory 与本次 JSON 格式解析 | assets 动画/资源载体事实；非 REA Evidence ID |

资源池 `chunk_offset=12` 是全局值池，26,444 个字符串；`chunk_offset=846856` 是资源 key 名称池，27,655 个字符串；另一个类型名池为 22 项。新增 JSON 保存按 Pia、房间、麦位、BGM、剧本、录音等关键字筛选的结果，不是完整 APK 所有文本。UTF-8 使用 surrogatepass 保留 Android 池中的代理字符，输出 JSON 用转义保存原值。当前没有建立 key 与 value 的 resource entry 绑定；下表引用 pool index，不将相邻项当作映射关系。

## 可证实的交互要素

| 要素 | 直接观察 | 可用于演示的推断 | 未知 |
|---|---|---|---|
| 房间入口 | Manifest `CreateRoomActivity` label=创建房间、`BeginPiaActivity` label=开场Pia戏、`RoomMainActivity`；值池 11048 创建房间、11955 开场Pia戏、12309 房间模式 | 可提供房间外入口和 Pia 房间主场景 | 真正页面顺序、导航栈、权限、入口默认模式 |
| 选本与剧本阅读 | `PiaXiSearchActivity`、`ArticleDetailActivity`、`ArticleActActivity`；值池 12491 搜索剧本ID或名称、14475 选本开Pia、14599 阅读剧本后，点击按钮开Pia吧 | 可提供搜本、选本、阅读、开戏交互 | 搜索 API、排序、原本数据、独立阅读页与房内阅读页的连接 |
| 待 Pia / 轮本 | 值池 12093 待PIA、11759 已加入待pia、11952 开启轮本Pia戏、12691 暂无待Pia剧本、12726 更改剧本排序；key 池 19709 `item_pia_pending_banner` | 可提供本单、待演队列和切本 | 谁能添加/排序、自动切本条件、队列同步协议 |
| 麦位 / 静音 | `RoomMicService` 声明 foregroundServiceType=`microphone|mediaPlayback`；值池 10530 上麦、10531 上麦参演、10549 下麦、13247 申请上麦、13718 自由上麦、14593 闭麦 | 麦位、上麦、下麦、开闭麦按钮都有静态依据 | 本玩法麦位数量、申请审批、网络授权、麦位与角色的绑定 |
| 抱人上麦 | 值池 13222：现在你可以直接将观众抱上麦位，无需等待对方同意。被抱用户的麦克风默认关闭，需手动开麦。抱人成功后公屏会发送通知。 | 可把管理员抱人后的状态建模为“已上麦且静音”，提示用户开麦 | 哪个模式和权限可以执行、是否在当前版本全部场景生效 |
| 角色与轮读 | 值池 14191 请选择你的角色、11028 切换角色、11745 已关闭角色提示、11794 已开启角色提示、11747 已关闭麦序轮读、11796 已开启麦序轮读、11877 幕序轮读、14738 麦序轮读；key 池 19713 `item_pia_role_selection`、19929 `item_script_role` | 可提供角色选择、角色提示开关与按麦序轮读设计 | 角色识别算法、角色 / 台词数据结构、自动轮读时机 |
| 剧本进程 / 时间轴 | `ScriptTimeline*Activity`；值池 11109 剧本时间轴、11117 剧本进程、13393 确认跳转Pia戏进度吗？、13310 取消使用时间轴确认；key 池 21187 `view_script_audio_time_line`、21188 `view_script_dot` | 可演示当前段落、手动推进、可选时间轴、跳转确认 | 自动跟读/高亮算法、房主与成员同步、计时来源、离线/在线支持 |
| BGM / 环境音 | `ScriptTimelineBgmActivity`；值池 11098 剧本BGM、12318 房间音乐、11946 开启背景音、10970 关闭背景音、13219 环境音效、10697 人声音效、12818 本地BGM；key 池 19014 `item_bgm_volume`、11616 `iv_bgm_play`、11617 `iv_bgm_switch` | 可提供背景音播放、切换、音量和环境音控制 | 实际混音路径、服务端/客户端播音、远端一致性、延时与音轨格式 |
| 开始 / 录制 | 值池 10999：准备好的话，点击【开始】进行Pia戏吧！Pia戏过程会录音，仅供自己收听学习哦！；11960 开始录音、10879 停止录音、12081 录音已结束，正在保存；`RecordManagerActivity` label=我的录音、`RecordingReleaseActivity`、`RecordingEffectActivity`、`RoomPlaybackMainActivity` | 可演示录制状态和“我的录音”结果 | 上述陪练文案是否也用于多人房间、本地/云端录制的授权与生命周期、录音是否默认启动 |
| 跳转与覆盖 | 值池 14298：跳转Pia戏进度，将从该时间点开始录制，新录音将覆盖原录音 | 可在含录制的演示中把跳转做成明确确认操作 | 实际覆盖粒度、录制文件格式、是否适用于房内多人 Pia 模式 |
| 杀青与评价 | 值池 10151 Pia戏·沉浸式杀青、13225 现在还不能杀青哦，再Pia一会吧 ~、13592 结束前下麦或离开，可能会影响PIA戏杀青；key 池 25445 `xj_room_pia_settlement_title`、25440 `xj_room_pia_settlement_subtitle`、25441–25443 mine/partner/script tabs、19894–19895 伙伴/统计 item | 可提供演绎结束后的时长、伙伴与剧本结算展示 | 时长门槛、贡献计分、结束权、互赞规则、奖励触发 |
| 退出与恢复 | `RoomService` foregroundServiceType=mediaPlayback；通知 Receiver 声明 `room_notification.delete` / `room_notification.into`；值池 12539 收起房间、13447 离开房间、11998 后台/收起房间的入房通知 | 可区分收起和离开；可显示悬浮返回入口 | 实际 Android 后台保活与通知行为、断线重连、所有退出确认分支 |

全部资源值索引属于 `DER-PIAXI-ARSC` 的 `chunk_offset=12`；资源 key 名索引属于 `chunk_offset=846856`。所有组件事实属于 Manifest Evidence 及 `DER-PIAXI-MANIFEST`。

## 不能从名称恢复的架构

观察：Manifest 中房间服务、麦克风服务与录制入口分开；APK 包含 Agora RTC/RTM、网易云信及媒体相关库。推断：客户端至少有“房间状态与内容 / 实时语音 / 录制播放 / 消息公屏”这些候选职责。未知：谁拥有 authoritative state、哪个 SDK 承载公屏、语音与 BGM 是否走同一轨道、是否存在 server mixing、业务消息类型、真实服务边界。

`fragment_room_pia`、`fragment_room_pia_beta`、`fragment_room_pia_quick`、`item_mic_pia_beda`、`item_mic_pia_quick` 均出现在 key 池（18771–18773、19610–19611）。这证明多个资源命名并存，不能证明 beta/quick 是当前主流程或互相继承。演示应选择一个明确的设计流程，并标示其设计假设。

观察：`pia_new_gameplay_tips.json` 为可 JSON 解析的 Lottie 结构，包含 fonts/chars，无顶层 text layer；`pia_exercise_record_btn.json`、`read_complete.json` 也是动画 JSON。这些不是业务流程配置或服务端 schema，不能从动画文件名推出状态机。

## 演示建议与范围标签

建议演示闭环：进入一个示例 Pia 房间 → 从本单选本 → 上麦并选择角色 → 开始 → 阅读示例台词 / 推进段落 → 控制 BGM / 静音 → 结束并查看本次演绎。每个控制可关联上面的证据，但整条顺序与视觉排版属于重构设计。

推荐默认采用静音的本地音频预览、模拟伙伴与独立示例剧本；本演示的声音、聊天、计时、麦位与演绎进度均是本地状态，不声称接入真实戏鲸 RTC、后台或真实多人通信。若增加浏览器麦克风权限、真实录音，须在使用时清楚区分“浏览器本地录音”和“APK 已验证机制”。

| 调查问题 | 状态 |
|---|---|
| Pia 戏产品交互要素 | 静态证据部分回答；文案及资源均已保留 |
| 真实核心业务方法、流程顺序、状态机 | 未恢复；加固业务类不可见 |
| 麦位 / 角色 / BGM / 录音的真实联动 | 部分文案关联可观察；代码及运行时未知 |
| 原版 UI 像素、布局、导航和手势 | 未验证 |
| 演示闭环 | 可据这些交互要素设计；实现验证应单独记录 |
| 真机、登录、RTC、服务器与安全性 | 未验证 |

## 模式差异专项核对

完整匹配文案另存 `evidence/piaxi-mode-texts.json`，可追溯到同一资源值池索引；这是 `DER-PIAXI-ARSC` 的补充筛选，不是新增 REA Evidence。

| 模式候选 | 观察与边界 |
|---|---|
| 自由走本 | 本次完整全局值池精确查找“自由走本”没有匹配；观察到“自由上麦”(13718)、“未自由上麦，不能单独开闭麦位哦”(12795)。自由上麦不证明自由走本模式。手动推进台词是演示设计。 |
| 麦序轮读 / 幕序轮读 | 11747/11796 为麦序轮读关闭/开启反馈；14738 为麦序轮读标题，11877 为幕序轮读。两种名称同时存在，不能合并为同一算法或推断具体轮读规则。 |
| 角色提示 | 11745/11794 为角色提示关闭/开启反馈。证明存在开关文案，不证明角色自动识别或默认开启。 |
| BGM 时间轴 / 音效点 | 12003“当前BGM间隔位置无法打点”；11031 切换音频保留原时间点并删除超范围异常点；12887 文本改变后的异常时间点提示；13977/13978 打时间轴提示。资源支持 BGM/剧本打点关联，不证明音效时间戳精确格式、渲染或同步算法。 |
| 录音字幕 | 13955/13956 为上下轨道字幕的角色要求，13961 为角色字幕提示。12044/12802 为 AI 字幕与字幕识别失败提示。跨模块资源无法证明这些字幕用于 Pia 房录音；更可能为视频配音编辑候选，仍须代码或运行时归属证据。 |
| 剧本进程 / 跳转 | 11117 剧本进程，14298 跳转进度将从该时间点录制并覆盖原录音。演示中的主持人进程控制、缓存切曲以及成员跟随均为明确设计选择，未恢复其真实实现。 |

**这些名称与文本不能证明在 3.56.1 默认启用、属于同一个房间模式、当前可达或符合运行行为。** 原创剧本、双人房、主持 BGM 操作、浏览器本地麦克风效果和录音可组成独立演示；应在演示说明中持续标明设计选择与实证边界。
