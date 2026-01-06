import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:project_englify/core/constant/app_colors.dart';

class Fruit {
  final String english;
  final String indonesia;
  final String pronunciation;

  const Fruit(this.indonesia, this.english, this.pronunciation);
}

class FruitCardModel extends StatelessWidget {
  final String englishName;
  final String indonesianName;

  const FruitCardModel({
    super.key,
    required this.englishName,
    required this.indonesianName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () async {
        final player = AudioPlayer();
        await player
            .play(AssetSource("sounds/fruit/${englishName.toLowerCase()}.mp3"));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/fruit/${englishName.toLowerCase()}.webp",
                width: 45,
                height: 45,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    englishName,
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "($indonesianName)",
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Animal {
  final String english;
  final String indonesia;
  final String pronunciation;

  const Animal(this.indonesia, this.english, this.pronunciation);
}

class AnimalCardModel extends StatelessWidget {
  final String englishName;
  final String indonesianName;

  const AnimalCardModel({
    super.key,
    required this.englishName,
    required this.indonesianName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () async {
        final player = AudioPlayer();
        await player.play(
            AssetSource("sounds/animal/${englishName.toLowerCase()}.mp3"));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/animal/${englishName.toLowerCase()}.webp",
                width: 45,
                height: 45,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    englishName,
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "($indonesianName)",
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Greeting {
  final String english;
  final String indonesia;
  final String pronunciation;

  const Greeting(this.indonesia, this.english, this.pronunciation);
}

class GreetingCardModel extends StatelessWidget {
  final String englishName;
  final String indonesianName;

  const GreetingCardModel({
    super.key,
    required this.englishName,
    required this.indonesianName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () async {
        final player = AudioPlayer();
        await player.play(
            AssetSource("sounds/greeting/${englishName.toLowerCase()}.mp3"));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                englishName,
                style: const TextStyle(
                  fontFamily: "JosefinSans",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                "($indonesianName)",
                style: const TextStyle(
                  fontFamily: "JosefinSans",
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Noun {
  final String english;
  final String indonesia;
  final String pronunciation;

  const Noun(this.indonesia, this.english, this.pronunciation);
}

class NounCardModel extends StatelessWidget {
  final String englishName;
  final String indonesianName;

  const NounCardModel({
    super.key,
    required this.englishName,
    required this.indonesianName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () async {
        final player = AudioPlayer();
        await player
            .play(AssetSource("sounds/noun/${englishName.toLowerCase()}.mp3"));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/noun/${englishName.toLowerCase()}.webp",
                width: 45,
                height: 45,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    englishName,
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "($indonesianName)",
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Adjective {
  final String english;
  final String indonesia;
  final String pronunciation;

  const Adjective(this.indonesia, this.english, this.pronunciation);
}

class AdjectiveCardModel extends StatelessWidget {
  final String englishName;
  final String indonesianName;

  const AdjectiveCardModel({
    super.key,
    required this.englishName,
    required this.indonesianName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () async {
        final player = AudioPlayer();
        await player.play(
            AssetSource("sounds/adjective/${englishName.toLowerCase()}.mp3"));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                englishName,
                style: const TextStyle(
                  fontFamily: "JosefinSans",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                "($indonesianName)",
                style: const TextStyle(
                  fontFamily: "JosefinSans",
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Verb {
  final String english;
  final String indonesia;
  final String pronunciation;

  const Verb(this.indonesia, this.english, this.pronunciation);
}

class VerbCardModel extends StatelessWidget {
  final String englishName;
  final String indonesianName;

  const VerbCardModel({
    super.key,
    required this.englishName,
    required this.indonesianName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () async {
        final player = AudioPlayer();
        await player
            .play(AssetSource("sounds/verb/${englishName.toLowerCase()}.mp3"));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                englishName,
                style: const TextStyle(
                  fontFamily: "JosefinSans",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                "($indonesianName)",
                style: const TextStyle(
                  fontFamily: "JosefinSans",
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
