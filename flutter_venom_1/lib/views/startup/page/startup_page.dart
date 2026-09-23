import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_venom_1/views/startup/controller/startup_controller.dart';

class StartupPage extends GetView<StartupController> {
  const StartupPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // App Logo or Icon Placeholder
                const Icon(Icons.bolt, size: 80, color: Colors.blueAccent),
                const SizedBox(height: 24),

                // Startup Title
                const Text(
                  'DINOROBONG TUBO',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),

                // Subtitle or Tagline
                const Text(
                  'Loading your experience...',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 48),

                ElevatedButton(
                  onPressed: () => controller.goToLogin(),
                  child: const Text('Go toLogin'),
                ),

                // Loading Indicator (Managed by controller or just visual)
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
