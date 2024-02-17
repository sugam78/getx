import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/LoginApi/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: controller.emailController.value,
            decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller.passwordController.value,
            decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              controller.onLogin()
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('Login'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
