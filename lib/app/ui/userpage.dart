import 'package:apiconsume/app/controller/usercontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Comments'),
      ),
      body: controller.obx((state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Choose user'),
            Obx(
              () => DropdownButton(
                  value: '${controller.userValue.value}',
                  onChanged: (String? e) =>
                      controller.userValue.value = int.parse(e!),
                  items: controller.userIds
                      .map<DropdownMenuItem<String>>((int value) {
                    return DropdownMenuItem(
                      onTap: () {
                        controller.userValue.value = value;
                      },
                      value: '$value',
                      child: Text('$value'),
                    );
                  }).toList()),
            ),
            Obx(() => Center(
                child: Text(
                    'Email: \n${state[controller.userValue.value - 1].email}'))),
            Obx(() => Center(
                child: Text(
                    'body: \n${state[controller.userValue.value - 1].body}'))),
          ],
        );
      }),
    );
  }
}
