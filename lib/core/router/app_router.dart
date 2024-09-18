import 'package:go_router/go_router.dart';
import 'package:tap_doc_app/features/onboarding/ui/onboarding_view.dart';

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
        builder: (context, state) => const LoginView(),
      ),
      // GoRoute(
      //   path: kHome,
      //   builder: (context, state) =>  HomeView(),
      // ),
    ],
  );
}
