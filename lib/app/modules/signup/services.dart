import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:test_project/app/modules/home/views/home_view.dart';

class SignUpServices {
  Future<void> signUpUser(String email, password) async {
    try {
      UserCredential signUpCredentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      log(signUpCredentials.toString());

      if (signUpCredentials.user?.email != null) {
        Get.to(() => const HomeView());
        Get.snackbar(
          'Registration Successful',
          '',
          duration: const Duration(seconds: 3),
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
