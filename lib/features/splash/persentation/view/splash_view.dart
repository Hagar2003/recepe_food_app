import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
    const  Duration(seconds: 1),
      (_) {
        GoRouter.of(context).pushReplacement(AppRouter.kAppBottomNavigation);
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color.fromARGB(255, 172, 240, 216),
      body: SplashViewBody(),
    );
  }
}

