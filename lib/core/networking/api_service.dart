
import 'package:dio/dio.dart';
import 'package:docdoc_1/core/networking/api_constants.dart';
import 'package:docdoc_1/features/login/data/models/login_request_body.dart';
import 'package:docdoc_1/features/login/data/models/login_response_body.dart';
import 'package:docdoc_1/features/signup/data/models/sign_up_request_body.dart';
import 'package:docdoc_1/features/signup/data/models/signup_response_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponseBody> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}
