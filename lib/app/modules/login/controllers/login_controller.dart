import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/modules/login/services/login_services.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  Future<void> onLoginButtonClick() async {
    LoginServices().loginUser(emailController.text, passwordContoller.text);
  }
}
