void main() {
  //在同一个对象上 连续调用多个函数以及访问成员变量
  new User()
    ..age = 18
    ..sex = "男"
    ..name = "大狗子"
    ..run()
    ..eat();


}

class User {
  String name;
  int age;
  String sex;

  void run() {
    print("$name is running");
  }

  void eat() {
    print("$name is eatting");
  }
}
