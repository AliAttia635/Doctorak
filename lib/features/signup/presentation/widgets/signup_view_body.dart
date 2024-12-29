import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/shared_widgets/custom_text_button.dart';
import 'package:doctor_app/core/shared_widgets/custom_text_form_field.dart';
import 'package:doctor_app/core/themes/styles.dart';
import 'package:doctor_app/features/login/presentation/widgets/password_validation.dart';
import 'package:doctor_app/features/signup/presentation/widgets/signup_intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  bool passwordIsObscureText = true;
  bool confirmPasswordIsObscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Account",
                style: Styles.font24PrimaryColorBold,
              ),
              verticalSpace(8),
              Text(
                "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                style: Styles.font14greyRegular,
              ),
              verticalSpace(24),
              CustomTextFormField(hintText: "name", validator: (data) {}),
              verticalSpace(12),
              const SignUpIntlPhoneField(),
              verticalSpace(8),
              CustomTextFormField(hintText: "email", validator: (data) {}),
              verticalSpace(12),
              CustomTextFormField(
                hintText: "password",
                validator: (data) {},
                isObscureText: passwordIsObscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        passwordIsObscureText = !passwordIsObscureText;
                      },
                    );
                  },
                  child: Icon(
                    passwordIsObscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
              ),
              verticalSpace(12),
              CustomTextFormField(
                hintText: "confirm password",
                validator: (data) {},
                isObscureText: confirmPasswordIsObscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        confirmPasswordIsObscureText =
                            !confirmPasswordIsObscureText;
                      },
                    );
                  },
                  child: Icon(
                    confirmPasswordIsObscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
              ),
              verticalSpace(16),
              const PasswordValidation(
                  hasLowerCase: false,
                  hasUpperCase: false,
                  hasSpecialCharacters: false,
                  hasNumber: false,
                  hasMinLength: false),
              verticalSpace(16),
              CustomTextButton(
                buttonText: "Create Account",
                onPressed: () {},
                textStyle: Styles.font16whitesemiBold,
                horizontalPadding: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
