import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/core/routes/routes.dart';
import 'package:project_englify/features/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/models/model_table.dart';

class NounPage extends StatelessWidget {
  const NounPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                cardHeader("Noun", "Pelajari kata benda dalam bahasa inggris"),

                const SizedBox(height: 40),

                const Text(
                  "Pelajari",
                  style: TextStyle(
                    fontFamily: "JosefinSans",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),

                const SizedBox(height: 25),

                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.7,
                  children: const [
                    VocabularyModel(
                      englishName: "Table",
                      indonesianName: "Meja",
                      type: "noun"
                    ),
                    VocabularyModel(
                      englishName: "Chair",
                      indonesianName: "Kursi",
                      type: "noun"
                    ),
                    VocabularyModel(
                      englishName: "Door",
                      indonesianName: "Pintu",
                      type: "noun"
                    ),
                    VocabularyModel(
                      englishName: "Fan",
                      indonesianName: "Kipas Angin",
                      type: "noun"
                    ),
                    VocabularyModel(
                      englishName: "Floor",
                      indonesianName: "Lantai",
                      type: "noun"
                    ),
                    VocabularyModel(
                      englishName: "Lamp",
                      indonesianName: "Lampu",
                      type: "noun"
                    ),
                    VocabularyModel(
                      englishName: "Roof",
                      indonesianName: "Atap",
                      type: "noun"
                    ),
                    VocabularyModel(
                      englishName: "Television",
                      indonesianName: "Televisi",
                      type: "noun"
                    ),
                    VocabularyModel(
                        englishName: "Window",
                        indonesianName: "Jendela",
                        type: "noun"),
                    VocabularyModel(
                        englishName: "Wall",
                        indonesianName: "Tembok",
                        type: "noun")
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),

                cardLevel(Icons.arrow_forward, "Lihat Lainnya", TextAlign.left,
                    "Pelajari kosa kata benda yang lainnya!", () {
                  Navigator.pushNamed(context, AppRoutes.detailNounRoute);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
