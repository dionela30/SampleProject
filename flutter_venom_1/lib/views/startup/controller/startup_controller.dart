import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_venom_1/app/routes/app_pages.dart';

class StartupController extends GetxController{
  @override
  void onReady() {
    super.onReady();
    _checkConfigandNavigate();
  }

void goToLogin(){
  Get.offAllNamed(Routes.login);
}
}

Future<void> _checkConfigandNavigate() async {
  //Fake loading delay
  await Future.delayed(const Duration(seconds: 2));
  debugPrint('Startup Complete, Ready to Navigate');
}
