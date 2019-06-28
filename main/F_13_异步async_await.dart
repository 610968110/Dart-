import 'dart:io';

String data;

void main() async {
  // 1
  String result = await getVersion();
  print(result);
  print("main finish");
}

String getVersion() {
  sleep(new Duration(seconds: 1));
  return "1.0.0";
}
