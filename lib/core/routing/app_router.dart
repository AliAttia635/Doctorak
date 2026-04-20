import 'package:docdoc_1/core/di/dependency_injection.dart';
import 'package:docdoc_1/core/routing/routes.dart';
import 'package:docdoc_1/features/home/data/repos/home_repo_implementation.dart';
import 'package:docdoc_1/features/home/logic/cubit/home_cubit.dart';
import 'package:docdoc_1/features/home/presentation/home_view.dart';
import 'package:docdoc_1/features/login/data/repos/login_repo.dart';
import 'package:docdoc_1/features/login/data/repos/login_repo_implementation.dart';
import 'package:docdoc_1/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc_1/features/login/presentation/login_view.dart';
import 'package:docdoc_1/features/onboarding/presentation/onboaring_view.dart';
import 'package:docdoc_1/features/signup/data/repos/signup_repo_implementation.dart';
import 'package:docdoc_1/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:docdoc_1/features/signup/presentation/signup_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const OnboaringView();
        },
      ),
      GoRoute(
        path: Routes.loginScreen,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => LoginCubit(getit<LoginRepoImplementation>()),
            child: const LoginView(),
          );
        },
      ),
      GoRoute(
        path: Routes.signupScreen,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SignupCubit(getit<SignupRepoImplementation>()),
            child: const SignupView(),
          );
        },
      ),
      GoRoute(
        path: Routes.homeScreen,
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                HomeCubit(getit<HomeRepoImplementation>())
                  ..getSpecializations(),
            child: HomeView(),
          );
        },
      ),
    ],
  );
}
