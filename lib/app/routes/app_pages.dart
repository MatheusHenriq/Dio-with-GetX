import 'package:apiconsume/app/controller/home_bindings.dart';
import 'package:apiconsume/app/controller/other_bindings.dart';
import 'package:apiconsume/app/controller/user_bindings.dart';
import 'package:apiconsume/app/routes/app_routes.dart';
import 'package:apiconsume/app/ui/homepage.dart';
import 'package:apiconsume/app/ui/otherpage.dart';
import 'package:apiconsume/app/ui/userpage.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.OTHER,
      page: () => OtherPage(),
      binding: OtherBindings(),
    ),
    GetPage(
      name: Routes.USER,
      page: () => UserPage(),
      binding: UserBindings(),
    ),
  ];
}
