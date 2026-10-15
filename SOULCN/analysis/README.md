# 分析材料导览

主报告在 [../REPORT.md](../REPORT.md)。

- `java/`：对该 APK 选择性反编译的原始 JADX 输出；行号属于本次生成材料。元数据注解和错误保留，不当官方源码。
- `resources/`：20个核心布局和直接引用资源的小型副本、布局摘录、样式解析、哈希及报告。
- `room-settings/`：新旧设置入口、角色矩阵、玩法目录、切换／专用确认、API调用的详细报告。
- `rn/`：APK配置引用的两个固定RN资源包及其来源；状态页为普通JS，开房页为多模块Hermes94。
- `evidence/`：真实 REA JSON、Android桥接不可用错误、RN配置及其他机器可读证据。
- `mode-catalog.json`：客户端声明表，非当日线上可用目录。
- `PROVENANCE.json`：目标身份、工具和证据来源。
- `source-manifest.json`：保留的代码、布局和反汇编文件的字节哈希。

`decoded/`和`dex-index.json`为本地大型可再生索引，已忽略；用户下载APK和第三方工具／二进制也不纳入源码提交。

## 重现（使用已有工具，不安装全局软件）

先核对目标APK SHA-256，再选择本机已提供的JDK和JADX。`tools/DecompileSelected.java` 使用JADX Java API，同一进程加载APK后只为选择的类生成代码。`selected-classes.txt`、`selected-more.txt`、`selected-third.txt`、`selected-fourth.txt`、`selected-fifth.txt`保留当次选择；若某类不存在或反编译不完整，须保留日志与错误，不推定其行为不存在。

```sh
# 变量需由重现者指向已有工具；输出建议选择新目录，避免覆盖原证据。
"$JAVA_HOME/bin/java" -Xmx8g -cp "$JADX_JAR" tools/DecompileSelected.java \
  ../Soul-CN-6.38.0-arm64-v8a.apk selected-classes.txt /absolute/new-output/java
```

资源解码命令为现有 JADX `--no-src -d /absolute/new-output APK`。`index_apk.py`是本地DEX格式索引器，记录成员digest、类／字段／方法／注解及code_offset；其输出是普通工具证据，不是REA Evidence。

Hermes工具取自 [P1sec/hermes-dec](https://github.com/P1sec/hermes-dec)，精确commit见`PROVENANCE.json`。`tools/split_hermes.py`读取bundle的模块标识、HBC header length和校验结构，再调用该工具的parser；保留完整模块index、选择边界和未解析carrier ranges。先设置`HERMES_DEC_ROOT`到该源码路径。`rn/disassembly/*.hasm`为指令，`*.pseudo.js`为不可运行伪代码，不对后者执行Node/REA-JS或当作真实源码。`rn/format-status.py`只格式化普通JS并保留非JS尾部，语法检查不执行目标代码。
