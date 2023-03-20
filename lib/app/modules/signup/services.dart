import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class SignUpServices {
  Future<void> signUpUser(String email, password) async {
    try {
      UserCredential signUpCredentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      log(signUpCredentials.toString());
    } catch (e) {
      log(e.toString());
    }
  }
}
