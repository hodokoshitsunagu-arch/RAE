# Soul 中国 Android 6.38.0：派对 UI 资源调查

## 证据边界

本摘录仅使用 `SOULCN/Soul-CN-6.38.0-arm64-v8a.apk` 经现有 JADX 解码产生的 `analysis/decoded/resources/res/`。所有下述路径相对于该 `res/` 目录，行号为解码后 XML 行号，**不是 Android 源工程行号**。它们证明 APK 中声明了什么布局和文案，不能单独证明账户当前会走哪个分支、服务器开放哪些玩法、实际交互已发生。没有运行 Soul，没有登录或调用服务端。

同目录 `resource-index.json` 保留核心布局控件属性和其直接引用的 drawable 来源；`layout-verbatim.txt` 为带源路径和行号的原文摘录。索引中的 `gone`/`invisible` 是 XML 初始值，不是最终显示规则。

为独立交付，`layout/` 保留上述索引的20个核心布局原文，`drawable/<原资源目录>/` 保留35个直接引用drawable名称对应的45个文件（含密度变体）；`sha256-manifest.json`给出这些**解码后文件**的SHA-256与原路径。`style-values.json`摘录布局直接引用的默认颜色/尺寸/文案/样式，保留源行号和无法解析项。它不是Android主题、夜间和运行时资源解析器；drawable递归引用、服务器资源及自定义控件实现不包含在该小型副本内。

## 创建房间：新版布局

`layout/c_vp_activity_create_chat_room_new_layout.xml`：

| 源行 | 确认的布局事实 | demo 可采用的结构 |
|---|---|---|
| 5–22 | 全屏 backgroundIv，另有初始 gone 的 PartyLottieAnimationView；前景蒙层 `#8c000000` | 背景铺满，叠加深色遮罩；背景动效需要代码配置，不能推断默认播放 |
| 23–43 | 全屏 ViewPager2；顶部居中 TabLayout，顶部间距 34dp、无 Tab 默认横线 | 顶部分页类别；类别文本和数量必须结合代码/配置 |
| 44–53 | 左上关闭图标 30×30dp | 左上关闭 |
| 54–85 | playTypeRv、gameTypeRv 两个水平 RecyclerView，均初始 gone；高度74dp，起始边距16dp；Barrier取两者底边 | 不同类别有不同的横向模式栏，不能把两个栏当作同时显示 |
| 86–93 | 自定义 CreateRoomPageRoomInfoView，左右16dp，位于模式栏下8dp | 中部房名/房间选项 |
| 94–104 | VerticalBannerView，高36dp，初始 gone | 活动/提示横条属动态内容 |
| 105–118 | 左下“换背景”，文字12dp，48dp宽，上方drawable | 独立背景切换入口 |
| 119–135 | “创建房间”，48dp高，圆角26dp，`#25d4d0`；禁用底色`#1affffff` | 底部绿色主按钮，左右16dp |
| 136–146 | createRoomRemainCountTv，无固定文案，按钮下8dp | 剩余次数需数据绑定，不能写成无上限 |

`drawable/c_vp_create_room_page_bg.xml:3–7` 的默认背景为线性渐变 `#283a50` → `#111d37`，角度270。这里是形状资源，不是远程照片。自定义背景与 Lottie 实际使用取决于代码/服务端。

### 房间信息区

`layout/c_vp_create_room_page_room_info_layout.xml`：

- `:5–30` 半透明容器 padding16dp；房名 `roomNameEt` 单行，**maxLength=15**；原文提示“输入派对名，AI帮你生成或润色”；14dp白字；输入底色`#33000000`、圆角8dp。
- `:31–51` `randomNameBtn`为55×26dp图片，资源`c_vp_create_room_name_ai_change`；清空按钮20dp、初始gone。按钮行为尚需代码，不能把图片名当请求语义。
- `:52–110` 提醒、分割线、横向话题列表(topicRv)及三点更多话题入口均初始gone；话题列表22dp高。
- `:112–166` 第二行40dp高，三个等分选项：`fmCodeView`、`partyTypeView`、`partyStateView`。XML未硬编码文字或初值。
- `:167–220` “创作大厅”入口48dp高，初始gone；副文案“超多派对模版，还可亲手打造你自己的挚友派对”。不能据此认定普通账号可见。

`layout/c_vp_item_create_room_classify_tag.xml:2–34` 是模式小卡：宽48dp，图片48×48dp、圆角8.5dp，选中描边2dp `#25d4d0`，下方10dp白字，角标22×12dp初始gone。它证明视觉状态，具体绑定及用途须代码确认。

`layout/c_vp_create_room_tab_indicator_layout.xml:10–45`：tab标题16dp，底部选中横线18×3dp；标题右上可放8dp角标文字（初始gone）。

### 派对类型弹层

`layout/c_vp_party_play_type_dialog.xml:2–39`：底板`#282828`，顶部圆角16dp，35×4dp拖拽条，标题“派对类型”，下方2列GridLayoutManager。`layout/c_vp_party_play_type_dialog_item.xml:2–11` 单元高40dp、圆角8dp；未选中文字`#bababa`/底色`#1affffff`，选中底色`#3325d4d0`/文字`#25d4d0`。**选项内容不在XML中。**

### 同包保留的旧版创建布局

`layout/c_vp_activity_create_chat_room_layout_old.xml` 同时存在：标题“创建派对”；“选择一个派对类型”(:61–79)、 “选择派对主题”(:80–99)、15字符房名(:110–123)、历史群名(:140–192)、“选择房间FM号/更多FM号”(:193–242)、“选择派对背景图”(:243–259)。其群组可见性开关容器初始gone，文案“允许所有souler加入该派对/关闭时，派对入口仅本群成员及其关注者可见”(:260–295)。底部“创建派对”按钮初始gone/disabled(:299–318)。**存在旧XML不代表当前默认入口；不能将新版与旧版控件拼成一张所谓原版截图。**

## 房内派对设置及入口

`layout/c_vp_layout_soul_house_bottom_block.xml:8–40` 将 `partySettingBtn` 和 `ivPlayFunc` 放在左下 `partySettingContainer`；两者36×36dp且均初始gone，分别引用 `c_vp_party_setting_icon` 和 `c_vp_icon_play_func`。确切切换规则需代码。`:42–62` 旁边是36dp高输入入口“说点什么...”。`:242–281` 同包还保留旧上麦按钮与新joinChatBtn/micBtn容器，不能据此推断某玩法使用哪一版。

`layout/c_vp_party_setting_bubble.xml:17` 包含明确迁移提示：**“原更多设置已移至左下角派对设置”**。它与左下入口的布局位置互相印证，但是否展示该提示、展示给谁不由XML确定。`layout/c_vp_dialog_room_more_function.xml` 仍保留旧“用户管理/派对管理”网格容器，不能当当前默认面板。

`layout/c_vp_dialog_party_setting.xml`：

- `:2–32` 面板标题“派对设置”，58dp高标题栏、左侧关闭图标30dp；`drawable/c_vp_13151a_corner_32.xml:2–8`定义底色 **#13151a、上方两角32dp**。
- `:34–52` NestedScrollView；顶部功能入口 `llFeatureEntrances` 为空动态容器。
- `:53–120` “当前玩法”卡68dp高、左右16dp；图标48dp；玩法标题15dp粗体、副标题12dp，右侧“切换”+16dp箭头。**XML的“当前玩法:KTV”和“玩法介绍玩法介绍玩法介绍”是占位文案，不证明KTV是默认玩法或正式说明。**
- `:121–144` 分节“用户管理”及动态条目容器 `llUserManageItems`。
- `:145–168` 分节“房间设置”及动态条目容器 `llRoomSettingItems`。
- `:169–192` 分节“其他设置”及动态条目容器 `llOtherSettingItems`。
- 卡片资源 `drawable/c_vp_0affffff_corner_24.xml:2–4` 为圆角24dp、底色`#0affffff`；分节标签12dp、`#99ffffff`。

三种设置条目外形在 `layout/c_vp_view_normal_setting_item.xml`（右箭头）、`c_vp_view_switch_setting_item.xml`（右侧45×26dp开关）、`c_vp_view_button_setting_item.xml`（右侧28dp高按钮）。都为15dp粗体标题+12dp灰色副标题。**设置条目的名称、顺序、权限和开关初值不在这些XML内。**

可单独关联的麦权限配置在 `layout/c_vp_fragment_apply_mic_setting.xml:10–36`：标题引用 `strings.xml:2659`“允许所有群成员申请”，说明引用`:2658`“关闭后，派对内所有成员将不可申请上麦”，45×26dp开关。`strings.xml:2615`还保留自助上麦说明：“开启后，群成员申请上麦、在麦位空余的情况下，无需群主同意可自助上麦聊天。自助上麦在部分玩法模式下不生效。” 其中后者必须再关联调用代码才可作为当前设置条目证据。

## 房内选择/切换玩法面板

`layout/c_vp_dialog_room_play_function.xml`：

| 源行 | 结构/原始文案 | 注意 |
|---|---|---|
| 6–36 | 36dp标题栏，“派对玩法”，左回退30dp初始gone | 是否从设置页返回由代码决定 |
| 45–61 | rvRecentPlay列表，左右24dp，下方0.5dp分割线 | XML未写“最近玩过”等标题，不能自行当原文 |
| 62–98 | “更多玩法”；右侧“全部玩法”及selector箭头 | 右侧是筛选入口的结构证据 |
| 99–106 | rvAllPlayFunc列表 | 玩法名称/数量/排序动态绑定 |
| 109–135 | 透明可点击遮罩maskOverlay、playFuncSelectPop及rvPlayFuncType，初始均gone；最大高200dp | 支持弹出分类选择的布局，精确事件需代码 |

`layout/c_vp_item_recent_play_function.xml:5–36` 为56dp图标+12sp名称，支持56dp“已开启”遮盖图标及26×16dp角标。`layout/c_vp_item_play_function.xml:5–80` 为48dp图标、15sp粗体名称、13sp两行简介、0.5dp分隔线；支持“已开启”遮盖、newTagIcon及动态linMark。该结构与创建房页的48dp模式小卡不同，demo应分别呈现。

`layout/c_vp_dialog_room_play_function_sec.xml:5–41` 另有36dp标题栏+单RecyclerView的二级列表容器。XML标题“ta上次建的派对”不能当实际固定标题，须检查代码覆盖。

## 给报告与 demo 的约束

1. 可以按以上精确样式重建**静态布局**，但报告必须把“APK布局声明”与“事件处理/请求/状态变更”分开举证。
2. 新建页顶部类别、玩法卡列表、玩法筛选分类、全部模式名称、房内设置条目均为动态或代码生成。资源本身不提供完整目录，不可凭文件名硬凑所有可用模式。
3. `c_vp_mode_*.xml` 只是包内玩法宿主布局；存在狼人、心动、H5等文件不证明创建页当前开放它们，也不证明玩法资源完整离线内置。
4. “派对类型”“玩法模式”“派对状态”有不同的控件与容器；在代码确认前不要把三者合并成同一个选项。
5. 从未观察本版本运行时屏幕或服务端返回。响应后的展示、服务器开关、账号资格、实验分流、付费资格、远程图和精确模式可用性仍需运行证据或有出处的配置。
