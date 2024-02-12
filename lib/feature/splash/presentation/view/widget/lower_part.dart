import 'package:flutter/material.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/feature/splash/presentation/view/widget/custom_icon_button.dart';

class LowerPart extends StatelessWidget {
  final Function() onTap;
  final String title;
  const LowerPart({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomIconButton(),
        const SizedBox(
          width: 27,
        ),
        CustomButton(
          width: 203,
          title: title,
          onTap: onTap,
        ),
      ],
    );
  }
}
