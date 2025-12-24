import 'package:project_englify/pages/page_adjective.dart';
import 'package:project_englify/pages/page_alphabet.dart';
import 'package:project_englify/pages/page_animal.dart';
import 'package:project_englify/pages/page_fruit.dart';
import 'package:project_englify/pages/page_greeting.dart';
import 'package:project_englify/pages/page_noun.dart';
import 'package:project_englify/pages/page_number.dart';
import 'package:project_englify/pages/page_verb.dart';
import 'package:project_englify/pages/splash_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Englify());
}

class Englify extends StatelessWidget {
  const Englify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/alphabetPage': (context) => const AlphabetPage(),
        '/numberPage': (context) => const NumberPage(),
        '/fruitPage': (context) => const FruitPage(),
        '/animalPage': (context) => const AnimalPage(),
        '/greetingPage': (context) => const GreetingPage(),
        '/nounPage': (context) => const NounPage(),
        '/adjectivePage': (context) => const AdjectivePage(),
        '/verbPage': (context) => const VerbPage(),
      },
      home: const Scaffold(
        backgroundColor: Color(0xffD8EFFF),
        body: SplashIndicator(),
      ),
    );
  }
}
