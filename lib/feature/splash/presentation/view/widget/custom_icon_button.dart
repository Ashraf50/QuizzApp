import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        
        width: 84,
        height: 48,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 233, 234),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Color(0xff841FFD),
          size: 24,
        ),
      ),
    );
  }
}
