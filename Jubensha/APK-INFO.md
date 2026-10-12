# Jubensha 安装包核心信息

核对日期：2026-10-12。版本、包名及 SDK 数值来自本地包中的编译版 AndroidManifest.xml；文件大小、SHA-256 和 MD5 对完整原始文件重新计算。应用展示名依据既有产品/来源记录，不把文件名当作身份验证。

## 百变大侦探

| 项目 | 值 |
|---|---|
| 应用名称 | 百变大侦探 |
| 原始包体文件名 | `baibian-6.45.2.apk` |
| 文件格式 | APK |
| 原工作区相对路径 | `Jubensha/apks/baibian-6.45.2.apk` |
| Android 包名 | `com.mszmapp.detective` |
| 版本名称（versionName） | `6.45.2` |
| 版本号（versionCode） | `564502` |
| 文件大小 | 458,176,062 bytes；458.18 MB；436.95 MiB |
| minSdkVersion / targetSdkVersion | 21 / 35 |
| 包内 native ABI | arm64-v8a, armeabi-v7a |
| Base APK ZIP 成员数 / DEX 数 | 14,497 / 1 |
| SHA-256 | `8522e582689c462c2746ffad8dcf7190e98b52d6d93c79468a239005fe8d9fe3` |
| MD5 | `fb4f30e3c2c20d2a4248255af53bf660` |

## 我是谜

| 项目 | 值 |
|---|---|
| 应用名称 | 我是谜 |
| 原始包体文件名 | `woshimi-3.50.9.apk` |
| 文件格式 | APK |
| 原工作区相对路径 | `Jubensha/apks/woshimi-3.50.9.apk` |
| Android 包名 | `com.wzf.fan` |
| 版本名称（versionName） | `3.50.9` |
| 版本号（versionCode） | `281` |
| 文件大小 | 295,755,729 bytes；295.76 MB；282.05 MiB |
| minSdkVersion / targetSdkVersion | 21 / 35 |
| 包内 native ABI | arm64-v8a |
| Base APK ZIP 成员数 / DEX 数 | 11,663 / 12 |
| SHA-256 | `093a2df17162f9bdce8efefe66993b7e5928b3014d31af771b1fc2e520143f15` |
| MD5 | `3f5a4cbf616577a5c52cc815dbac38ac` |

## 来源与证据

百变大侦探：[官网](https://mszmapp.com/) → [应用宝下载入口](https://a.app.qq.com/o/simple.jsp?pkgname=com.mszmapp.detective) → 腾讯 APK CDN。我是谜：[官网](http://www.woshimi.cn/) 的安卓下载按钮 → xiyacs APK CDN。渠道版本可能不同，本文固定本地包而非最新商店版本。

[两包来源记录](analysis/source-provenance.json)、[项目说明](README.md)、[百变清单](analysis/baibian/AndroidManifest.xml)

## 分发与核验边界

原始 APK/XAPK 不随本 Git 仓库上传；本目录只分发选定的报告、脚本、协议、证据和演示。本文文件名与摘要可用于核对另外取得的包体。ABI 是打包目录事实，不表示所有设备兼容；min/target SDK 是清单声明，不是运行测试。摘要、ZIP 成员和版本一致不等同于发行签名认证，本次没有安装或运行应用。
