import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/constant/colors.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/model/exam_model.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/feature/exam_page/presentation/view/widget/result_view.dart';

class ExamQuestionItem extends StatefulWidget {
  final PageController controller;
  final ExamModel exam;
  final int index;
  final int total;

  const ExamQuestionItem({
    super.key,
    required this.index,
    required this.total,
    required this.exam,
    required this.controller,
  });

  @override
  State<ExamQuestionItem> createState() => _ExamQuestionItemState();
}

class _ExamQuestionItemState extends State<ExamQuestionItem> {
  bool isClicked = false;
  int score = 0;
  List choice = ['a', 'b', 'c', 'd'];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${widget.index}. ${widget.exam.question}",
              style: Style.textStyle20,
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
              itemCount: widget.exam.answers.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                bool isCorrectAnswer =
                    widget.exam.correctAnswer == widget.exam.answers[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      isClicked = true;
                      if (isCorrectAnswer) {
                        score++;
                        print(score);
                      }
                      setState(() {});
                    },
                    child: Container(
                      height: 52,
                      decoration: BoxDecoration(
                        color: isClicked
                            ? isCorrectAnswer
                                ? const Color(0xffedf9f7)
                                : const Color(0xfffdf3f5)
                            : const Color(0xfff5f7fb),
                        border: Border.all(
                          color: isClicked
                              ? isCorrectAnswer
                                  ? Colors.green
                                  : Colors.red
                              : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Text(
                              "${choice[index]}.",
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Expanded(
                              child: Text(
                                widget.exam.answers[index],
                                style: Style.textStyle16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${widget.index}/",
                  style: widget.index == widget.total
                      ? Style.textStyle26
                      : Style.textStyle24,
                ),
                Text(
                  "${widget.total}",
                  style: Style.textStyle26,
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
              color:
                  isClicked ? purple : const Color.fromARGB(44, 149, 148, 148),
              onTap: () {
                widget.index == widget.total
                    ? showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert(
                              title: widget.exam.category, score: score);
                        },
                      )
                    : isClicked
                        ? widget.controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.decelerate)
                        : () {};
              },
              title: widget.index == widget.total ? "Finish" : "Next",
              width: 160,
            ),
          ],
        ),
      ],
    );
  }
}

AlertDialog alert({required String title, required int score}) {
  return AlertDialog(
    title: Text(
      title,
      style: Style.textStyle20,
    ),
    content: const Text(
      "Are you sure to submit?",
      style: Style.textStyle16,
    ),
    actions: [
      TextButton(
        child: const Text(
          "submit",
          style: Style.textStyle16,
        ),
        onPressed: () {
          Get.to(() => ExamResultView(score: score));
        },
      ),
    ],
  );
}
