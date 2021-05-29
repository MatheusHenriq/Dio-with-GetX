import 'package:apiconsume/app/controller/home_bindings.dart';
import 'package:apiconsume/app/controller/otherpagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepage.dart';

class OtherPage extends GetView<OtherController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OtherPage'),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () => Get.off(
              HomePage(),
              binding: HomeBindings(),
            ),
            child: Container(
              width: 70,
              height: 43,
              color: Colors.pink,
              child: Center(
                child: Text('Get Back'),
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () => controller.increment(),
              child: Container(
                width: 70,
                height: 43,
                color: Colors.grey,
                child: Center(
                  child: Text('increment'),
                ),
              ),
            ),
          ),
          Obx(
            () => Text(
              '${controller.count.value}',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
