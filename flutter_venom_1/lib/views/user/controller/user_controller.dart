import 'package:get/get.dart';
import 'package:flutter_venom_1/app/routes/app_pages.dart';

class UserController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void goToDashboard() {
    Get.offAllNamed('/dashboard');
  }
}
