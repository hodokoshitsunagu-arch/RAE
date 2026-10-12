# REA Evidence 索引

CLI REA 6.4.0；JADX 0.7.1；已有 OpenJDK 26.0.1；静态分析，没有启动目标 APK。

| 文件 | 操作 | Evidence ID |
| --- | --- | --- |
| [android-graph.json](evidence/android-graph.json) | `project_android_application_graph` | `ev_f6b0fad96580a44d76d0f527ab5fbc46b43167d17040cc5815b8799822e7554d` |
| [artifact.json](evidence/artifact.json) | `inspect_artifact` | `ev_c18c0ba2d43e1f3e63be51860479245d23f1044aa8ee96a86e6657d997a23554` |
| [ccvoice-class.json](evidence/ccvoice-class.json) | `inspect_android_class` | `ev_a975451738d237fa64a6bd80553316690ee785a049810fe99688a9077bf92327` |
| [ccvoice-control.json](evidence/ccvoice-control.json) | `inspect_android_method` | `ev_76efbc407018a3fa288c9e3a5e2a507617d2e6d8f72008ed465159230de057ce` |
| [ccvoice-load.json](evidence/ccvoice-load.json) | `inspect_android_method` | `ev_fdf9e38fbc2a8793c7cb84c0834687979e57729fbe0e6af2cd7c6b7aca186e09` |
| [ccvoice-references.json](evidence/ccvoice-references.json) | `trace_android_references` | `ev_61e653e3af6c32ab6119325611ccc345e20ec031efb0e73ae53a76413b47f990` |
| [ccvoice-static-init.json](evidence/ccvoice-static-init.json) | `inspect_android_method` | `ev_f93c568d5b73d3dd99b7f40331f53e2cf65acb2178945e5636d6369adb01f230` |
| [code-package.json](evidence/code-package.json) | `inspect_android_package` | `ev_0e35d056c7c692d7be923fc6a0d6b547921b7fbffc37d2bf22a75094399cfb8e` |
| [hotupdate-managed.json](evidence/hotupdate-managed.json) | `inspect_managed_artifact` | `ev_a535fce6deace2ac9fd21bda13e73f58b54be6e0bb9314e510e83fe03ae668d4` |
| [hotupdate-members.json](evidence/hotupdate-members.json) | `inspect_managed_members` | `ev_a752bfad214d808b4e5dbf02bb5f58c28ef74ae7afab2e83c397e59fa26869bf` |
| [launcher-class.json](evidence/launcher-class.json) | `inspect_android_class` | `ev_862828a43331ef31c4ad4573461f6f2bbd44a287468fc8b588caf98a01a159ab` |
| [launcher-open-game.json](evidence/launcher-open-game.json) | `inspect_android_method` | `ev_058fc724a6d738a138da0f44c30f2d5bd75def907421a83afccb746c607b9888` |
| [lua-archive.json](evidence/lua-archive.json) | `inspect_artifact` | `ev_2ce671059efbc451c50e17afe5ee64acfc032f30a28b811f99f6fd5f6b17d5ec` |
| [mainactivity-class.json](evidence/mainactivity-class.json) | `inspect_android_class` | `ev_fa966c0679e3eb7f7457721834ea9bf6f739df7d835339d1375056fe71df7fc2` |
| [mainactivity-oncreate.json](evidence/mainactivity-oncreate.json) | `inspect_android_method` | `ev_1a55dbcb99ef8a40e9d05b4ee866c309dafde9ad8c5d2bcf1aac5538a5510563` |
| [netease-classes.json](evidence/netease-classes.json) | `search_android_classes` | `ev_e4dfedf6a28d5f9018c1915efd882a8da3537ddc985accc3b59927efa939527c` |
| [ngvoice-class.json](evidence/ngvoice-class.json) | `inspect_android_class` | `ev_9bb7254987b98d53266af490c819035182eed127f8deadfc46e3882c71ec93a5` |
| [stubapp-attach.json](evidence/stubapp-attach.json) | `inspect_android_method` | `ev_4b3a8250b324938c6e7618ac20f50337c64bf182aa8e826c895695b000e30fe3` |
| [stubapp-class.json](evidence/stubapp-class.json) | `inspect_android_class` | `ev_d94b95c4b1cc2a4bae395b2968f9ce9e017d25da8573f7afb858f1be1550161e` |

失败记录 `package.json`、`package-retry.json` 为沙箱编译权限失败；`package-authorized.json`、`classes.json` 为原包分析输出超出 32 MiB；`appactivity-class.json` 为静态类未找到。这些文件不是成功 Evidence。

`code-view-provenance.json` 把代码分析副本中的全部成员 SHA-256 绑定到原包。副本遗漏游戏资产和 native 库；清单、六个 DEX 和 resources.arsc 保持原始字节。副本 Evidence 的 subject 是副本摘要，不能混同原包摘要。
