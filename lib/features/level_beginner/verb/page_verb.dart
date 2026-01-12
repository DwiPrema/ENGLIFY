import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/core/routes/routes.dart';
import 'package:project_englify/features/shared/widgets/card.dart';
import 'package:project_englify/features/shared/widgets/widget_text.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/models/model_table.dart';

class VerbPage extends StatelessWidget {
  const VerbPage({super.key});

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
                cardHeader("Verb", "Pelajari kata kerja dalam materi ini!"),
                const SizedBox(height: 50),
                popupEnglify(
                    "Verb (kata kerja) adalah kata yang digunakan untuk menyatakan tindakan, aktivitas, kejadian, atau keadaan."),
                const SizedBox(
                  height: 50,
                ),
                textTitle("Pelajari", TextAlign.center, Colors.black),
                const SizedBox(height: 25),
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
                    VocabularyModel(
                      englishName: "Go",
                      indonesianName: "Pergi",
                      type: "verb",
                      isActive: false,
                    ),
                    VocabularyModel(
                      englishName: "Come",
                      indonesianName: "Datang",
                      type: "verb",
                      isActive: false,
                    ),
                    VocabularyModel(
                      englishName: "See",
                      indonesianName: "Melihat",
                      type: "verb",
                      isActive: false,
                    ),
                    VocabularyModel(
                      englishName: "Hear",
                      indonesianName: "Mendengar",
                      type: "verb",
                      isActive: false,
                    ),
                    VocabularyModel(
                      englishName: "Speak",
                      indonesianName: "Berbicara",
                      type: "verb",
                      isActive: false,
                    ),
                    VocabularyModel(
                      englishName: "Eat",
                      indonesianName: "Makan",
                      type: "verb",
                      isActive: false,
                    ),
                    VocabularyModel(
                      englishName: "Drink",
                      indonesianName: "Minum",
                      type: "verb",
                      isActive: false,
                    ),
                    VocabularyModel(
                      englishName: "Sleep",
                      indonesianName: "Tidur",
                      type: "verb",
                      isActive: false,
                    ),
                    VocabularyModel(
                      englishName: "Wake Up",
                      indonesianName: "Bangun",
                      type: "verb",
                      isActive: false,
                    ),
                    VocabularyModel(
                      englishName: "Run",
                      indonesianName: "Berlari",
                      type: "verb",
                      isActive: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                cardLevel(Icons.arrow_forward, "Lihat Lainnya", TextAlign.left,
                    "Pelajari lebih banyak kata kerja sekarang!", () {
                  Navigator.pushNamed(context, AppRoutes.detailVerbRoute);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
