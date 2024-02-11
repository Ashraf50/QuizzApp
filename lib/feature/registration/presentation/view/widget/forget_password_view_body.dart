import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/feature/registration/presentation/view/sign_in_view.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/checked_account_text.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/custom_textfield.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 39),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                textAlign: TextAlign.center,
                "QuizLy",
                style: Style.textStyle26,
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                textAlign: TextAlign.center,
                "Forgot Password",
                style: Style.textStyle24,
              ),
              const SizedBox(
                height: 70,
              ),
              CustomTextfield(
                hintText: "Enter Your Email",
                obscureText: false,
                controller: TextEditingController(),
              ),
              CustomButton(
                onTap: () {},
                title: "Reset",
                width: 405,
              ),
              const SizedBox(
                height: 200,
              ),
              CheckedAccount(
                title: "Remember Password?",
                buttonTitle: "Login",
                onTap: () {
                  Get.to(
                    () => const SignInView(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
