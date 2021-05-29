import 'package:apiconsume/app/controller/homecontrolle.dart';
import 'package:apiconsume/app/repository/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'otherpagecontroller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put((HomeRepository(Get.find())));
    Get.put(HomeController(Get.find()));
    Get.put(OtherController());
  }
}
