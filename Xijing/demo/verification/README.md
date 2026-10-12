# 演示验证记录

日期：2026-10-12，Asia/Tokyo。通过 Codex 内置浏览器操作本地演示，未操作真实戏鲸客户端。页面截图与验证对象均为本次重建前端。

- [desktop.png](desktop.png)：1280×720 桌面初始房间。舞台 core 控件可见，侧栏 scrollHeight=clientHeight=640。
- [mobile-390.png](mobile-390.png)：390×844 的默认阅读视图，舞台可展开，BGM 控制固定在底部。
- [mobile-320.png](mobile-320.png)：320×568 小屏阅读视图。
- [settlement.png](settlement.png)：已实际开始、结束演绎后的本地统计弹窗。
- [browser-checks.json](browser-checks.json)：操作观察与验证边界。
- [source-digests.json](source-digests.json)：交付代码和音频文件摘要。

状态测试 6 项通过。受控浏览器验证包括上麦、认角、准备、BGM 缓存/播放/确认跳转、身份权限、录音生成、杀青、同音轨换本归零、退出和重新入房。

最终媒体复验：64 秒 BGM 正常播放；跨曲跳转后的媒体 duration=48、currentTime≈4.3、paused=false；同曲换本后 currentTime=0、paused=true；本地录音生成约 154 KB 的 Blob、试听控件与下载链接；结束演绎统计为 00:11、角色台词数 5。这些数值属于演示本次操作，不是戏鲸真实指标。

未使用真实麦克风，未验证物理设备、人声效果、用户听感或下载文件落盘。等待下载事件的工具调用超时，未把链接生成当成下载完成。没有原版 UI、RTC 或真实多人验证。
