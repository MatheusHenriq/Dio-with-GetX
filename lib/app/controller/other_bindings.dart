import 'package:apiconsume/app/controller/otherpagecontroller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class OtherBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtherController());
  }
}
