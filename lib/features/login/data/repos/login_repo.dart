// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:docdoc_1/core/networking/api_result.dart';
import 'package:docdoc_1/core/networking/api_service.dart';
import 'package:docdoc_1/features/login/data/models/login_request_body.dart';
import 'package:docdoc_1/features/login/data/models/login_response_body.dart';

abstract class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponseBody>> login(LoginRequestBody loginRequestBody);
}
