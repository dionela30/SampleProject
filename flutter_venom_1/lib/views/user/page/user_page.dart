import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_venom_1/views/user/controller/user_controller.dart';

class UserPage extends GetView<UserController> {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('User Page'),

            const SizedBox(height: 16.0),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.green.shade100,
                  child: Center(child: Text('Grid Item ${index + 1}')),
                );
              },
            ),
            const SizedBox(height: 23.0),
            const Text('Grid 2', style: TextStyle(fontSize: 18),)
            ElevatedButton(
              onPressed: () => controller.goToDashboard(),
              child: const Text('Go to Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
