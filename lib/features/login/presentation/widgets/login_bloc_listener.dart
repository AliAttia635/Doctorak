
import 'package:docdoc_1/core/helpers/show_error_alter_dialog.dart';
import 'package:docdoc_1/core/helpers/show_loading_indicator.dart';
import 'package:docdoc_1/core/routing/routes.dart';
import 'package:docdoc_1/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc_1/features/login/logic/cubit/login_state.dart';
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
            showLoadingIndicator(context);
          },
          success: (loginResponse) {
            Navigator.pop(context);
            GoRouter.of(context).push(Routes.homeScreen);
          },
          error: (error) {
            showErrorAlterDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
