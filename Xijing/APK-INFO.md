# Xijing 安装包核心信息

核对日期：2026-10-12。版本、包名及 SDK 数值来自本地包中的编译版 AndroidManifest.xml；文件大小、SHA-256 和 MD5 对完整原始文件重新计算。应用展示名依据既有产品/来源记录，不把文件名当作身份验证。

## 戏鲸

| 项目 | 值 |
|---|---|
| 应用名称 | 戏鲸 |
| 原始包体文件名 | `xijing-3.56.1.apk` |
| 文件格式 | APK |
| 原工作区相对路径 | `Xijing/xijing-3.56.1.apk` |
| Android 包名 | `com.piaxiya.app` |
| 版本名称（versionName） | `3.56.1` |
| 版本号（versionCode） | `35601` |
| 文件大小 | 264,160,728 bytes；264.16 MB；251.92 MiB |
| minSdkVersion / targetSdkVersion | 24 / 36 |
| 包内 native ABI | arm64-v8a, armeabi-v7a |
| Base APK ZIP 成员数 / DEX 数 | 10,279 / 1 |
| SHA-256 | `ad679dd87079e5bc173e3abf64931f1da29ad3ad753c23702d68b901c70e5769` |
| MD5 | `0b91bd9b4079957339b24dde059fc19b` |

## 来源与证据

[戏鲸官网](https://www.aipiaxi.com/)；调查时安卓包链接为 [xiya-latest.apk](https://static.aipiaxi.com/app/android/xiya-latest.apk)。`latest` 地址会变化，本文摘要仅对应本次本地包。

[下载来源](source/provenance.json)、[包体报告](REPORT.md)、[清单分析](evidence/manifest-summary.json)

## 分发与核验边界

原始 APK/XAPK 不随本 Git 仓库上传；本目录只分发选定的报告、脚本、协议、证据和演示。本文文件名与摘要可用于核对另外取得的包体。ABI 是打包目录事实，不表示所有设备兼容；min/target SDK 是清单声明，不是运行测试。摘要、ZIP 成员和版本一致不等同于发行签名认证，本次没有安装或运行应用。
