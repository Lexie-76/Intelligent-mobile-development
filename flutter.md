# flutter 简介

## flutter是什么
flutter是Google推出的移动**UI**框架，可在iOS和Android上构建高质量的原生用户界面。

## flutter特点
- 快速开发
flutter使用Google推出的Dart编程语言进行开发，既可以是AOT（Ahead Of Time）编译，也可以是JIT（Just In Time）编译，其JIT编译的特性使Flutter在开发阶段可以达到亚秒级有状态热重载，从而大大提升了开发效率。

- 性能优越
flutter使用自带的高性能渲染引擎（Skia）进行自绘，渲染速度和用户体验堪比原生。

- 精美**UI**
flutter内置众多精美的Material Design和Cupertino（iOS风格）小部件，开发者可快速构建精美的用户界面，以提供更好的用户体验。

## flutter框架
- Framework层
Framework包含日常开发所需要的大量API，由Dart实现，包含众多安卓Material风格和iOS Cupertino风格的Widgets小部件，还有渲染、动画、绘图和手势等。

- Engine层
Engine层由C/C++实现，是Flutter的核心引擎，主要包括Skia图形引擎、Dart运行时环境Dart VM、Text文本渲染引擎等。

- Embedder层
Embedder层主要处理一些平台相关的操作，如渲染Surface设置、本地插件、打包、线程设置等。

## flutter原理
flutter图形渲染过程：
- GPU的Vsync信号同步到UI线程
- UI线程使用Dart来构建抽象的视图结构
- 视图结构在GPU线程中进行图层合成
- 合成后的视图数据提供给Skia图形引擎处理成GPU数据
- 数据再通过OpenGL或Vulkan提供给GPU进行渲染

