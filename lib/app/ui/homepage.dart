import 'package:apiconsume/app/controller/homecontrolle.dart';
import 'package:apiconsume/app/controller/other_bindings.dart';
import 'package:apiconsume/app/controller/otherpagecontroller.dart';
import 'package:apiconsume/app/ui/otherpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  final OtherController othercontroller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Consumer'),
      ),
      body: controller.obx((state) {
        return Column(
          children: [
            Obx(() => Text('${othercontroller.count.value}')),
            ListTile(
              title: Text(state[0].name),
              subtitle: Text('${state[0].email}'),
            ),
            MaterialButton(
              onPressed: () => Get.to(OtherPage(), binding: OtherBindings()),
              textColor: Colors.red,
              child: Container(
                color: Colors.green,
                height: 43,
                width: 150,
                child: Center(child: Text('Go to OTHER page')),
              ),
            ),
          ],
        );
      }),
    );
  }
}
