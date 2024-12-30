import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/core/networking/dio_factory.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:doctor_app/features/login/data/repos/login_repo_implementation.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/signup/data/repos/signup_repo_implementation.dart';
import 'package:doctor_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getit.registerLazySingleton<LoginRepoImplementation>(
      () => LoginRepoImplementation(getit()));
  //  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));

  // getit.registerSingleton<LoginCubit>(LoginCubit(getit.get<LoginRepo>()));

  //signup
  getit.registerLazySingleton<SignupRepoImplementation>(
      () => SignupRepoImplementation(getit()));

  //   getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));
}
