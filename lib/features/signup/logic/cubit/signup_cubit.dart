import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/signup/data/models/signup_request_body.dart';
import 'package:doctor_app/features/signup/data/models/signup_response_body.dart';
import 'package:doctor_app/features/signup/data/repos/signup_repo.dart';
import 'package:doctor_app/features/signup/logic/cubit/signup_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  final SignupRepo _signupRepo;

  void doSignup(SignupRequestBody signupRequestBody) async {
    emit(const SignupState.loading());
    ApiResult<SignupResponseBody> responseResult =
        await _signupRepo.signup(signupRequestBody);

    responseResult.when(
      success: (signupResponseBody) {
        emit(
          SignupState.success(signupResponseBody),
        );
      },
      faliure: (errorHandler) {
        emit(SignupState.error(
            errorMessage: errorHandler.apiErrorModel.errMessage ?? ""));
      },
    );
  }
}
