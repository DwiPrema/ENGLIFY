import 'package:project_englify/pages/detailpage_adjective.dart';
import 'package:project_englify/pages/detailpage_animal.dart';
import 'package:project_englify/pages/detailpage_fruit.dart';
import 'package:project_englify/pages/detailpage_greeting.dart';
import 'package:project_englify/pages/detailpage_noun.dart';
import 'package:project_englify/pages/detailpage_verb.dart';
import 'package:project_englify/pages/home.dart';
import 'package:project_englify/pages/indata_user.dart';
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
import 'package:project_englify/routes.dart';

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
        AppRoutes.alphabetPageRoute: (context) => const AlphabetPage(),
        AppRoutes.numberPageRoute: (context) => const NumberPage(),
        AppRoutes.fruitPageRoute: (context) => const FruitPage(),
        AppRoutes.detailFruitRoute: (context) => const DetailFruitPage(),
        AppRoutes.animalPageRoute: (context) => const AnimalPage(),
        AppRoutes.detailAnimalRoute: (context) => const DetailAnimalPage(),
        AppRoutes.greetingPageRoute: (context) => const GreetingPage(),
        AppRoutes.detailGreetingRoute: (context) => const DetailGreetingPage(),
        AppRoutes.nounPageRoute: (context) => const NounPage(),
        AppRoutes.detailNounRoute: (context) => const DetailNounPage(),
        AppRoutes.adjectivePageRoute: (context) => const AdjectivePage(),
        AppRoutes.detailAdjectiveRoute: (context) =>
            const DetailAdjectivePage(),
        AppRoutes.verbPageRoute: (context) => const VerbPage(),
        AppRoutes.detailVerbRoute: (context) => const DetailVerbPage(),
        AppRoutes.homeRoute: (context) => const HomeRevisi(),
        AppRoutes.inDataUserRoute: (context) => const InDataUser(),
      },
      home: const SplashIndicator(),
    );
  }
}
