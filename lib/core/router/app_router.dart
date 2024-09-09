import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // Login
  static const kLogin = '/loginScreen';

  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) =>  OnBoardingScreen(),
      // ),
    ],
  );
}
