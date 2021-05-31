import 'package:apiconsume/app/controller/usercontroller.dart';
import 'package:apiconsume/app/repository/usercomments_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class UserBindings extends Bindings {
  void dependencies() {
    Get.lazyPut(() => UserController(Get.find()));
    Get.lazyPut(() => UserRepository(Get.find()));
    Get.put(Dio());
  }
}
