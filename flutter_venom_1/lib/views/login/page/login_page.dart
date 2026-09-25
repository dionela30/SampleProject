import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_venom_1/views/login/controller/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) => controller.usernameController.value = value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your Username',
              ),
            ),

            const SizedBox(height: 16.0),

            TextField(
              obscureText: true,
              onChanged: (value) => controller.passwordController.value = value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your Password',
              ),
            ),

            ElevatedButton(
              onPressed: () {
                controller.loginUser(
                  controller.usernameController.value,
                  controller.passwordController.value,
                );
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 16.0),

            ColoredBox(
              color: Colors.black,
              child: Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: const Color(0xFFE8581C),
                  child: const Text('LOGIN!'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// return Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: <Widget>[
// const Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
// child: TextField(decoration: InputDecoration(
//   border:OutlineInputBorder(),
//   hintText: 'Enter a search term',
// ),
// ),
// ),
// Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
// child: TextFormField(
//   decoration: const InputDecoration(
//     border: UnderlineInputBorder(),
//     labelText: 'Enter your username',
// ),
// ),
// ),
//   ]
// );
// }
// }
