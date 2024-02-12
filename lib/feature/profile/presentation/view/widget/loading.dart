import 'package:flutter/material.dart';
import 'package:quiz_app/core/widget/shimmer.dart';
import 'package:shimmer/shimmer.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Shimmer(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(116, 158, 158, 158),
              Color.fromARGB(116, 158, 158, 158),
            ],
          ),
          child: CircleAvatar(maxRadius: 50),
        ),
        SizedBox(
          height: 30,
        ),
        ShimmerLoading(
          height: 200,
          width: double.infinity,
        )
      ],
    );
  }
}
