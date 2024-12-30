import 'package:doctor_app/core/helpers/app_regex.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/shared_widgets/custom_text_form_field.dart';
import 'package:doctor_app/core/shared_widgets/password_validation.dart';
import 'package:doctor_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:doctor_app/features/signup/presentation/widgets/signup_intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool passwordIsObscureText = true;
  bool confirmPasswordIsObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();

    setupPasswordControllerListner();
  }

  void setupPasswordControllerListner() {
    context.read<SignupCubit>().passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(
            context.read<SignupCubit>().passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(
            context.read<SignupCubit>().passwordController.text);
        hasNumber = AppRegex.hasNumber(
            context.read<SignupCubit>().passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
            context.read<SignupCubit>().passwordController.text);
        hasMinLength = AppRegex.hasMinLength(
            context.read<SignupCubit>().passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: "name",
          validator: (data) {},
          controller: context.read<SignupCubit>().nameController,
        ),
        verticalSpace(12),
        const SignUpIntlPhoneField(),
        verticalSpace(8),
        CustomTextFormField(
          hintText: "email",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'this field is required';
            } else if (!AppRegex.isEmailValid(value)) {
              return 'please enter a valid email';
            }
          },
          controller: context.read<SignupCubit>().emailController,
        ),
        verticalSpace(12),
        CustomTextFormField(
          controller: context.read<SignupCubit>().passwordController,
          hintText: "password",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'this field is required';
            }
            if (!hasLowerCase ||
                !hasUpperCase ||
                !hasNumber ||
                !hasMinLength ||
                !hasSpecialCharacters) {
              return "you didn't match our password credential";
            }
          },
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
              passwordIsObscureText ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        ),
        verticalSpace(12),
        CustomTextFormField(
          controller: context.read<SignupCubit>().confirmPasswordController,
          hintText: "confirm password",
          validator: (data) {
            if (context.read<SignupCubit>().confirmPasswordController.text !=
                context.read<SignupCubit>().passwordController.text) {
              return "the password does not match";
            }
          },
          isObscureText: confirmPasswordIsObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(
                () {
                  confirmPasswordIsObscureText = !confirmPasswordIsObscureText;
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
        PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength),
      ],
    );
  }
}
