# 固定 RN club_party 4.82.21：CreateRoomPage 补充调查

父任务已将 APK 预下载配置指向的官方 RN 压缩包按配置 MD5 核对，并从 Hermes 94 容器拆出模块。本报告只读取父任务保存的 `disassembly/10000171,173,183,184,187,188,192,232` 两种输出；身份、下载时间、摘要与提取边界以父任务 RN provenance 为准。`*.pseudo.js` 是反编译器产生的**不可执行伪代码**，不能当作完整原始 JS。关键数字、属性写入和跳转已与 `*.hasm` 核对。以下 RN-* 为本地 finding 标签，不是 REA Evidence ID。

本报告不证明实际账户运行的 RN 版本、标签目录、账户实验和后台响应。Native 开房与 RN 开房并存；由父报告的 CreateChatRoomRouter.Y / util.e.h 实验 218817 分流确定入口，不能把 Native 页面称为所有入口唯一默认。

## RN-01：当前主页面及与 Native 页面重建的区别

`10000171.pseudo.js:1000` 之后是主观察者组件（hasm Function #13，内含大量闭包）。代码中存在 `yuliao→派对 / ktv→KTV / wanfa→玩法 / youxi→开黑` 映射（`:554`），从 `roomBasicConfig.tabConfigList` / `playTypeConfigList` 获取目录，server条目有 tabCode/tabName、playTypeCode/name/iconUrl/tagIconUrl/previewBackground。`10000184:429-447,530-552` 可见模型字段。

RN 交互有这些可直接用于演示的特征：

- 名称输入提示为“输入派对名称，AI帮你生成或润色”；`maxLength=15`（171 pseudo `8004-8038`；hasm `1939-1948`，明确 LoadConstUInt8 15→maxLength）。这也是输入 UTF-16 长度限制，不应扩展成所有名字在服务端恰好15个中文字符。
- 底部主 CTA 是“创建房间”，旁有“换背景”和“今日剩余…次”（171 pseudo `10264,10326,10344-10346`；hasm `3212-3230`）。名称 trim 后空串会触发 disabled 样式/属性；hasm `3178-3218` 也有与0比较的第二条件。**本次没完成该寄存器0比较源的完整数据流命名，不能仅凭剩余次数文案就断言第二条件必定是每日额度。** 模型184有 `RoomLimitConfig.surplusCreateRoomCount`（`:800-816`），关联仍需更深owner追踪。
- 名称为空时“生成/润色”处理取 `getRandomRecRoomName(classifyCode,playType.toString())`；已有非空名时走 topicPolish，结果 newTopic 回填（171 `7764-7900`）。不在 demo 调用真实 AI。
- 输入改变后500ms去抖调用低质名称检查，依据返回 isLowQualityTopic/reminderMsg显示提示，错误清提示；真正创建前另做校验（171 `5290-5404`）。这两条校验不要合并成任意本地字符串黑名单。
- wanfa、youxi 页在所读实现中使用 **5列玩法网格**，先向数据尾部补 null 占位到5的倍数，再FlatList numColumns=5（171 `8690-8743,9390-9477`）。有 icon、name、tagIcon；选中样式单独控制。与房内 `type=3` 开二级 sheet 不是一套行为。
- 点击玩法（171 `9598-9666`）写 selected playTypeCode；若用户未手动固定派对类型，按 `playTypeClassifyMappingList`映射派对类型，再把条目 previewBackground写入当前预览。点击不等于发建房请求。
- 切 tab时会核对选中 playType仍属于目标目录，并从先前选择恢复或选第一个；KTV分支赋固定目标，其余目录仍由数据验证（171 `4425-4705,4740-4818`）。不要在 demo 跨标签保留一个不属于新标签的模式。
- 附属“唱片机·开/关”与主玩法分开；切换时考虑 playModeBlacklist /互动玩法冲突，toast“当前互动玩法和唱片机冲突，无法开启”（171 `1011-1012,1237,7550-7634`）。functionCodes可出现 `live_song`（`:6038-6058`）。
- “发布瞬间”有条件显示，点击跳原生 `soul://ul.soulapp.cn/post/postMoment?pageFrom=create_room`（171 `9310-9351`）。模型helper `184:662-678` 条件是 enabled 且 joinCode=`PLANET:NAVIGATIONBAR:CREATE_ROOM`，不应放成每种开房入口固定按钮。

## RN-02：派对类型 picker 与可见性 picker

`10000192` 是派对类型 picker，入参 partyTypes/selectedType/onSelectType/onClose。默认 selectedType“闲聊唠嗑”，深灰底 `#282828`、圆角顶部、青绿色选中样式，选项为双列 flex-wrap（`:35-64`，宽度按屏宽-48再除2）。标题“派对类型”（`:176`）。点击先 onSelectType(item)再 onClose（`:90-116`）；没有额外“确定”提交按钮。hasm `90-121` 对应入参与属性读取；Function #3 的 `216-234` 明确先调用 onSelectType、再调用 onClose。

父页的实际回调（171 `10380-10455`）将 item.title写入类型，item.id以parseInt(String(id),10)解释；NaN保留为null，关闭sheet。派对类型名/代码映射有兜底：1唱歌听歌、2心动速配、4闲聊唠嗑、6趣味辩论、10兴趣交流、5情感故事、7热门话题（171 `3115`）。服务端有有效配置时不能把兜底清单当唯一完整配置。

可见性父页回调（171 `10485-10542`）保存 id：`all / noRecommend / friendsOnly` 等；标题“所有人”→“已公开”，“仅挚友可进”→“仅挚友”，其他分支→“已隐藏”；noRecommend记录选择时间。真正请求映射（171 `5270-5289`）“已公开”→0，“已隐藏”→1，其余该支→2。playType!=18时，会把仅挚友选择恢复为已公开/all（171 `4819-4870`）。这是**开房页的**条件，与房内状态页3=“仅特定私聊对象可进”不能混淆。

## RN-03：背景 picker

`10000188` 实现“房间背景”组件（`:1373`），三列FlatList（`:1520-1523`），分类经典/精美/活动限定（`:890-909`），包含cover图、选中框、预览入口及购买/拥有状态。条目文案有“使用中”“立即购买”“已拥有”“免费使用”（`:257-260`）；根据 paymentType、personalRightsState、serverTime、expireTime及选中态决定表现（`:251-672`）。

点击选择回调和购买回调是独立的，不能把所有付费背景点一下就当应用成功。预览是独立按钮/回调（`:404-425`）。该模块从父页接收背景资料；已核对模型字段包括 mediaId、backgroundUrl、previewBackgroundUrl、paymentType、itemIdentity、personalRightsState、personalRightsExpireTime、serverTime、canUse、buttonText、disableToast（184 `326-348`）。以上支持做可交互背景选择demo，但没有运行真购买流程。

## RN-04：创建的校验顺序、请求以及成功交接

静态调用链可清晰看到（171 Function #137 / pseudo `6290-6820`；hasm `8440-8505`）：

1. 调原生 bridge `SRNApiCreateRoomModule.asyncCall({eventName:'checkMicPermission'})`，JSON.parse结果；`code==1`转到“没有录音权限,请在系统设置开启!”提示分支（hasm严格比较/跳转与pseudo一致；不要按code名字猜1是成功）。
2. 调 `validateRoomTopic(roomTopic)`，成功后再 `createChatRoom(...)`；失败 toast错误消息并做相关清理，不能进房。
3. RN API模块187 `430-519`：POST `chatroom/validate/room-name` 到 HttpBaseDomain.post，form body `{topic}`；API envelope code=10001才返回data，其他throw msg（无msg兜底“网络错误”）。
4. 模块187 Function #26 / pseudo `650-872`、hasm `800-903`：POST `live/create` 到 HttpBaseDomain.clubparty，Content-Type form-urlencoded；body包括 `roomTopic,classifyCode,fansPush,hotTopicId,backgroundId,playType,fmCode,recTopicId,privateStatus,ext,functionCodes,bizExt`，有playExt时先JSON.stringify再加 `playExt`。这些键的存在由hasm PutNewOwnById逐一确认，不需要相信伪代码错误的 `undefined[fn]`调用表达式。
5. 某些可选 null参数归一为空串（187 hasm `829-850`）；调用层还把 `functionCodes`数组用逗号join、createroom_source与可选groupId放入ext JSON（171 `6210-6270`）。demo展示模拟payload即可，无账号请求。
6. code=40002时模块187显示受限账号alert及“我知道了”，并返回带 `_createRoomCode`/createResult=false的结构；父页会以 `isCreateRoomAccountRestricted`处理，不能在mock中把所有200级网络返回当房间创建成功（187 `135-146,760-840`；171 `6544-6590`）。
7. 成功后171发 `createRoomStartEvent`并bridge `joinRoom`（`:6615-6686`）。`joinRoom` promise有catch专门说明“容器销毁噪音，进房已由原生接管”（`:6712`）；这支持RN创建→Native房间交接，不等于纯RN自建完整语音房。

相关配置API（187）：GET `live/config/roomBasicConfig`（`:270-275`），GET `live/room-name/checkLowQuality?topic=...`（`:350-429`），GET `live/recTopic/list?roomId=&source=...`（`:1590-1630`）。目录、推荐名称、可建次数等真实返回未捕获。

## RN-05：视频分支是代码能力，不能宣称中国Android一定展示

模块183静态常量：VIDEO_TAB_CODE=`shipin`，CAMERA玩法码27，SCREENCAST玩法码28；matchVideoPlayType会要求下发 playTypeConfigList包含对应码，缺码返回null，不直接用常量绕过配置（183 `73-80,136-199`；171 `5085-5158`）。分支还检查平台可见性/feature config（183 isTabVisibleForPlatform / 171配置处理）。

视频页面代码包括摄像头权限、前后翻转、美颜/整蛊/背景、清晰度、竖横屏以及投屏流程；camera先refreshCameraPermission并shouldBlockCameraCreate，screencast又有系统picker、started/stopped监听及超时清理（171 `5685-5940,6880-7060`）。Android分支与iOS系统picker分支不同，未执行不能声称在Android看到苹果录屏picker。

模块173导出大量 `MOCK_* / buildMockVideoConfig / buildMockVideoTab`测试资料；**它们不是线上UI配置证据**。模块183 `102-120`的isVideoLiveMockEnabled在缓存初值null时设false；171 `2540-2590`也只有mock函数为true且允许视频tab时才动态加载173。不要用173中的“鎏金”等测试条目填成线上真实视频玩法。

模块232仅为NewOwnerTrackPoint事件封装，包含 `createroom_version:'3'` 与GroupChat_CreateRoom等；本次171依赖表没有232直接引用。其字符串不能证明主创建页一定展示某个新用户引导。

## 结论与剩余边界

已补足RN主创建页面字段、5列模式选择、派对类型立即回填picker、3列背景picker、名称校验→建房API→Native进房链路，以及配置/平台/视频mock边界。RN和Native不是两个版本的证据替代：它们是本 APK及其固定预下载组件内的不同路径。

仍未知：实际账号命中分流、当日服务端tab/玩法/付费背景目录、Native bridge真实权限结果、额度值绑定的完整数据流、每个RN组件的运行时像素、多人音视频。伪代码可协助阅读，具体控制流仍应回到hasm；没有把伪代码执行或重打包成Soul客户端。
