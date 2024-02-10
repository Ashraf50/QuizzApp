import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/feature/welcome/presentation/view/about2_view.dart';
import 'package:quiz_app/feature/welcome/presentation/view/widget/custom_app_bar.dart';
import 'package:quiz_app/feature/welcome/presentation/view/widget/lottie.dart';
import 'package:quiz_app/feature/welcome/presentation/view/widget/lower_part.dart';

class About1View extends StatelessWidget {
  const About1View({super.key});

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
              const LottieImage(image: "assets/img/about1.json"),
              const Text(
                "All mock exam contains details explanations of each question, you will have opportunity to view details.You can open test in Learning mode or Exam mode.",
                style: Style.textStyle16,
              ),
              LowerPart(
                title: "Continue",
                onTap: () {
                  Get.to(
                    () => const About2View(),
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
