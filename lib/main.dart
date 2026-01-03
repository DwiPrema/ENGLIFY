import 'package:project_englify/features/level_beginner/adjective/detailpage_adjective.dart';
import 'package:project_englify/features/level_beginner/animal/detailpage_animal.dart';
import 'package:project_englify/features/level_beginner/fruit/detailpage_fruit.dart';
import 'package:project_englify/features/level_beginner/greeting/detailpage_greeting.dart';
import 'package:project_englify/features/level_beginner/noun/detailpage_noun.dart';
import 'package:project_englify/features/level_beginner/verb/detailpage_verb.dart';
import 'package:project_englify/features/home/home.dart';
import 'package:project_englify/features/identity_user/identity_user.dart';
import 'package:project_englify/features/level_beginner/adjective/page_adjective.dart';
import 'package:project_englify/features/level_beginner/alphabet/page_alphabet.dart';
import 'package:project_englify/features/level_beginner/animal/page_animal.dart';
import 'package:project_englify/features/level_beginner/fruit/page_fruit.dart';
import 'package:project_englify/features/level_beginner/greeting/page_greeting.dart';
import 'package:project_englify/features/level_beginner/noun/page_noun.dart';
import 'package:project_englify/features/level_beginner/number/page_number.dart';
import 'package:project_englify/features/level_beginner/verb/page_verb.dart';
import 'package:project_englify/features/onboarding/onboarding_main.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/core/routes/routes.dart';

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
        AppRoutes.homeRoute: (context) => const Home(),
        AppRoutes.inDataUserRoute: (context) => const InDataUser(),
      },
      home: const MainOnboarding(),
    );
  }
}
