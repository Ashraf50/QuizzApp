import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/core/widget/snack_bar.dart';
import 'package:quiz_app/feature/registration/data/auth_bloc/auth_bloc.dart';
import 'package:quiz_app/feature/registration/presentation/view/sign_in_view.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/checked_account_text.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/custom_textfield.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/divider_text.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/google_button.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 39),
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is RegisterLoading) {
                const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is RegisterSuccess) {
                Get.to(() => const SignInView());
              } else if (state is RegisterFailure) {
                showSnackBar(context, state.messageError);
              }
            },
            child: Form(
              key: formKey,
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
                    validator: (value) {
                      return value != null && !EmailValidator.validate(value)
                          ? "Enter a valid email"
                          : null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    hintText: "Enter Your Email",
                    obscureText: false,
                    controller: emailController,
                  ),
                  CustomTextfield(
                    hintText: "Enter Your Phone Number",
                    obscureText: false,
                    controller: phoneController,
                  ),
                  CustomTextfield(
                    validator: (value) {
                      if (value!.length < 6) {
                        return "Your password is too short!";
                      } else {
                        return null;
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    hintText: "Enter Your Password",
                    obscureText: true,
                    controller: passwordController,
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                  CustomButton(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<AuthBloc>(context).add(RegisterEvent(
                          phoneNumber: phoneController.text,
                          email: emailController.text,
                          password: passwordController.text,
                        ));
                      } else {
                        showSnackBar(context, "check the email or password");
                      }
                    },
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
        ),
      ),
    );
  }
}
