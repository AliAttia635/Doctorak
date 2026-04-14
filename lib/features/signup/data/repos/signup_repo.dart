import 'package:docdoc_1/core/networking/api_result.dart';
import 'package:docdoc_1/core/networking/api_service.dart';
import 'package:docdoc_1/features/signup/data/models/sign_up_request_body.dart';
import 'package:docdoc_1/features/signup/data/models/signup_response_body.dart';

abstract class SignupRepo {
  final ApiService _apiService;
  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponseBody>> signup(
      SignupRequestBody signupRequestBody);
}
