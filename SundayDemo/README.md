# SundayDemo

a iOS 单元测试之XCTest详解
b iOS 在状态栏显示FPS，CPU和内存信息。字体颜色会根据阈值进行颜色变化，性能差的时候字体会变成红色，性能一般的时候会变成橘黄色，阈值可配。
c iOS 合理利用Clang警告来提高代码质量: 用语句强制开启或者关闭某个警告
d iOS Bundle详解 

什么是Bundle？
A bundle is a directory with a standardized hierarchical structure that holds executable code and the resources used by that code.
Bundle就是一个标准化分层化的路径，这个目录保存了可执行代码以及这些代码执行的时候需要的资源文件。

Bundle存储哪些文件？
文件          作用
Info.plist   一个iOS App运行所必需的文件，这个结构化的文件里存储着App运行需要的各种因素（例如：需要使用地理位置，支          
             持的设备等等）
可执行文件     必需的文件，程序的入口点
资源文件      包括图片，图标，strings文件，nib文件，配置文件等。通常数据文件是可以本地化的，也就是对不同语言进行适配

Bundle中资源查找的顺序:
全局资源（非本地化的资源）
Region－specific 的资源（国家相关）（本地化）
语言相关的资源（本地化）
程序开发语言相关（一般就是英语）

