import 'package:get/get.dart';

class OtherController extends GetxController {
  RxInt _count = 0.obs;
  RxInt get count => _count;

  increment() {
    count.value += 1;
  }

  decrement() {
    count.value -= 1;
  }
}
