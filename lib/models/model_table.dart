import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:project_englify/core/constant/app_colors.dart';

class Vocabulary {
  final String english;
  final String indonesia;
  final String pronunciation;
  final String type;

  const Vocabulary(
      {required this.indonesia,
      required this.english,
      required this.pronunciation,
      required this.type});
  factory Vocabulary.fromJson(Map<String, dynamic> json) {
    return Vocabulary(
        indonesia: json["indonesia"],
        english: json["english"],
        pronunciation: json["pronunciation"],
        type: json["type"]);
  }
}

class VocabularyModel extends StatelessWidget {
  final String englishName;
  final String indonesianName;
  final String type;
  final bool isActive;

  const VocabularyModel({
    super.key,
    required this.englishName,
    required this.indonesianName,
    required this.type,
    this.isActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () async {
        final player = AudioPlayer();
        await player
            .play(AssetSource("sounds/$type/${englishName.toLowerCase()}.mp3"));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              isActive
                  ? Image.asset(
                      "assets/images/$type/${englishName.toLowerCase()}.webp",
                      width: 45,
                      height: 45,
                    )
                  : const SizedBox.shrink(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      englishName,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "JosefinSans",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "($indonesianName)",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "JosefinSans",
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
