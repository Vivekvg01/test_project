import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/common_widgets/custom_button.dart';
import 'package:test_project/app/common_widgets/custom_textfeild.dart';
import 'package:test_project/app/modules/signup/views/signup_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFeild(
                textController: controller.emailController,
                hintText: 'email',
                prefixIcon: const Icon(Icons.email),
              ),
              const SizedBox(height: 15),
              CustomTextFeild(
                textController: controller.passwordContoller,
                hintText: 'password',
                prefixIcon: const Icon(Icons.lock),
                obscureText: true,
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: Get.width,
                child: CustomButton(
                  title: 'Login',
                  action: () {
                    controller.onLoginButtonClick();
                  },
                ),
              ),
              const SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Don't have an account?"),
          TextButton(
            onPressed: () {
              Get.to(() => const SignupView());
            },
            child: const Text('Sign Up'),
          )
        ],
      ),
    );
  }
}
