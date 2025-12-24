import 'package:project_englify/widgets/widget_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Splash4());
}

class Splash4 extends StatelessWidget {
  const Splash4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/splash4_ilustration.png",
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
    );
  }
}
