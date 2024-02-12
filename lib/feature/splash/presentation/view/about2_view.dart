import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/feature/splash/presentation/view/content_view.dart';
import 'package:quiz_app/feature/splash/presentation/view/widget/custom_app_bar.dart';
import 'package:quiz_app/feature/splash/presentation/view/widget/lottie.dart';
import 'package:quiz_app/feature/splash/presentation/view/widget/lower_part.dart';

class About2View extends StatelessWidget {
  const About2View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomAppBar(title: "About"),
              const LottieImage(image: "assets/img/about2.json"),
              const Text(
                "Learning mode is not time limited and you can view answer immediately and review topic.You can only review topics and correct answer after submission of the test.",
                style: Style.textStyle16,
              ),
              LowerPart(
                title: "Continue",
                onTap: () {
                  Get.to(
                    () => const ContentView(),
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
