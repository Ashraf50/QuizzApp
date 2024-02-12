import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/feature/splash/presentation/view/about1_view.dart';
import 'package:quiz_app/feature/splash/presentation/view/widget/custom_app_bar.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/feature/splash/presentation/view/widget/lottie.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomAppBar(title: "Welcome"),
              const LottieImage(image: "assets/img/welcome.json"),
              const Text(
                "Mock University is one stop platform where user can attend different mock-exams with ease of our mobile and web app. This not just provides the mock- exams, it gives user the better understanding of the topic.",
                style: Style.textStyle16,
              ),
              CustomButton(
                title: "Continue",
                width: 301,
                onTap: () {
                  Get.to(
                    () => const About1View(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
