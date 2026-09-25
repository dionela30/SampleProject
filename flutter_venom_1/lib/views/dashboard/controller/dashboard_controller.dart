import 'package:get/get.dart';
import 'package:flutter_venom_1/app/routes/app_pages.dart';

class DashboardController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void goToLogin() {
    Get.offAllNamed(Routes.login);
  }

  void goToUser() {
    Get.offAllNamed(Routes.user);
  }
}
