import 'package:englify_project/pages/page_adjective.dart';
import 'package:englify_project/pages/page_alphabet.dart';
import 'package:englify_project/pages/page_animal.dart';
import 'package:englify_project/pages/page_fruit.dart';
import 'package:englify_project/pages/page_greeting.dart';
import 'package:englify_project/pages/page_noun.dart';
import 'package:englify_project/pages/page_number.dart';
import 'package:englify_project/pages/page_verb.dart';
import 'package:englify_project/pages/splash_page.dart';
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
      home: const Splash(),
    );
  }
}
