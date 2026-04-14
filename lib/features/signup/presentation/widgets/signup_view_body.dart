import 'package:docdoc_1/core/di/dependency_injection.dart';
import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/core/shared_widgets/custom_text_button.dart';
import 'package:docdoc_1/core/shared_widgets/custom_text_form_field.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:docdoc_1/core/shared_widgets/password_validation.dart';
import 'package:docdoc_1/features/login/data/repos/login_repo_implementation.dart';
import 'package:docdoc_1/features/login/presentation/widgets/terms_and_conditions.dart';
import 'package:docdoc_1/features/signup/data/models/sign_up_request_body.dart';
import 'package:docdoc_1/features/signup/data/repos/signup_repo_implementation.dart';
import 'package:docdoc_1/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:docdoc_1/features/signup/presentation/widgets/already_have_account.dart';
import 'package:docdoc_1/features/signup/presentation/widgets/signup_bloc_listner.dart';
import 'package:docdoc_1/features/signup/presentation/widgets/signup_form.dart';
import 'package:docdoc_1/features/signup/presentation/widgets/signup_intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
        child: SingleChildScrollView(
          child: Form(
            key: context.read<SignupCubit>().formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Account", style: Styles.font24PrimaryColorBold),
                verticalSpace(8),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: Styles.font14greyRegular,
                ),
                verticalSpace(24),
                const SignupForm(),
                verticalSpace(16),
                CustomTextButton(
                  buttonText: "Create Account",
                  onPressed: () {
                    if (context
                        .read<SignupCubit>()
                        .formKey
                        .currentState!
                        .validate()) {
                      validateThenDoSignUp(context);
                    }
                  },
                  textStyle: Styles.font16whitesemiBold,
                  horizontalPadding: 1,
                ),
                const SignupBlocListner(),
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

  void validateThenDoSignUp(BuildContext contex) {
    contex.read<SignupCubit>().doSignup();
  }
}
