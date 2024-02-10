import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/text_style.dart';

class GoogleButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const GoogleButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Image.asset(
                "assets/img/google.png",
                width: 20,
              ),
            ),
            const SizedBox(
              width: 60,
            ),
            Text(
              title,
              style: Style.textStyle16,
            ),
          ],
        ),
      ),
    );
  }
}
