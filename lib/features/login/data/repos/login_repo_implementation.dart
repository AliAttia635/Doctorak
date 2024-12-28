import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:doctor_app/features/login/data/models/login_response_body.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';

class LoginRepoImplementation implements LoginRepo {
  final ApiService _apiService;
  LoginRepoImplementation(this._apiService);

  @override
  Future<ApiResult<LoginResponseBody>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.faliure(ErrorHandler.handle(error));
    }
  }
}
