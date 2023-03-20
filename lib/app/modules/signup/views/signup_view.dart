import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/common_widgets/custom_textfeild.dart';
import 'package:test_project/app/modules/home/views/home_view.dart';
import '../../../common_widgets/custom_button.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
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
                textController: controller.usernameController,
                hintText: 'Username',
                prefixIcon: const Icon(Icons.lock),
              ),
              const SizedBox(height: 15),
              CustomTextFeild(
                textController: controller.emailController,
                hintText: 'Email',
                prefixIcon: const Icon(Icons.email),
              ),
              const SizedBox(height: 15),
              CustomTextFeild(
                obscureText: true,
                textController: controller.passwordController,
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock),
              ),
              const SizedBox(height: 15),
              CustomTextFeild(
                obscureText: true,
                textController: controller.confirmPasswordController,
                hintText: 'Confirm password',
                prefixIcon: const Icon(Icons.lock),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: Get.width,
                height: Get.height * 0.06,
                child: CustomButton(
                  title: 'Sign Up',
                  action: () {
                    controller.onSignUpButtonClicked();
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
          const Text("Already have an account?"),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Login'),
          )
        ],
      ),
    );
  }
}
