import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/themes/styles.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Success || current is Loading || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                );
              },
            );
          },
          success: (loginResponse) {
            Navigator.pop(context);
            GoRouter.of(context).push(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(
            Icons.error,
            color: Colors.red,
          ),
          content: Text(
            error,
            style: Styles.font15BlackMeduim,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Got it",
                style: Styles.font14BlueSemiBold,
              ),
            )
          ],
        );
      },
    );
  }
}
