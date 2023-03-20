import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/on_boarding/bindings/on_boarding_binding.dart';
import '../modules/on_boarding/views/on_boarding_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.ON_BOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: _Paths.ON_BOARDING,
        page: () => const OnBoardingView(),
        bindings: [
          OnBoardingBinding(),
          LoginBinding(),
        ]),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      bindings: [
        LoginBinding(),
        SignupBinding(),
      ],
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      bindings: [
        SignupBinding(),
        LoginBinding(),
        HomeBinding(),
      ],
    ),
  ];
}
