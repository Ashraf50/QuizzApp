import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/constant/colors.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/widget/bottom_bar.dart';
import 'package:quiz_app/core/widget/snack_bar.dart';
import 'package:quiz_app/feature/registration/data/auth_bloc/auth_bloc.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is GooglSIgnLoading) {
          isLoading = true;
        } else if (state is GooglSIgnSuccess) {
          Get.to(() => const BottomBar());
          isLoading = false;
        } else if (state is GooglSIgnFailure) {
          isLoading = false;
          showSnackBar(context, "try again later");
        }
      },
      builder: (context, state) {
        return InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            BlocProvider.of<AuthBloc>(context).add(
              GoogleSignEvent(),
            );
          },
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: isLoading
                ? SpinKitWave(
                    color: purple,
                    size: 20.0,
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/img/google.png",
                        width: 20,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        "Sign with google",
                        style: Style.textStyle16,
                      )
                    ],
                  ),
          ),
        );
      },
    );
  }
}
