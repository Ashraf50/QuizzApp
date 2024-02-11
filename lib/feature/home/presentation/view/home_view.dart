import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/feature/registration/presentation/view/sign_in_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomButton(
            onTap: () {
              Get.to(() => const SignInView());
              FirebaseAuth.instance.signOut();
            },
            title: "sign out",
            width: 313,
          )
        ],
      ),
    );
  }
}
