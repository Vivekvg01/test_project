import 'package:get/get.dart';
import 'package:test_project/app/modules/signup/controllers/signup_controller.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<SignupController>(
      () => SignupController(),
    );
  }
}
