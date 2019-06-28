void main() {
  test(1);
}

void test(int s) {
  switch (s) {
    case 1:
      print("one");
      continue two;
    two:
    case 2:
      print("two");
      break;
    default:
      print("tother");
  }
}
