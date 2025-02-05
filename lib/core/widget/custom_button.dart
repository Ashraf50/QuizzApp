import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onTap;
  final Color? color;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.width,required this.color,
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
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
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
