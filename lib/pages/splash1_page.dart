import 'package:project_englify/widgets/widget_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Splash1());
}

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/splash1_ilustration.png",
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
