import 'package:email_validator/email_validator.dart';
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
import 'package:quiz_app/feature/registration/presentation/view/widget/divider_text.dart';
import 'package:quiz_app/feature/registration/presentation/view/widget/google_button.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});
  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final usernameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          isLoading = true;
        } else if (state is RegisterSuccess) {
          Get.to(() => const SignInView());
          showSnackBar(context, "Success");
          isLoading = false;
        } else if (state is RegisterFailure) {
          isLoading = false;
          showSnackBar(context, state.messageError);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: SafeArea(
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
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
                        hintText: "Enter Your Username",
                        obscureText: false,
                        controller: usernameController,
                      ),
                      CustomTextfield(
                        validator: (value) {
                          return value != null &&
                                  !EmailValidator.validate(value)
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
                        obscureText: visibility,
                        controller: passwordController,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (visibility == true) {
                                visibility = false;
                              } else {
                                visibility = true;
                              }
                            });
                          },
                          icon: visibility
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                )
                              // ignore: dead_code
                              : const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                ),
                        ),
                      ),
                      CustomButton(
                        color: purple,
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            BlocProvider.of<AuthBloc>(context).add(
                              RegisterEvent(
                                username: usernameController.text,
                                phoneNumber: phoneController.text,
                                email: emailController.text,
                                password: passwordController.text,
                              ),
                            );
                          } else {
                            showSnackBar(
                                context, "check the email or password");
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
                      const GoogleButton(),
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
      },
    );
  }
}
