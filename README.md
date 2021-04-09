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

![target](https://github.com/wenjiehe/libclosure-78-Build/blob/main/libclosure-78/target.jpg)

2. 在TARGETS：```WJBlock```下的```Build Phases```->```Dependencies```添加```Blocks```的依赖

![blocks](https://github.com/wenjiehe/libclosure-78-Build/blob/main/libclosure-78/blocks.jpg)

3. 在libclosure-78-Build的目录下添加```include```文件夹，主要作用是文件找不到

![include](https://github.com/wenjiehe/libclosure-78-Build/blob/main/libclosure-78/include.jpg)

4. 在TARGETS：```Blocks```的```Build Settings```->```Search Paths```->```Header Search Paths```加入```$(SRCROOT)/include```，并改为```recursive```

5. 在TARGETS：```Blocks```的```Build Settings```->```Apple Clang - Preprocessing```->```Preprocessor Macros```添加```LIBC_NO_LIBCRASHREPORTERCLIENT```

6. runtime.cpp中的```#include <platform/string.h>```替换为```#include <string.h>```

7. runtime.cpp中的```#define memmove _platform_memmove```注释掉

8. 编译成功不进源码：```Build setting```->```Enable Hardened Runtime``` -> ```NO```


## 效果

![效果图](https://github.com/wenjiehe/libclosure-78-Build/blob/main/libclosure-78/preview.jpg)
