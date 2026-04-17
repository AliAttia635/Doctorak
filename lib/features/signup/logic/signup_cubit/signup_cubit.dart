import 'package:bloc/bloc.dart';
import 'package:docdoc_1/core/networking/api_result.dart';
import 'package:docdoc_1/features/signup/data/models/sign_up_request_body.dart';
import 'package:docdoc_1/features/signup/data/models/signup_response_body.dart';
import 'package:docdoc_1/features/signup/data/repos/signup_repo.dart';
import 'package:docdoc_1/features/signup/logic/signup_cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  final SignupRepo _signupRepo;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  void doSignup() async {
    emit(const SignupState.loading());
    ApiResult<SignupResponseBody> responseResult = await _signupRepo.signup(
        SignupRequestBody(
            name: nameController.text,
            email: emailController.text,
            phone: phoneController.text,
            password: passwordController.text,
            passwordConfirmation: confirmPasswordController.text,
            gender: 0));

    responseResult.when(
      success: (signupResponseBody) {
        emit(
          SignupState.success(signupResponseBody),
        );
      },
      // the errorHandler object here is recieved from the SignupRepoImplementation return in case of catch (error)
      faliure: (errorHandler) {
        emit(SignupState.error(
            errorMessage: errorHandler.apiErrorModel.errMessage ?? ""));
      },
    );
  }
}
