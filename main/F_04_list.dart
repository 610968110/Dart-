import 'dart:collection';

void main() {
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    // list中可以添加函数和方法
    callbacks.add(() => print(i));
  }
  //执行添加进去的函数
  callbacks.forEach((c) => c());

  //不可改变的list
  var constantList = const [1, 2, 3];
//  constantList[0] = 0;  // 这句代码会抛异常

  //直接添加
  var set = new HashSet.from(callbacks);
}
