void main() {
  var box = new Rect();
  //这里实际调用的set方法
  box.left = 100;
  print(box.left.toString());
}

class Rect {
  num _left;

  num get left => _left;

  set left(num value) {
    _left = value + 100;
  }
}
