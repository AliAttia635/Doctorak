import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/core/shared_widgets/custom_text_button.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:docdoc_1/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc_1/features/login/presentation/widgets/dont_have_account.dart';
import 'package:docdoc_1/features/login/presentation/widgets/email_and_password.dart';
import 'package:docdoc_1/features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:docdoc_1/features/login/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: Styles.font24PrimaryColorBold),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: Styles.font14greyRegular,
                ),
                verticalSpace(36),
                const EmailAndPassword(),
                Column(
                  children: [
                    verticalSpace(30),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: Styles.font13blueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    CustomTextButton(
                      buttonText: "Login",
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                      textStyle: Styles.font16whitesemiBold,
                      horizontalPadding: 1,
                    ),
                  ],
                ),
                verticalSpace(30),
                const TermsAndConditions(),
                verticalSpace(30),
                const Center(child: DontHaveAccount()),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().doLogin(
        // LoginRequestBody(
        //     email: context.read<LoginCubit>().emailController.text,
        //     password: context.read<LoginCubit>().passwordController.text),
      );
    }
  }
}
