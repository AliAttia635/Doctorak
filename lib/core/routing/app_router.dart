import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/home/presentation/views/home_view.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:doctor_app/features/login/data/repos/login_repo_implementation.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/presentation/login_view.dart';
import 'package:doctor_app/features/onboarding/presentation/onboaring_view.dart';
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
        path: Routes.homeScreen,
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
