import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/text_style.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Style.textStyle24,
    );
  }
}
