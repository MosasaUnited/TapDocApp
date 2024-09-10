import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // Login
  static const kLogin = '/loginScreen';
  static const kHome = '/home';

  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) =>  OnBoardingScreen(),
      // ),
      // GoRoute(
      //   path: kHome,
      //   builder: (context, state) =>  HomeView(),
      // ),
    ],
  );
}
