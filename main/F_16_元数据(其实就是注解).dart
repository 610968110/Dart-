// 声明元数据，必须在行首
library todo;

// 定义元数据
class todo {
  final String who;
  final String what;

  const todo(this.who, this.what);
}

@todo("me", "gan")
void main() {}
