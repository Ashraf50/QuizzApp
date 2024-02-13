import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/colors.dart';

class PreviousButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onTap;
  const PreviousButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        width: width,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: purple,
            ),
          ),
        ),
      ),
    );
  }
}
