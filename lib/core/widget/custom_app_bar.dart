import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final TextStyle style;
  const CustomAppBar({
    super.key,
    required this.title,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            title,
            style: style,
          ),
        ),
      ],
    );
  }
}
