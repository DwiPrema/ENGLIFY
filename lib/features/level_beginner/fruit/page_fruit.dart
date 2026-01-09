import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/core/routes/routes.dart';
import 'package:project_englify/features/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/models/model_table.dart';

class FruitPage extends StatelessWidget {
  const FruitPage({super.key});

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
                // 🔷 Bagian Header Biru
                cardHeader(
                    "Fruit", "Pelajari nama nama buah dalam bahasa inggris"),

                const SizedBox(height: 40),

                // 🟩 Judul “Pelajari”
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

                // 🍎 Grid Card Buah
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.7,
                  children: const [
                    VocabularyModel(
                      englishName: "Apple",
                      indonesianName: "Apel",
                      type: "fruit",
                    ),
                    VocabularyModel(
                      englishName: "Banana",
                      indonesianName: "Pisang",
                      type: "fruit",
                    ),
                    VocabularyModel(
                      englishName: "Cherry",
                      indonesianName: "Ceri",
                      type: "fruit",
                    ),
                    VocabularyModel(
                      englishName: "Grape",
                      indonesianName: "Anggur",
                      type: "fruit",
                    ),
                    VocabularyModel(
                      englishName: "Lemon",
                      indonesianName: "Lemon",
                      type: "fruit",
                    ),
                    VocabularyModel(
                      englishName: "Orange",
                      indonesianName: "Jeruk",
                      type: "fruit",
                    ),
                    VocabularyModel(
                      englishName: "Pear",
                      indonesianName: "Pir",
                      type: "fruit",
                    ),
                    VocabularyModel(
                      englishName: "Pineapple",
                      indonesianName: "Nanas",
                      type: "fruit",
                    ),
                    VocabularyModel(
                      englishName: "Strawberry",
                      indonesianName: "Stroberi",
                      type: "fruit",
                    ),
                    VocabularyModel(
                      englishName: "Watermelon",
                      indonesianName: "Semangka",
                      type: "fruit",
                    ),
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),

                cardLevel(Icons.arrow_forward, "Lihat Lainnya", TextAlign.left,
                    "Pelajari nama nama buah yang lainnya!", () {
                  Navigator.pushNamed(context, AppRoutes.detailFruitRoute);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
