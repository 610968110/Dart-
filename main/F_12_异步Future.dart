import 'dart:io';

String data;

void main() {
  // 1
  getVersion().then((value) {
    print(value);
  }).catchError((error) {
    print('Error');
  });
  // 2
  getVersion2().then((value) {
    print(value);
  });
  print("main finish");
}

Future<String> getVersion() => new Future<String>(() {
      sleep(new Duration(seconds: 1));
//      throw new NullThrownError();
      return "1.0.0";
    });

Future<String> getVersion2() =>
    new Future<String>.delayed(new Duration(seconds: 2), () {
      return "1.0.1";
    });
