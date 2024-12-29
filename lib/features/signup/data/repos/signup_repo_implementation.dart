import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/features/signup/data/models/signup_request_body.dart';
import 'package:doctor_app/features/signup/data/models/signup_response_body.dart';
import 'package:doctor_app/features/signup/data/repos/signup_repo.dart';

class SignupRepoImplementation implements SignupRepo {
  final ApiService _apiService;

  SignupRepoImplementation(this._apiService);

  @override
  Future<ApiResult<SignupResponseBody>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.faliure(ErrorHandler.handle(error));
    }
  }
}
