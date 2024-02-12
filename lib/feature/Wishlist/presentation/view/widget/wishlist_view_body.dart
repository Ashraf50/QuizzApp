import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/text_style.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              SizedBox(
                height: 20,
              ),
              Text(
                "Wishlist",
                style: Style.textStyle26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
