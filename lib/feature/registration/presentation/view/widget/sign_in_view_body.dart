import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/constant/colors.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/feature/registration/presentation/view/forget_password_view.dart';
import 'package:quiz_app/feature/registration/presentation/view/sign_up_view.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/checked_account_text.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/custom_textfield.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/divider_text.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/google_button.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

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
                hintText: "Enter Your Password",
                obscureText: true,
                controller: TextEditingController(),
                suffixIcon: const Icon(
                  Icons.visibility,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.to(
                        () => const ForgetPasswordView(),
                      );
                    },
                    child: Text(
                      textAlign: TextAlign.end,
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 15,
                        color: red,
                        decoration: TextDecoration.underline,
                        decorationColor: red,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                onTap: () {},
                title: "Log In",
                width: 405,
              ),
              const SizedBox(
                height: 58,
              ),
              const DividerText(),
              const SizedBox(
                height: 32,
              ),
              GoogleButton(title: "Login with Google", onTap: () {}),
              const SizedBox(
                height: 20,
              ),
              CheckedAccount(
                title: "Don’t have an account?",
                buttonTitle: "Sign Up",
                onTap: () {
                  Get.to(
                    () => const SignUpView(),
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
