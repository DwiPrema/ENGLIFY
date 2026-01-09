import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/core/routes/routes.dart';
import 'package:project_englify/features/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/models/model_table.dart';

class AnimalPage extends StatelessWidget {
  const AnimalPage({super.key});

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
                    "Animal", "Pelajari nama nama hewan dalam bahasa inggris"),

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

                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.7,
                  children: const [
                    VocabularyModel(
                      englishName: "Cat",
                      indonesianName: "Kucing",
                      type: "animal",
                    ),
                    VocabularyModel(
                      englishName: "Bird",
                      indonesianName: "Burung",
                      type: "animal",
                    ),
                    VocabularyModel(
                      englishName: "Chicken",
                      indonesianName: "Ayam",
                      type: "animal",
                    ),
                    VocabularyModel(
                      englishName: "Dog",
                      indonesianName: "Anjing",
                      type: "animal",
                    ),
                    VocabularyModel(
                      englishName: "Elephant",
                      indonesianName: "Gajah",
                      type: "animal",
                    ),
                    VocabularyModel(
                      englishName: "Fish",
                      indonesianName: "Ikan",
                      type: "animal",
                    ),
                    VocabularyModel(
                      englishName: "Horse",
                      indonesianName: "Kuda",
                      type: "animal",
                    ),
                    VocabularyModel(
                      englishName: "Lion",
                      indonesianName: "Singa",
                      type: "animal",
                    ),
                    VocabularyModel(
                      englishName: "Rabbit",
                      indonesianName: "Kelinci",
                      type: "animal",
                    ),
                    VocabularyModel(
                      englishName: "Tiger",
                      indonesianName: "Harimau",
                      type: "animal",
                    ),
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),

                cardLevel(Icons.arrow_forward, "Lihat Lainnya", TextAlign.left,
                    "Pelajari nama nama hewan yang lainnya!", () {
                  Navigator.pushNamed(context, AppRoutes.detailAnimalRoute);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
