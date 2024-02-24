import 'package:flutter_test/flutter_test.dart';

void main() {
  late ModelA test1 = ModelA(name: "Test 1");
  late ModelA test2 = ModelA(name: "Test 2");

  late List<ModelA> items = [test1, test2];

  void printCurrentPage(Pages page) {
    switch (page) {
      case Pages.test1:
        print(test1);
        break;
      case Pages.test2:
        print(test2);
        break;
    }
  }

  test('deneme', () {
    print(items[0]);
  });
}

enum Pages { test1, test2 }

class ModelA {
  final String name;

  ModelA({required this.name}) {
    print("initialized ModelA $name");
  }
}

class ModelB {
  final String name;

  ModelB({required this.name}) {
    print("initialized ModelB $name");
  }
}
