import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieImage extends StatelessWidget {
  final String image;
  const LottieImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      image,
      width: 350,
    );
  }
}
