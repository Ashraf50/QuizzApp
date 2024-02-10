import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/feature/registration/presentation/view/sign_in_view.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/checked_account_text.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/custom_textfield.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/divider_text.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/google_button.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
                height: 58,
              ),
              CustomTextfield(
                hintText: "Enter Your Email",
                obscureText: false,
                controller: TextEditingController(),
              ),
              CustomTextfield(
                hintText: "Enter Your Phone Number",
                obscureText: false,
                controller: TextEditingController(),
              ),
              CustomTextfield(
                hintText: "Enter Your Password",
                obscureText: true,
                controller: TextEditingController(),
                suffixIcon: const Icon(
                  Icons.visibility,
                  color: Colors.grey,
                ),
              ),
              CustomButton(
                onTap: () {},
                title: "Sign Up",
                width: 405,
              ),
              const SizedBox(
                height: 58,
              ),
              const DividerText(),
              const SizedBox(
                height: 32,
              ),
              GoogleButton(
                title: "Sign up with Google",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CheckedAccount(
                title: "Already have an account?",
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
