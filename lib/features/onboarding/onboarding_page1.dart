import 'package:project_englify/features/shared/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
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
      ),
    );
  }
}
