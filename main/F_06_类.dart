void main() {
  new Point(1, 2);
  new Point.fromJson({"x": 1, "y": 2});
  new NewPoint(1, 2);
  new ImmutablePoint(1, 2);
  ImmutablePoint.origin;
  Logger("test").log("msg");
  //---------
  int add(int a, int b) => a + b;
  var m = new MethodClass(add);
  var result = m.f(1, 2);
  print(result);
}

class Point {
  num x;
  num y;

  Point(this.x, this.y);

  //命名构造函数
  Point.fromJson(Map json) {
    x = json['x'];
    y = json['y'];
  }

  //重定向构造函数
  Point.alongXAxis(num x) : this(x, 0);
}

class NewPoint extends Point {
  NewPoint(num x, num y) : super(x, y);
}

class ImmutablePoint {
  final num x;
  final num y;

  //常量构造函数
  const ImmutablePoint(this.x, this.y);

  static final ImmutablePoint origin = const ImmutablePoint(0, 0);
}

class Logger {
  final String name;

  static final Map<String, Logger> _cache = <String, Logger>{};

  //工厂构造函数，工厂构造函数无法访问 this
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    print(msg);
  }
}

// 构造函数传入方法
class MethodClass {
  Function f;

  MethodClass(int m(int a, int b)) {
    f = m;
  }
}
