import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class ShimmerLoading extends StatelessWidget {
  final double width;
  final double height;
  const ShimmerLoading({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color.fromARGB(116, 158, 158, 158),
      highlightColor: const Color.fromARGB(125, 158, 158, 158),
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          color: Color(0xff1D2233),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
