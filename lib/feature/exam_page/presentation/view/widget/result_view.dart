import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/constant/colors.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/widget/bottom_bar.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
class ExamResultView extends StatelessWidget {
  final int score;
  const ExamResultView({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Your Score :',
                style: Style.textStyle26,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      value: score / 9,
                      color: Colors.green,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        score.toString(),
                        style: const TextStyle(fontSize: 80),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${(score / 10 * 100).round()}%',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
              CustomButton(
                onTap: () {
                  Get.to(() => const BottomBar());
                },
                title: "Go to home",
                width: 200,
                color: purple,
              )
            ],
          ),
        ),
      ),
    );
  }
}
