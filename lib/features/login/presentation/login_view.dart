import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/shared_widgets/custom_button.dart';
import 'package:doctor_app/core/shared_widgets/custom_text_form_field.dart';
import 'package:doctor_app/core/themes/app_colors.dart';
import 'package:doctor_app/core/themes/styles.dart';
import 'package:doctor_app/features/login/presentation/widgets/already_have_account.dart';
import 'package:doctor_app/features/login/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formKey = GlobalKey();

  bool isObscureText = true;

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
                Text(
                  "Welcome Back",
                  style: Styles.font24BlackBold.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: Styles.font14greyRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const CustomTextFormField(
                        hintText: "Email",
                      ),
                      verticalSpace(8),
                      CustomTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                isObscureText = !isObscureText;
                              },
                            );
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
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
                        onPressed: () {},
                        textStyle: Styles.font16whitesemiBold,
                        horizontalPadding: 1,
                      ),
                    ],
                  ),
                ),
                verticalSpace(30),
                const TermsAndConditions(),
                verticalSpace(30),
                const Center(child: AlreadyHaveAccount()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
