
import 'package:docdoc_1/core/helpers/app_regex.dart';
import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/core/shared_widgets/custom_text_form_field.dart';
import 'package:docdoc_1/core/shared_widgets/password_validation.dart';
import 'package:docdoc_1/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  // late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    //text field controller لل lazy variable اعتقدد ملهاش لازمة انى اعمل
    //اصلا cubit وبعدين ارجع استعمله ما استعمل اللى موجود فى ال cubit واساويه باللى فى ال
    // passwordController = context.read<LoginCubit>().passwordController;

    setupPasswordControllerListner();
  }

  @override
  void dispose() {
    // disposing controllers here cause an exception because they are declatred in the cubit instead i handeled it in cubit by Overriding close method , so when the cubit lifeCycle ends the passwordController Listner will dispose as well

    // context.read<LoginCubit>().passwordController.dispose();
    super.dispose();
  }

  void setupPasswordControllerListner() {
    context.read<LoginCubit>().passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(
            context.read<LoginCubit>().passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(
            context.read<LoginCubit>().passwordController.text);
        hasNumber = AppRegex.hasNumber(
            context.read<LoginCubit>().passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
            context.read<LoginCubit>().passwordController.text);
        hasMinLength = AppRegex.hasMinLength(
            context.read<LoginCubit>().passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'this field is required';
              } else if (!AppRegex.isEmailValid(value)) {
                return 'please enter a valid email';
              }
            },
          ),
          verticalSpace(8),
          CustomTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'this field is required';
              }
            },
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
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          verticalSpace(16),
          PasswordValidation(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength)
        ],
      ),
    );
  }
}
