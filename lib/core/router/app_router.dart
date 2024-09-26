import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_doc_app/core/di/dependency_injection.dart';
import 'package:tap_doc_app/features/login/logic/login_cubit.dart';
import 'package:tap_doc_app/features/onboarding/ui/onboarding_view.dart';

import '../../features/home/ui/home_view.dart';
import '../../features/login/ui/login_view.dart';

abstract class AppRouter {
  // Login
  static const kLogin = '/loginScreen';
  static const kHome = '/home';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginView(),
        ),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
