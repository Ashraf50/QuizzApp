import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onTap;
  const CustomButton({
    super.key,
    required this.onTap, required this.title, required this.width,
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
          color: purple,
          borderRadius: BorderRadius.circular(12),
        ),
        child:  Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
