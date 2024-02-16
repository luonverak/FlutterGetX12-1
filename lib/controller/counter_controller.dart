import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  increase() {
    counter.value++;
    update();
  }

  decrease() {
    counter.value--;
    update();
  }
}
