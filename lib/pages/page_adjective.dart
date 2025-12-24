import 'package:project_englify/models/model_table.dart';
import 'package:project_englify/pages/detailpage_adjective.dart';
import 'package:project_englify/widgets/card.dart';
import 'package:project_englify/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class AdjectivePage extends StatelessWidget {
  const AdjectivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                cardHeader(
                    "Adjective", "Pelajari kata sifat dalam materi ini!"),
                const SizedBox(height: 25),
                popupEnglify(
                    "Adjective (Kata sifat) adalah kata yang menunjukkan keadaan, kondisi, atau ekspresi seseorang."),
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
                    AdjectiveCardModel(
                        englishName: "Big", indonesianName: "Besar"),
                    AdjectiveCardModel(
                        englishName: "Small", indonesianName: "Kecil"),
                    AdjectiveCardModel(
                        englishName: "Long", indonesianName: "Panjang"),
                    AdjectiveCardModel(
                        englishName: "Short", indonesianName: "Pendek"),
                    AdjectiveCardModel(
                        englishName: "Tall", indonesianName: "Tinggi"),
                    AdjectiveCardModel(
                        englishName: "Bad", indonesianName: "Buruk"),
                    AdjectiveCardModel(
                        englishName: "Beautifull", indonesianName: "Cantik"),
                    AdjectiveCardModel(
                        englishName: "Handsome", indonesianName: "Ganteng"),
                    AdjectiveCardModel(
                        englishName: "Ugly", indonesianName: "Jelek"),
                    AdjectiveCardModel(
                        englishName: "Crazy", indonesianName: "Gila"),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                cardLevel(Icons.arrow_forward, "Lihat Lainnya", TextAlign.left,
                    "Pelajari lebih banyak kata sifat sekarang!", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailAdjectivePage()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
