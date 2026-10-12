# SOUL 安装包核心信息

核对日期：2026-10-12。版本、包名及 SDK 数值来自本地包中的编译版 AndroidManifest.xml；文件大小、SHA-256 和 MD5 对完整原始文件重新计算。应用展示名依据既有产品/来源记录，不把文件名当作身份验证。

## Soul 国际版

| 项目 | 值 |
|---|---|
| 应用名称 | Soul 国际版 |
| 原始包体文件名 | `Soul-Chat%2C+Match%2C+Party_2.78.0_APKPure.xapk` |
| 文件格式 | XAPK |
| 原工作区相对路径 | `SOUL/Soul-Chat%2C+Match%2C+Party_2.78.0_APKPure.xapk` |
| Android 包名 | `com.soul.android.international` |
| 版本名称（versionName） | `2.78.0` |
| 版本号（versionCode） | `260921000` |
| 文件大小 | 121,843,916 bytes；121.84 MB；116.20 MiB |
| minSdkVersion / targetSdkVersion | 21 / 35 |
| 包内 native ABI | arm64-v8a |
| Base APK ZIP 成员数 / DEX 数 | 4,236 / 9 |
| SHA-256 | `071b2f441a1eff7b96a063fce4ed8b0c9415797da98d7037284649f26db797c1` |
| MD5 | `a1072e062030dd046b10fa51dbb8b3a1` |

### XAPK 安装组成

基础 APK：`com.soul.android.international.apk`。还包括：

- `config.arm64_v8a.apk`（config.arm64_v8a，37,297,418 bytes）
- `config.mdpi.apk`（config.mdpi，122,675 bytes）

安装时需要匹配的 base 与 split APK；XAPK 自身的摘要不同于其中 APK 的摘要。

## 来源与证据

用户提供的 APKPure 命名 XAPK；没有独立验证下载页面或发行签名。该包是 `com.soul.android.international` 国际版，不代表大陆版全部玩法。

[清单身份](analysis/manifest-identity.json)、[包体资源分析](analysis/resources-report.md)、[分析报告](analysis/ANALYSIS.md)

## 分发与核验边界

原始 APK/XAPK 不随本 Git 仓库上传；本目录只分发选定的报告、脚本、协议、证据和演示。本文文件名与摘要可用于核对另外取得的包体。ABI 是打包目录事实，不表示所有设备兼容；min/target SDK 是清单声明，不是运行测试。摘要、ZIP 成员和版本一致不等同于发行签名认证，本次没有安装或运行应用。
