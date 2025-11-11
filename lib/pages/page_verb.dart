<<<<<<< HEAD
import 'package:englify_project/models/model_table.dart';
import 'package:englify_project/pages/detailpage_verb.dart';
import 'package:englify_project/widgets/card.dart';
import 'package:englify_project/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class VerbPage extends StatelessWidget {
  const VerbPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                cardHeader("Verb", "Pelajari kata kerja dalam materi ini!"),
                const SizedBox(height: 35),
                textTitle("Pelajari", TextAlign.center, Colors.black),
                const SizedBox(height: 35),
                GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.7,
                  ),
                  children: const [
                    VerbCardModel(englishName: "Go", indonesianName: "Pergi"),
                    VerbCardModel(
                        englishName: "Come", indonesianName: "Datang"),
                    VerbCardModel(
                        englishName: "See", indonesianName: "Melihat"),
                    VerbCardModel(
                        englishName: "Hear", indonesianName: "Mendengar"),
                    VerbCardModel(
                        englishName: "Speak", indonesianName: "Berbicara"),
                    VerbCardModel(englishName: "Eat", indonesianName: "Makan"),
                    VerbCardModel(
                        englishName: "Drink", indonesianName: "Minum"),
                    VerbCardModel(
                        englishName: "Sleep", indonesianName: "Tidur"),
                    VerbCardModel(
                        englishName: "Wake Up", indonesianName: "Bangun"),
                    VerbCardModel(
                        englishName: "Run", indonesianName: "Berlari"),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                cardLevel(Icons.arrow_forward, "Lihat Lainnya", TextAlign.left,
                    "Pelajari lebih banyak kata kerja sekarang!", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailVerbPage()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
=======
import 'package:englify_project/models/model_table.dart';
import 'package:englify_project/pages/detailpage_verb.dart';
import 'package:englify_project/widgets/card.dart';
import 'package:englify_project/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class VerbPage extends StatelessWidget {
  const VerbPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                cardHeader("Verb", "Pelajari kata kerja dalam materi ini!"),
                const SizedBox(height: 35),
                textTitle("Pelajari", TextAlign.center, Colors.black),
                const SizedBox(height: 35),
                GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.7,
                  ),
                  children: const [
                    VerbCardModel(englishName: "Go", indonesianName: "Pergi"),
                    VerbCardModel(
                        englishName: "Come", indonesianName: "Datang"),
                    VerbCardModel(
                        englishName: "See", indonesianName: "Melihat"),
                    VerbCardModel(
                        englishName: "Hear", indonesianName: "Mendengar"),
                    VerbCardModel(
                        englishName: "Speak", indonesianName: "Berbicara"),
                    VerbCardModel(englishName: "Eat", indonesianName: "Makan"),
                    VerbCardModel(
                        englishName: "Drink", indonesianName: "Minum"),
                    VerbCardModel(
                        englishName: "Sleep", indonesianName: "Tidur"),
                    VerbCardModel(
                        englishName: "Wake Up", indonesianName: "Bangun"),
                    VerbCardModel(
                        englishName: "Run", indonesianName: "Berlari"),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                cardLevel(Icons.arrow_forward, "Lihat Lainnya", TextAlign.left,
                    "Pelajari lebih banyak kata kerja sekarang!", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailVerbPage()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
>>>>>>> 7d3a9635dfac6d07abaae3400e213fe01f11448a
