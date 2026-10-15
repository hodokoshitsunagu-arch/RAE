# Soul CN 6.38.0 派对流程重建 Demo

原生 HTML / CSS / JavaScript，无依赖、无外部资源、无真实网络业务。研究面板可切换 **Native Activity / RN fixed 4.82.21** 开房分支，默认 RN；本版本星球导航的 RN 路由证据与完整分支说明见主报告。需要通过本地 HTTP 打开（浏览器通常禁止 file:// 加载 ES modules）。

```sh
cd SOULCN/demo
npm run serve
```

打开 http://127.0.0.1:6390/demo/ （服务根目录为 SOULCN，便于访问报告与静态证据）。在手机或桌面均可操作；桌面右侧研究面板可检查字段和模拟分支。

```sh
npm test
```

## 可走查流程

1. 选择 Native 或 RN 开房分支；Native 玩法栏横向滚动，RN 玩法栏为5列网格。派对 / KTV / 玩法 Tab → 选择玩法 → 修改派对名称（15个 UTF-16 代码单元上限，与 Android/HTML 输入长度约束一致）→ 派对类型 → 公开状态 → 原创背景 → 创建。
2. 研究面板开启远程开关后顺序为「派对 / 开黑 / KTV / 玩法」。选择「挚友小屋」显示「仅挚友」（同时需要示例远程开关开启）；选择「树洞模式」隐藏 FM 入口。Native 分支选择主题派对必须选择主题；RN 不复用这条未证实的按钮禁用条件。派对类型在两分支均点选即回传并关闭，没有额外确认按钮。
3. 标题校验与创建结果分为两个状态。Native 保留名称/classify/topic/background 的客户端按钮校验。RN 只据已证据实现 trim 后名称为空时禁用；另一个 strictEq-0 禁用值本次未命名，研究面板可显式模拟该结果，不声称它就是剩余额度。RN 创建模拟 checkMicPermission → validateRoomTopic → live/create → joinRoom。模拟权限不足、Native 在其他房间、标题拒绝或创建失败时，保留原配置，可修改后重试。
4. 成功进入离线示例房间 → 左下角派对设置 → 当前玩法 / 切换 → 最近使用、分类筛选、二级玩法目录 → 冲突确认 / 关闭确认。从普通模式首次开启 PK / 海龟汤时显示专属“是否开启…”与“下次一定 / 确认开启”，取消不改变房间。主模式与 type=2 附加功能分别保存；取消不提交；成功变化关闭设置容器。
5. 设置房间状态 → 点选即通过 RN 回调提交并关闭；关闭面板不提交。用户管理、部分远程页面仅展示证据边界。角色可在研究面板改变，以检查房主、管理员与成员的入口差异。
6. RN 背景弹层提供经典/精美/活动限定三栏、3列原创图、预览和免费使用/已拥有/使用中状态。所有归属状态与目录都是示例。付费栏只展示入口和未模拟说明，不支付、不应用未拥有付费背景。Native 使用简单原创背景选择。
7. 离开房间后保留开房草稿与最近玩法，可再次创建。

## 证据与示例边界

- 布局值参考 `../analysis/resources/layout-verbatim.txt`：创建 CTA #25d4d0 / 48dp / 26dp，设置容器 #13151a / 顶角32dp，卡片 #0affffff / 24dp，玩法图标48dp，最近56dp。
- 客户端字段、Tab codes、Native 基础验证及流程由 `CreateChatRoomNewActivity` 与 `CreateRoomPageRoomInfoView` 支持；玩法 ID 和 funcType 来自 `playmode/h.java`。
- RN 创建界面参考 `../analysis/rn/CREATE-RN-FINDINGS.md`，不将 Native gating 套为 RN 已证据规则。房间状态 RN UI 与点选立即回传语义来自 APK 内预下载 bundle（`../analysis/rn/status-readable.js`）。设置容器与入口权限参考 `PartySettingDialog` / `PartySettingContainerDialog`；玩法目录结构参考 `RoomPlayFunctionDialog` / `RoomPlayFunctionSecDialog`。
- **目录选项、排序、分组、默认值、背景、标题生成、服务端响应及部分资格规则均为明确标注的示例配置。** 派对类型名称/ID 使用 RN 内置兜底值：1唱歌听歌、2心动速配、4闲聊唠嗑、6趣味辩论、10兴趣交流、5情感故事、7热门话题；这不代表线上实时目录。Native classify=7 的主题要求来自客户端分支。
- **房间舞台、头像、图标、背景为原创 CSS 演示。** 此 Demo 是交互流程重建，不是已验证的像素级复刻；未登录或动态运行原 App，未复现真实语音、在线成员、游戏引擎、支付或后端。
- 对不同玩法的进行中限制，现有客户端存在专用 handler，不能用一个通用开关代表全部真实规则。研究场景演示速配/冒险之雷进行中不能关闭，以及音乐集市存在未演唱歌曲不能关闭；其他玩法的真实规则以报告证据为准。
- `model.mjs` 负责状态与事务，`app.js` 负责渲染与输入，`model.test.mjs` 检查关键状态语义。CSP 阻止业务网络连接。

## 本次验证

20项状态测试通过；Chrome浏览器9组流程走查通过，包含取消/失败重试、RN/Native分支、二级选择、角色入口、390/320宽度和报告链接。结果见 [verification.json](verification.json)，截图为 `preview-*.png`。它们仅验证本地demo。

`verification/browser-smoke.cjs`使用调用方已有的playwright-core和Chrome；可用`PLAYWRIGHT_MODULE`与`CHROME_EXECUTABLE`指定已有路径，不会安装浏览器。先启动本地server，再运行该脚本；状态测试原始输出保存在`verification/unit-tests.tap`。
