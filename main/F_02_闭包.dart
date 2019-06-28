//打印log用

//Function makeAdder(num addBy) {
//  return (num i) {
//    var result = addBy + i;
//    print("result -> $result     addBody -> $addBy     i ->$i");
//    return result;
//  };
//}

Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

main() {
  //将2保存到了makeAdder的局部变量addBy上
  var add2 = makeAdder(2);
  //将4保存到了makeAdder的局部变量addBy上
  var add4 = makeAdder(4);

  //局部变量上+3,i就是3
  print(add2(3));
  print(add4(3));
}
