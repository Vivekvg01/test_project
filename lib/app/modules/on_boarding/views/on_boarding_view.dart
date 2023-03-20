import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/common_widgets/custom_button.dart';
import 'package:test_project/app/modules/login/views/login_view.dart';
import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.network(
                    'https://img.freepik.com/free-vector/choosing-best-candidate-concept_52683-43377.jpg?w=900&t=st=1679294319~exp=1679294919~hmac=319d3c6b4299eabf4f1ee9986075d2f07337e776eaf58f287512a2bb5086085d',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Login to the app to explore products',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: Get.height * 0.06,
                  width: Get.width,
                  child: CustomButton(
                    title: 'Get Started',
                    action: () {
                      Get.to(() => const LoginView());
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
