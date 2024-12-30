import 'package:doctor_app/core/helpers/show_error_alter_dialog.dart';
import 'package:doctor_app/core/helpers/show_loading_indicator.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/themes/app_colors.dart';
import 'package:doctor_app/core/themes/styles.dart';
import 'package:doctor_app/features/signup/data/models/signup_response_body.dart';
import 'package:doctor_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:doctor_app/features/signup/logic/signup_cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignupBlocListner extends StatelessWidget {
  const SignupBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupSuccess ||
          current is SignupLoading ||
          current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showLoadingIndicator(context);
          },
          success: (signupResponseBody) {
            showSuccessDialog(context);
          },
          error: (error) {
            showErrorAlterDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed up successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                GoRouter.of(context).push(Routes.loginScreen);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }
}
