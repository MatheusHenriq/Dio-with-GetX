import 'package:apiconsume/app/controller/other_bindings.dart';
import 'package:apiconsume/app/ui/homepage.dart';
import 'package:apiconsume/app/ui/otherpage.dart';
import 'package:flutter/material.dart';
import 'package:apiconsume/app/controller/home_bindings.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomeBindings(),
        ),
        GetPage(
          name: '/other',
          page: () => OtherPage(),
          binding: OtherBindings(),
        ),
      ],
    ),
  );
}
