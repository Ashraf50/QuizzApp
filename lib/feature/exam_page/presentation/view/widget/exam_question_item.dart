import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/utils/exam_model/exam_model.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/feature/exam_page/presentation/view/widget/exam_choose_button.dart';
import 'package:quiz_app/feature/exam_page/presentation/view/widget/previous_button.dart';

class ExamQuestionItem extends StatelessWidget {
  final ExamModel exam;
  final int index;
  final int total;

  const ExamQuestionItem({
    super.key,
    required this.index,
    required this.total,
    required this.exam,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$index. ${exam.question!}",
            style: Style.textStyle20,
          ),
          const SizedBox(
            height: 15,
          ),
          ExamChooseButton(
            later: "a",
            answer: exam.correctAnswer!,
          ),
          ExamChooseButton(
            later: "b",
            answer: exam.incorrectAnswers![0],
          ),
          ExamChooseButton(
            later: "c",
            answer: exam.incorrectAnswers![1],
          ),
          ExamChooseButton(
            later: "d",
            answer: exam.incorrectAnswers![2],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$index/",
                style: index == total ? Style.textStyle26 : Style.textStyle24,
              ),
              Text(
                "$total",
                style: Style.textStyle26,
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PreviousButton(
                onTap: () {},
                title: "Previous",
                width: 160,
              ),
              CustomButton(
                onTap: () {},
                title: "Next",
                width: 160,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
