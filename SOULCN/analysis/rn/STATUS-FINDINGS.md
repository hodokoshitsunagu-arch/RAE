# RN 房间状态弹层：固定预下载包的静态分析

## 来源与可读副本

对象是 `soul_rn_room_status_setting/soul_rn_room_status_setting.bundle`，页面标识 `soul_rn_room_status_setting`、配置版本 **4.60.72**。父任务保存的 `provenance.json` 记录APK固定URL、下载ZIP与member校验：bundle **33407字节**、MD5 `b44ded96205576b3d6ba504d62d0de6e` 与APK配置完全相符、SHA-256 `8d3b46e40ca19cb2581df36ddce98d9336d19c65631cd8ad7597e130c6e68629`。这是APK指定版本的资源代码，不是会话期间从真实账号观察的界面。

`status-readable.js` 为程序生成副本：前90个通用helper模块原文保留，feature模块600000090–600000094自动缩进、将非ASCII `\uXXXX` 转为相同Unicode字符。bundle末尾的Metro模块offset索引和数值尾部不是JavaScript，已原样移入 `status-format.json`；原始bundle不改动。转换脚本 `format-status.py` 可复现，`node --check status-readable.js`通过（仅语法检查，**没有执行bundle**）。下文行号均指该可读副本。父任务负责REA Evidence，本文不重复调用分析。

## 控件、文案与状态

模块600000091是视图，600000092是底部sheet，600000093为StoreProvider，600000094为状态store。入口模块600000090将视图嵌入StrictMode、StoreProvider和SafeAreaProvider（`:116–145`）。

| 状态 | 标题原文 | 副文案原文 | 出现与点击规则 |
|---|---|---|---|
| 0 | 所有人 | 所有人都可以看到并进入我的派对房间 | 初始列表第一项，默认selectStatus=0；点击回传0并关闭 |
| 1 | 关闭推荐分发 | 打开后本派对将不会出现在派对大厅及其他推荐场景 | 初始列表第二项；点击回传1并关闭 |
| 2 | 仅挚友可进 | 仅挚友小屋模式下可选，设置后仅挚友可进入派对 | 两个开关均通过字符串`"true"`比较才追加；标题/副文案可被globalInfo非空值覆盖；点击回传2并关闭 |
| 3 | 仅特定私聊对象可进 | 不会出现在派对大厅及其他推荐场景，仅特定用户可进 | 只有进入时selectStatus==3才追加；点击不会回传，也不会关闭 |

状态0/1与默认值源于`:1081–1098`；状态2的开关/覆盖源于`:1142–1216`；状态3条件与文案源于`:1217–1232`；点击公共逻辑源于`:273–308`。

**语义限制：**状态1原文是关闭推荐分发；不能把它改写为“只有自己可见”“密码房”或“任何外人都进不来”。从该bundle仅可确认客户端说明与回传值，无法证明服务器最终按什么准入规则执行。状态2默认副文案表达“仅挚友小屋模式下可选”，实际模式资格在bundle内不直接检查，而是由调用方`showOnlyFriendOption`与`globalInfo`共同决定。

## 调用方输入与提交边界

- `:257–265`：truthy的`props.privateStatus`送入`updateSelectStatus`；truthy的`props.showOnlyFriendOption`送入`updateShowOnlyFriendOption`；100ms定时调用sheet.open。这个effect没有依赖数组。默认0不会覆盖store，但store本来初始化0。
- `:267–271`：另一个仅首次挂载执行的effect调用`getConfigList()`。
- `:1142–1165`：读取桥接`globalInfo(["only_close_friends_can_switch"])`，再判断代码`"true" != O || "true" != this.showOnlyFriendOption`。布尔true不等同于字符串`"true"`；不可擅自把参数契约改成布尔。
- `:1164–1200`：允许展示时分别读取`close_friend_option_title`与`close_friend_option_subtitle`；非空则使用配置，空或缺失才使用表内默认文案。
- `:277`：选中圆点依据`h.selectStatus == n.status`，而不是列表条目的`selected`字段。
- `:287–292`：若`n.status != 3`，立即调用 **`NativeModules.SoulRnRouterPlugin.callNativeAfterPop("soul_rn_room_status_setting", props.rnPageIndex ?? "", {privateStatus:n.status})`**，然后`ref.close()`。此处无“保存”按钮、确认步骤或HTTP请求，也没有直接改变选中值的操作。
- `:447–460`：sheet关闭后通过导入路由模块的`pop("", {animated:false})`退出RN页面。

该提交仅到native桥接边界。桥接模块459/460等是外部共享依赖，本bundle未定义它们；不能声称已在此找到实际服务器写入、成功提示、失败回滚或整个房间权限的后端实现。native侧返回如何消费由父任务关联APK代码。

## 视觉与关闭交互

- 标题 **“设置房间状态”**，15字号、21行高、白色粗体；sheet `#282828`，顶部两角12，内容顶部padding28，底部SafeArea（`:462–495`）。React Native样式数值为布局单位，非截图物理像素。
- 每一选项占68高、水平padding16；主文15白色粗体；副文12、`#888888`，上间距6；右侧选中圆16×16、radius8、底色`#25d4d0`，未选中边框`#bababa`、1.2宽；0.5高分隔线`#ffffff1a`（`:314–428`、`:550–581`）。选中勾图是远程URI，仅记录，未下载；离线demo可用自绘勾替代并标记为重建。
- 允许点击遮罩关闭、向下拖拽关闭，显示拖拽条，颜色`#BABABA`（`:442–446`）。sheet组件遮罩`#00000099`、位于屏幕底部、拖拽条36×4/radius2（`:869–961`）。
- 展开与收起均以Animated.timing执行，默认250ms、`useNativeDriver:false`；向下拖拽`dy>100`则关闭，否则回到0；仅允许向下拖，向上位移重置0（`:773–856`）。这只是代码声明的动画，未做运行流畅度或视觉观察。
- 未见保存CTA；点选0/1/2是即时回传。点遮罩或下拉关闭不调用`callNativeAfterPop`，因此在此bundle边界仅退出sheet，不提交新状态。

## 已确认与未知

已确认：全部四种文案及它们的条件追加规则、状态值、调用方属性、桥接回传字段、关闭流程、布局与动画常量。没有打开app、触发sheet、读取真实globalInfo、请求后端或下载勾图。实际账号是否出现“仅挚友可进”、native是否接受并写入该状态、后端准入效果及远程配置最终文案仍未运行验证。
