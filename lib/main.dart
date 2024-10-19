import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_router.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return    MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
      );
  }
}