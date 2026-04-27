import 'package:docdoc_1/core/helpers/constants.dart';
import 'package:docdoc_1/core/helpers/shared_prefrences_helper.dart';
import 'package:docdoc_1/core/networking/api_result.dart';
import 'package:docdoc_1/features/login/data/models/login_request_body.dart';
import 'package:docdoc_1/features/login/data/repos/login_repo.dart';
import 'package:docdoc_1/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> doLogin() async {
    emit(const LoginState.initial());
    final responseResult = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    responseResult.when(
      success: (loginResponseData) async {
        await saveUserToken(loginResponseData.userData?.token ?? "");
        emit(LoginState.success(loginResponseData));
      },
      faliure: (errorHandler) {
        emit(
          LoginState.error(error: errorHandler.apiErrorModel.errMessage ?? ""),
        );
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    // Save the token to shared preferences
    // await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  }

  // Overriding the close method to dispose controllers when the cubit lifeCycle ends
  @override
  Future<void> close() {
    // Dispose of the controllers here
    emailController.dispose();
    passwordController.dispose();
    return super.close(); // Call to the superclass to clean up the Cubit itself
  }
}
