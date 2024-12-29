import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/features/signup/data/models/signup_request_body.dart';
import 'package:doctor_app/features/signup/data/models/signup_response_body.dart';

abstract class SignupRepo {
  final ApiService _apiService;
  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponseBody>> signup(
      SignupRequestBody signupRequestBody);
}
