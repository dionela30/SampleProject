import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_venom_1/app/routes/app_pages.dart';
import 'package:flutter_venom_1/views/dashboard/controller/dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Dashboard Page'),

            const SizedBox(height: 16.0),

            ElevatedButton(
              onPressed: () => controller.goToLogin(),
              child: const Text('Go to Login'),
            ),

            ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(Routes.user);
              },
              icon: const Icon(Icons.person_add),
              label: const Text('Add user'),
            ),
          ],
        ),
      ),
    );
  }
}
