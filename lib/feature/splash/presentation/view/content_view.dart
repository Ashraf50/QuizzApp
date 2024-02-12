import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/feature/splash/presentation/view/finally_view.dart';
import 'package:quiz_app/feature/splash/presentation/view/widget/custom_app_bar.dart';
import 'package:quiz_app/feature/splash/presentation/view/widget/lottie.dart';
import 'package:quiz_app/feature/splash/presentation/view/widget/lower_part.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomAppBar(
                  title: "   Content consent\nand user agreement"),
              const LottieImage(image: "assets/img/content.json"),
              const Text(
                "The content of all courses prepared to give best experience and knowledge on each topic. ….We do not guarantee that course content is up to date, but we are working continuously to improve the course content.",
                style: Style.textStyle16,
              ),
              LowerPart(
                title: "I Agree",
                onTap: () {
                  Get.to(
                    () => const FinallyView(),
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
