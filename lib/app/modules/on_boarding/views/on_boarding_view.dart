import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_project/app/common_widgets/custom_button.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.network(
                  'https://cdni.iconscout.com/illustration/premium/preview/onboarding-new-employee-8045635-6499125.png?f=avif&h=1400'),
              CustomButton(
                title: 'Get Started',
                action: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
