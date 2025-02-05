import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:quiz_app/core/constant/colors.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/core/widget/snack_bar.dart';
import 'package:quiz_app/feature/registration/data/auth_bloc/auth_bloc.dart';
import 'package:quiz_app/feature/registration/presentation/view/sign_in_view.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/checked_account_text.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/custom_textfield.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    bool isLoading = false;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is ResetLoading) {
          isLoading = true;
        } else if (state is ResetSuccess) {
          Get.to(() => const SignInView());
          showSnackBar(context, "Check your email");
          isLoading = false;
        } else if (state is ResetFailure) {
          isLoading = false;
          showSnackBar(context, state.messageError);
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: ModalProgressHUD(
            inAsyncCall: isLoading,
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
                      controller: emailController,
                    ),
                    CustomButton(
                      color: purple,
                      onTap: () {
                        BlocProvider.of<AuthBloc>(context).add(
                          ResetEvent(
                            email: emailController.text,
                          ),
                        );
                      },
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
          ),
        );
      },
    );
  }
}
