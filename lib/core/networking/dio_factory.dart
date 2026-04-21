import 'package:dio/dio.dart';
import 'package:docdoc_1/core/helpers/constants.dart';
import 'package:docdoc_1/core/helpers/shared_prefrences_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();

      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;

      addDioInterceptor();
    }

    return dio!;
  }

  static void addDioInterceptor() async {
    dio?.interceptors.addAll([
      await _authInterceptor(),
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
      ),
    ]);
  }

  static Future<InterceptorsWrapper> _authInterceptor() async {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        // to be secured later by fetching the token from secure storage
        String token = await SharedPrefHelper.getString(
          SharedPrefKeys.userToken,
        );

        if (token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }

        options.headers['Accept'] = 'application/json';

        return handler.next(options);
      },
    );
  }
}
