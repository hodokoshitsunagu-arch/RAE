# 百变大侦探 6.45.2 核心交互合同（静态资源恢复）

本轮真正恢复了资源 ID → 原始资源名称 → 混淆 ZIP 成员路径 → 二进制 XML 控件及文本引用。这比仅搜索全局字符串池更强，但仍不等于恢复点击处理器、后端状态机或实际运行画面。`contracts.json` 是前端演示可消费的精确证据与设计边界。

## 证据身份与方法

- 原样 APK SHA-256：`8522e582689c462c2746ffad8dcf7190e98b52d6d93c79468a239005fe8d9fe3`。
- REA 包体父证据：`ev_8648e87908cbdb79d46103a132e46b902f27e38077c8d561a8f4552156a2ea4a`；实际 inventory 父证据：`ev_9852a76aaae2440b39b4ae7f452177ab0776dc387aa8611051bc6f61fc4f8113`。
- 本轮 `parse_resources.py` 和 `build_contracts.py` 是普通本地 shell/Python 格式解析，不是新 REA 操作或 Evidence；所有条目连接已有 REA inventory 与原 APK。member offset 是解压后成员内部位置，不是 ZIP 文件绝对偏移。
- 解析 46,329 个资源项（计入配置变体），501 个匹配 layout 成员；`resource-table.json` 保留 type/key/ID、配置原始 bytes、资源项偏移与字符串偏移；`layouts.json` 保留控件树深度、节点与属性偏移、typed value、引用资源解析及成员 hash。
- 不运行 APK、不访问业务服务、不重复网易壳后 `GamingActivity` 的失败读取。现有可读 DEX 不包含普通对局实现；业务调用链继续未知。

## 可直接观察的核心界面

下面全部父证据为上述 inventory ID。偏移为十进制。

| 核心面 | 原资源名 / ZIP 成员 | 控件或原始文案（member offset） | 可确认范围 |
|---|---|---|---|
| 对局宿主 | `activity_gaming` / `res/hS6.xml` | 玩家列表 `rv_players` (4180)、`tv_timeline` (4572)、`tv_finish_round` (6748)、`tv_start_vote` (7088) | 宿主安排了玩家、时间线和阶段/投票相关操作槽；实际按钮启用守卫未知 |
| 底部核心操作 | 同上 | `cl_voice_switcher` (10356)、`cl_send_message` (11176)、`cl_play_book` (11916)、`cl_clue` (12876)、技能 `cl_skill` (13836，默认隐藏) | 包内明确是语音、消息、剧本、线索，并不是演示凭空定义导航 |
| 读本 | `fragment_base_playbook_v6` / `res/pg8.xml` | `dvp_content` (2448)、角色引导栏 (2588)、搜索容器 (4132)、底部 `PBBottomViewV6` (6852) | 分页内容、角色导航、搜索与底栏槽；剧本数据、渲染器和授权未知 |
| 章节选择 | `fragment_playbook_chapter_selecter` / `res/lbI.xml` | “选择章节”(880)、`rvChapters` (1080) | 有章节选择器；解锁规则未知 |
| 线索检索 | `fragment_clue_v6` / `res/79H.xml` | `etSearch` (1876) 中“搜索线索”字串 @1335、tab (3472)、ViewPager (4076)、“猜你想搜”字串 @1350 | 搜索、分页分类与建议词界面可确认；不能由此推定搜证算法 |
| 线索卡片 | `item_game_clue_v6` / `res/TNK.xml` | 标题(1644)、`tv_clue_tag` (2164) 引用“私有”、`ivCollect` (2764)、`tvNote` (2984) | 私有状态标签、收藏及笔记呈现存在 |
| 线索详情 | `fragment_clue_detail_v6` / `res/DI-.xml` | `ivClueDetail` (2192)、`tvClueDetail` (2352)、`tvThought` (3036)、按钮槽(3456) | 文本、图片、视频槽及想法区存在；实际公开按钮由动态构造还是另页承载未知 |
| 笔记列表 | `fragment_game_note_list` / `res/GCc.xml` | “双击可以编辑哦~”(1516)、“是否公开”(1796)、`ssvOpen` (1956)、“创建笔记”(2140) | 可公开的笔记与双击编辑提示直接观察 |
| 笔记编辑 | `fragment_playbook_add_note` / `res/x85.xml` | 保存图标(1256)、引用区(1480)、输入框(2196) | 笔记含引用区与输入/保存结构；事件处理未知 |
| 多题投票 | `fragment_vote` / `res/ZDm.xml` | 倒计时(1888)、`NoScrollViewPager` (2092)、上一题(2632)、下一题(2972)、完成槽(3240) | 投票具有多题分页与计时呈现；不能简化成唯一“选凶手”控件 |
| 投票公布条件文案 | 同上 | 字符串 @751：“投票完成\n倒计时完成后或者全部用户投票后公布结果” | 文案明确陈述两种公布条件；服务端真的如何计时、收齐和公布尚未验证 |

`activity_gaming` 还有 `res/sbR.xml` 配置变体。V6 线索与详情也存在变体。这里使用一个具体成员作为引用样本，不能声称设备实际会选中此配置。

## 状态和隐私合同

以下是 `resources.arsc` 内可观察原文与 ID，不是已恢复状态枚举。

| 名称 / ID | 字符串位置 | 原文 |
|---|---:|---|
| `playbook_five_stage` / `0x7f120cf7` | 441795 | 正常情况下剧本有5个阶段，阅读剧本、自我介绍、集体搜证、相互询问、结案投票 |
| `prepare_state` / `0x7f120d91` | 395440 | 准备阶段 |
| `distribution_character_state` / `0x7f120508` | 395804 | 分配角色阶段 |
| `choose_playbook_state` / `0x7f120347` | 474976 | 选择剧本阶段 |
| `lock_character` / `0x7f120947` | 496838 | 锁定角色 |
| `please_input_idea2` / `0x7f120d40` | 304504 | 快记录下你的笔记吧(*如果公开笔记，私有线索也会公开哦) |
| `search_clue` / `0x7f120efb` | 429802 | 搜证 |

**derived**：角色、剧本章节、线索可见性、笔记引用与案件投票应作为不同状态资源；界面上共享房间宿主。特别是私有线索通过笔记公开存在关联副作用，应避免演示里只切换笔记公开标记而遗漏线索。

**inferred**：玩家/时间线/房间内操作可能由共享对局状态驱动；布局槽和名称支持这一解释，但壳后方法尚不可读，不能证明具体 Store、ViewModel、Presenter 或网络事件归属。

**designed**：前端演示采用原创案件/角色/文本、单浏览器本地状态、准备加五阶段、可检索线索、公开笔记确认、多题投票与模拟公布。搜证点数、推进按钮、章节锁、其他玩家完成、投票统计、证据物品都是演示设计，并未从原 APK 还原。语音状态是视觉模拟。

**unknown**：真实阶段守卫、主持权限、并发角色占用/交换、搜证消耗与分配、线索权限接口、题目数据模型、计票/平票、重连状态合并、RTC路由、后台协议、线上可达性与动态剧本页面。

## 视觉资产和颜色

从原 APK 选取 8 个静态图标/背景，位于 `assets/`。`asset-provenance.json` 保留源 resource ID、member、资源项偏移、完整 SHA-256、bytes、配置 bytes、输出绝对路径；像素资源内部引用 offset 为0。选择最大打包 raster 变体是演示取样，不代表 Android 实际密度选中结果。

原始游戏字色资源可确认：ct1 `#e6ffffff`、ct2 `#a6ffffff`、ct4 `#99ffffff`、ct5 `#ffffffff`；结算高亮 cb1 `#fffff489`。读本标题在 layout 中直接为 `#ff2f2c38`。因此游戏壳存在白字/半透明白字与黄色强调，读本文本也存在深色变体；页面完整背景、远端地图与角色美术无法只凭这些颜色复刻。

## 复现与检查

从仓库根目录执行：

```sh
python3 Jubensha/analysis/baibian/core-interaction/parse_resources.py
python3 Jubensha/analysis/baibian/core-interaction/build_contracts.py
```

格式解析遍历每个 chunk 并校验 header/size/边界、完整 child chunk 终点。当前样本所有选中 layout 成员成功解析；资源 table 实际 type chunk flags 都为0；脚本遇到未支持 sparse/offset16 会明确失败。解析记录不是 Android 实际运行验证；没有宣称恢复壳后方法或原服务端实现。

补充角色准备证据：`item_game_player_wait` / `res/db1.xml` 内直接有角色头像 @2064、房主标记 @2244、角色名 @2588、准备状态 `tv_prepared` @3008、角色选择 `llSelect` @4828、不能选择提示 `tv_can_not_select` @5568。仍无法从布局证明多人竞争与锁定判定实现。
