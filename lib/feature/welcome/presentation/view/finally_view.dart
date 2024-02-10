import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/feature/registration/presentation/view/sign_up_view.dart';
import 'package:quiz_app/feature/welcome/presentation/view/widget/custom_app_bar.dart';
import 'package:quiz_app/feature/welcome/presentation/view/widget/lottie.dart';
import 'package:quiz_app/feature/welcome/presentation/view/widget/lower_part.dart';

class FinallyView extends StatelessWidget {
  const FinallyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomAppBar(title: "Congratulations!",),
              const LottieImage(image: "assets/img/finally.json"),
              const Text(
                "You have reached the end of our introduction. We are excited to enroll you to our online Mock University. Thank you for choosing us and “Happy Mocking” !\nBest Wishes,\nMock University",
                style: Style.textStyle16,
              ),
              LowerPart(
                title: "Get Started",
                onTap: () {
                  Get.to(()=> const SignUpView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
