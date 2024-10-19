import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/home/presentation/views/bottomn_navigation.dart';

abstract class AppRouter {
  // static const kBoarding = '/OnBoarding';

  static final router = GoRouter(routes: [
    GoRoute(
      path: ('/'),
      
      builder: (context, state) => const AppBottomNavigation(),
    ),]);}