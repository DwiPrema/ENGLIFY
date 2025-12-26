import 'package:project_englify/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo_ilustration/splash3_ilustration.webp",
          width: 200,
        ),
        const SizedBox(
          height: 16,
        ),
        splashTexth1("Boost Your Confidence", TextAlign.center),
        splashTextp("Build confidence in English for school and your future.", TextAlign.center)
      ],
    );
  }
}
