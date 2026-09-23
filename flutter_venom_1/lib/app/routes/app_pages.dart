import 'package:get/get.dart';
import 'package:flutter_venom_1/views/startup/controller/startup_binding.dart';
import 'package:flutter_venom_1/views/startup/page/startup_page.dart';
import 'package:flutter_venom_1/views/login/controller/login_binding.dart';
import 'package:flutter_venom_1/views/login/page/login_page.dart';
import 'package:flutter_venom_1/views/dashboard/controller/dashboard_binding.dart';
import 'package:flutter_venom_1/views/dashboard/page/dashboard_page.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.startup;

  static final routes = [
    GetPage(
      name: Routes.startup,
      page: () => StartupPage(),
      binding: StartupBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
