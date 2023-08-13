import 'package:get/get.dart';

// ignore: camel_case_types
class counterController extends GetxController {
  RxInt counterRx = 0.obs;

  void incrementCounter() {
    counterRx.value++;
    print(counterRx);
  }

  void Dicrement() {
    counterRx.value--;
    print(counterRx);
  }
}
