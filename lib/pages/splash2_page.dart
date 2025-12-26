import 'package:project_englify/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo_ilustration/splash2_ilustration.webp",
          width: 200,
        ),
        const SizedBox(
          height: 16,
        ),
        splashTexth1("Practice Every Day", TextAlign.center),
        splashTextp("Practice vocabulary, grammar, and pronunciation anytime.",
            TextAlign.center)
      ],
    );
  }
}
