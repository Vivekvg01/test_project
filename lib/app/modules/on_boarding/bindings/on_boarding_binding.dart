import 'package:get/get.dart';
import 'package:test_project/app/modules/login/controllers/login_controller.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(
      () => OnBoardingController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
