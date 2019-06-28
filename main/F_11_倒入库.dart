// 如果你只使用库的一部分功能，则可以选择需要导入的 内容。例如：

// Import only foo.
// import 'package:lib1/lib1.dart' show foo;

// Import all names EXCEPT foo.
// import 'package:lib2/lib2.dart' hide foo;
// ---------------------------------------
// 延时加载库
// import 'package:deferred/hello.dart' deferred as hello;
// ---------------------------------------
// 指定库前缀
// import 'package:lib2/lib2.dart' as lib2;
// new lib2.Tests().XXX
// ---------------------------------------
//当需要使用的时候，使用库标识符调用 loadLibrary() 函数来加载库：
//greet() async {
//await hello.loadLibrary();
//hello.printGreeting();
//}