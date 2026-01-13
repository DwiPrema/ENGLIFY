import 'package:project_englify/features/shared/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class Splash4 extends StatelessWidget {
  const Splash4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo_ilustration/splash4_ilustration.webp",
            width: 200,
          ),
          const SizedBox(
            height: 16,
          ),
          splashTexth1("Let’s start your journey !", TextAlign.center),
          splashTextp(
              "We’re waiting for you, today’s the wonderfull day to start.",
              TextAlign.center)
        ],
      ),
    );
  }
}
