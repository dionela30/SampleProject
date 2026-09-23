import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_venom_1/views/dashboard/controller/dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
    const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Dashboard Page'),
      ),
    );
  }
}