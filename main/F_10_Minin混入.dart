void main() {
  //与接口不同，可以直接实现具体功能，而接口的函数不能有逻辑
  var it = new ITTeacher();
  it.work();
  it.sayChinese();

  var english = new EnglishTeacher();
  english.work();
  english.sayChinese();
  english.sayEnglish();

  //同名的函数以最后一个为准
  english.say();

  //作为接口有同名函数，依然以minin最后一个为主
  new SupperEnglishTeacher().say();
}

abstract class Worker {
  void work();
}

abstract class SayChinese {
  void sayChinese() {
    print("会说中文");
  }

  void say() {
    print("中国口音说话");
  }
}

abstract class SayEnglish {
  void sayEnglish() {
    print("会说英文");
  }

  void say() {
    print("英国口音说话");
  }
}

class ITTeacher extends Worker with SayChinese {
  @override
  void work() {
    print("上课");
  }
}

class EnglishTeacher extends Worker with SayChinese, SayEnglish {
  @override
  void work() {
    print("上课");
  }
}

//---------------
abstract class Say {
  void say() {
    print("会说所有口音");
  }
}

// 只有SupperEnglishTeacher能用Supper
mixin Supper on SupperEnglishTeacher {
  void supper() {
    print("我啥都会");
  }
}

class SupperEnglishTeacher extends Worker with SayChinese, SayEnglish {
  @override
  void work() {
    print("上课");
  }
}
