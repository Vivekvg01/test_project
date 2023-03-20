import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/modules/signup/services.dart';

class SignupController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Future<void> onSignUpButtonClicked() async {
    SignUpServices().signUpUser(emailController.text, passwordController.text);
  }
}
