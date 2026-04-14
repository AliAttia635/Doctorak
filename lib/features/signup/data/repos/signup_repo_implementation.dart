import 'package:docdoc_1/core/networking/api_error_handler.dart';
import 'package:docdoc_1/core/networking/api_result.dart';
import 'package:docdoc_1/core/networking/api_service.dart';
import 'package:docdoc_1/features/signup/data/models/sign_up_request_body.dart';
import 'package:docdoc_1/features/signup/data/models/signup_response_body.dart';
import 'package:docdoc_1/features/signup/data/repos/signup_repo.dart';

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
      // returns errorHandler object
      return ApiResult.faliure(ErrorHandler.handle(error));
    }
  }
}
