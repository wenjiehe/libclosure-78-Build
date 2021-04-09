# libclosure-78-Build
Block底层源码


## 环境介绍

* Xcode版本：12.2
* macOS版本：11.1
* block源码版本：libclosure-78

## block源码地址

* [源码下载](https://opensource.apple.com/release/macos-111.html)


## 编译源码

1. 新增TARGETS


2. 在TARGETS：WJBlock下的Build Phases->Dependencies添加Blocks的依赖

3. 在libclosure-78-Build的目录下添加include文件夹，主要作用是文件找不到

4. 在TARGETS：Blocks的Build Settings->Search Paths->Header Search Paths加入$(SRCROOT)/include，并改为recursive

5. 在TARGETS：Blocks的Build Settings->Apple Clang - Preprocessing->Preprocessor Macros添加LIBC_NO_LIBCRASHREPORTERCLIENT

6. runtime.cpp中的#include <platform/string.h>替换为#include <string.h>

7. runtime.cpp中的#define memmove _platform_memmove注释掉

8. 编译成功不进源码：Build setting->Enable Hardened Runtime -> NO


## 效果


