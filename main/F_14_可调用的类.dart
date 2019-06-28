void main() {
  var a = new A()("小王八");
  print(a);
}

class A {
  call(String name) {
    print(name);
    return "Hello $name";
  }
}
