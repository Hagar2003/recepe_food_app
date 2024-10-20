import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe_app/core/utils/images.dart';
import 'package:recipe_app/core/widgets/custom_text_animation.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(Images.splashAnimationImage, width: 200, height: 200),
          const CustomTextAnimation(text: 'Welcome to \nour reciepe app!')
        ],
      ),
    );
  }
}
