import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/core/routes/routes.dart';
import 'package:project_englify/features/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/models/model_table.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

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
                cardHeader("Greeting", "Pelajari salam dalam bahasa inggris"),

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
                    GreetingCardModel(
                      englishName: "Good morning",
                      indonesianName: "Selamat Pagi",
                    ),
                    GreetingCardModel(
                      englishName: "Good afternoon",
                      indonesianName: "Selamat Siang",
                    ),
                    GreetingCardModel(
                      englishName: "Good evening",
                      indonesianName: "Selamat Sore",
                    ),
                    GreetingCardModel(
                      englishName: "Good night",
                      indonesianName: "Selamat Malam",
                    ),
                    GreetingCardModel(
                      englishName: "How are you",
                      indonesianName: "Apa Kabar",
                    ),
                    GreetingCardModel(
                      englishName: "Nice to meet you",
                      indonesianName: "Senang bertemu dengan mu",
                    ),
                    GreetingCardModel(
                      englishName: "Welcome",
                      indonesianName: "Selamat Datang",
                    ),
                    GreetingCardModel(
                      englishName: "Good bye",
                      indonesianName: "Selamat tinggal",
                    ),
                    GreetingCardModel(
                      englishName: "See you later",
                      indonesianName: "Sampai Jumpa",
                    ),
                    GreetingCardModel(
                      englishName: "See you tommorow",
                      indonesianName: "Sampai jumpa besok",
                    ),
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),

                cardLevel(Icons.arrow_forward, "Lihat Lainnya", TextAlign.left,
                    "Pelajari kosa kata yang lainnya!", () {
                  Navigator.pushNamed(context, AppRoutes.detailGreetingRoute);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
