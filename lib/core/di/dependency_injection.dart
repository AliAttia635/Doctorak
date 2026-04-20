import 'package:dio/dio.dart';
import 'package:docdoc_1/core/networking/api_service.dart';
import 'package:docdoc_1/core/networking/dio_factory.dart';
import 'package:docdoc_1/features/home/data/repos/home_repo_implementation.dart';
import 'package:docdoc_1/features/login/data/repos/login_repo_implementation.dart';
import 'package:docdoc_1/features/signup/data/repos/signup_repo_implementation.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getit.registerLazySingleton<LoginRepoImplementation>(
    () => LoginRepoImplementation(getit()),
  );
  //  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));

  // getit.registerSingleton<LoginCubit>(LoginCubit(getit.get<LoginRepo>()));

  //signup
  getit.registerLazySingleton<SignupRepoImplementation>(
    () => SignupRepoImplementation(getit()),
  );

  //   getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));

  //home
  getit.registerLazySingleton<HomeRepoImplementation>(
    () => HomeRepoImplementation(getit()),
  );
}
