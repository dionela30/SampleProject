import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_venom_1/views/login/controller/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: '',
          ),
          ),
          // const 
        ],
      ))
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