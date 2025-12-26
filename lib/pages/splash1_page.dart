import 'package:project_englify/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo_ilustration/splash1_ilustration.webp",
          width: 200,
        ),
        const SizedBox(
          height: 16,
        ),
        splashTexth1("Learn English Easily", TextAlign.center),
        splashTextp("We create structured materials.", TextAlign.center)
      ],
    );
  }
}
