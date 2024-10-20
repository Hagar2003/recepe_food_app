import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';

class CustomTextAnimation extends StatelessWidget {
  const CustomTextAnimation({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          text,
          textStyle: Styles.Text20.copyWith(color: kPrimaryColor),
          textAlign: TextAlign.center,
          speed: const Duration(milliseconds: 150),
        ),
      ],
      totalRepeatCount: 10,
      pause: const Duration(milliseconds: 500),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}
