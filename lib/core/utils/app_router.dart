import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/home/presentation/views/bottomn_navigation.dart';
import 'package:recipe_app/features/splash/persentation/view/splash_view.dart';

abstract class AppRouter {
  // static const kBoarding = '/OnBoarding';
  static const kAppBottomNavigation = '/appBottomNavigation';
  static final router = GoRouter(routes: [
    GoRoute(
      path: ('/'),
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: (kAppBottomNavigation),
      builder: (context, state) => const AppBottomNavigation(),
    ),
  ]);
}
