import 'package:get/get.dart';
import 'package:flutter_venom_1/app/routes/app_pages.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void goToDashboard() {
    Get.offAllNamed(Routes.dashboard);
  }

  final String username = 'Coop';
  final String password = '5555';

  RxString usernameController = ''.obs;
  RxString passwordController = ''.obs;

  Future<void> loginUser(String username, String password) async {
    if (username == 'admin' && password == '5555') {
      Get.toNamed('/dashboard');
      Get.snackbar('Success', 'Validations Approved');
    } else {
      Get.snackbar('Failed', 'Validations Invalid');
    }
  }
}
