import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/feature/profile/data/fetch_data_from_firebase.dart';
import 'package:quiz_app/feature/profile/presentation/view/widget/custom_list_tile.dart';
import 'package:quiz_app/feature/registration/presentation/view/sign_in_view.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                textAlign: TextAlign.center,
                "Profile",
                style: Style.textStyle26,
              ),
              const SizedBox(
                height: 30,
              ),
              const FetchData(),
              const SizedBox(
                height: 20,
              ),
              CustomListTile(
                title: "SignOut",
                onTap: () {
                  Get.to(() => const SignInView());
                  FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
