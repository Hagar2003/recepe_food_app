import 'package:flutter/material.dart';

class BannerPart extends StatelessWidget {
  const BannerPart({super.key});

  @override
  Widget build(BuildContext context) {
  return  Container(
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
        
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/banner.png',
              ))),
    );
  }
}
