import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/text_style.dart';

class ExamViewBody extends StatelessWidget {
  const ExamViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              SizedBox(
                height: 20,
              ),
              Text(
                "Exams",
                style: Style.textStyle26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
