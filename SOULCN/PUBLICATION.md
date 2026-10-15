# GitHub交付范围

本目录发布报告、demo源码/测试、选择性反编译Java、文本XML资源、RN状态JS、Hermes指令/伪代码、来源和摘要清单。

按工作区AGENTS.md的“Never commit binaries”规则，原始APK、下载ZIP、Hermes原始字节码、提取的PNG/WebP及截图保留本地，不提交。它们的身份、字节数、哈希、来源或引用仍保留在相应清单；**清单列出的文件不保证全部包含于GitHub交付**。demo图形由CSS绘制，不依赖这些二进制文件。

大型可再生`analysis/decoded/`、`analysis/dex-index.json`以及完整REA Evidence JSON也保留本地。公开的`analysis/evidence/rea-*-summary.json`记录完整Evidence ID、摘要、限制及完整文件SHA-256；摘要不是完整的canonical Evidence记录。

报告中的265项源码/资源哈希是本次本地保留材料的完整性记录，其中的二进制资源有意排除；XML/Java/JS/反汇编等文本文件仍可在仓库审阅。

本目录不包含REA工具仓库源码、其他研究目录或其Git历史。公开报告的行为结论来自本次目标及摘要匹配的固定RN依赖，不使用其他Soul版本补足未知项。
