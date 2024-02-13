import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/colors.dart';
import 'package:quiz_app/core/constant/text_style.dart';

class ExamChooseButton extends StatefulWidget {
  final String later;
  final String answer;
  const ExamChooseButton({
    super.key,
    required this.later,
    required this.answer,
  });

  @override
  State<ExamChooseButton> createState() => _ExamChooseButtonState();
}

class _ExamChooseButtonState extends State<ExamChooseButton> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          setState(() {
            if (isClicked == true) {
              isClicked = false;
            } else {
              isClicked = true;
            }
          });
        },
        child: Container(
          height: 52,
          decoration: BoxDecoration(
            color:
                isClicked ? const Color(0xfff7f0ff) : const Color(0xfff4f6fa),
            border: Border.all(color: isClicked ? purple : Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  "${widget.later}.",
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  widget.answer,
                  style: Style.textStyle16,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
