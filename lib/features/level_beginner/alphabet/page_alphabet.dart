import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/features/shared/widgets/card.dart';
import 'package:project_englify/features/shared/widgets/widget_text.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AlphabetPage extends StatelessWidget {
  const AlphabetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBg,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                cardHeader("Alphabet", "Pelajari cara pengucapan abjad di materi ini!"),
                const SizedBox(height: 35),
                textTitle("Pelajari", TextAlign.center, AppColors.black),
                const SizedBox(height: 35),
                GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.3,
                  ),
                  children: const [
                    AlphabetCard("A/a", "ei", "a"),
                    AlphabetCard("B/b", "bi", "b"),
                    AlphabetCard("C/c", "si", "c"),
                    AlphabetCard("D/d", "di", "d"),
                    AlphabetCard("E/e", "i", "e"),
                    AlphabetCard("F/f", "ef", "f"),
                    AlphabetCard("G/g", "ji", "g"),
                    AlphabetCard("H/h", "eich", "h"),
                    AlphabetCard("I/i", "ai", "i"),
                    AlphabetCard("J/j", "jei", "j"),
                    AlphabetCard("K/k", "kei", "k"),
                    AlphabetCard("L/l", "el", "l"),
                    AlphabetCard("M/m", "em", "m"),
                    AlphabetCard("N/n", "en", "n"),
                    AlphabetCard("O/o", "ou", "o"),
                    AlphabetCard("P/p", "pi", "p"),
                    AlphabetCard("Q/q", "kyu", "q"),
                    AlphabetCard("R/r", "ar", "r"),
                    AlphabetCard("S/s", "es", "s"),
                    AlphabetCard("T/t", "ti", "t"),
                    AlphabetCard("U/u", "yu", "u"),
                    AlphabetCard("V/v", "vi", "v"),
                    AlphabetCard("W/w", "dabelyu", "w"),
                    AlphabetCard("X/x", "eks", "x"),
                    AlphabetCard("Y/y", "wai", "y"),
                    AlphabetCard("Z/z", "zed", "z"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AlphabetCard extends StatelessWidget {
  final String letter;
  final String pronunciation;
  final String fileName;

  const AlphabetCard(this.letter, this.pronunciation, this.fileName,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () async {
        final player = AudioPlayer();
        await player.play(AssetSource("sounds/alphabet/$fileName.mp3"));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.primary,
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    letter,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    pronunciation,
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 8,
              right: 8,
              child: Icon(
                Icons.volume_up_rounded,
                size: 12,
                color: Color.fromARGB(140, 0, 51, 102),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
