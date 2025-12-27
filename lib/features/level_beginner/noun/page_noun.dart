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
                // 🔷 Bagian Header Biru
                cardHeader("Noun", "Pelajari kata benda dalam bahasa inggris"),

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
                    NounCardModel(
                      englishName: "Table",
                      indonesianName: "Meja",
                    ),
                    NounCardModel(
                      englishName: "Chair",
                      indonesianName: "Kursi",
                    ),
                    NounCardModel(
                      englishName: "Door",
                      indonesianName: "Pintu",
                    ),
                    NounCardModel(
                      englishName: "Fan",
                      indonesianName: "Kipas Angin",
                    ),
                    NounCardModel(
                      englishName: "Floor",
                      indonesianName: "Lantai",
                    ),
                    NounCardModel(
                      englishName: "Lamp",
                      indonesianName: "Lampu",
                    ),
                    NounCardModel(
                      englishName: "Roof",
                      indonesianName: "Atap",
                    ),
                    NounCardModel(
                      englishName: "Television",
                      indonesianName: "Televisi",
                    ),
                    NounCardModel(
                      englishName: "Wall",
                      indonesianName: "Tembok",
                    ),
                    NounCardModel(
                      englishName: "Window",
                      indonesianName: "Jendela",
                    ),
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
