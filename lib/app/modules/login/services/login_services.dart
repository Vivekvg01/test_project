import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/modules/home/views/home_view.dart';

class LoginServices {
  Future<void> loginUser(String email, String password) async {
    try {
      UserCredential loginCredentials = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      log(loginCredentials.toString());
      log(loginCredentials.user!.email.toString());
      if (loginCredentials.user?.email != null) {
        Get.to(() => const HomeView());
      } else {
        Get.showSnackbar(
          const GetSnackBar(
            title: 'Login Failed',
            duration: Duration(seconds: 3),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
