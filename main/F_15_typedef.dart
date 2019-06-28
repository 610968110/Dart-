void main() {
  var r = new SortedCollection(sort).f(1, 1);
  print(r);
}

//类型别名也可以用作类型判断，符合该格式的全都是该类型
typedef int MyName(int a, int b);

class SortedCollection {
  MyName f;

  SortedCollection(this.f);
}

int sort(int a, int b) => a + b;
