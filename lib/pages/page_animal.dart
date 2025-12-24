import 'package:project_englify/pages/detailpage_animal.dart';
import 'package:project_englify/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/models/model_table.dart';

class AnimalPage extends StatelessWidget {
  const AnimalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    color: Colors.black,
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
                    AnimalCardModel(
                      englishName: "Cat",
                      indonesianName: "Kucing",
                    ),
                    AnimalCardModel(
                      englishName: "Bird",
                      indonesianName: "Burung",
                    ),
                    AnimalCardModel(
                      englishName: "Chicken",
                      indonesianName: "Ayam",
                    ),
                    AnimalCardModel(
                      englishName: "Dog",
                      indonesianName: "Anjing",
                    ),
                    AnimalCardModel(
                      englishName: "Elephant",
                      indonesianName: "Gajah",
                    ),
                    AnimalCardModel(
                      englishName: "Fish",
                      indonesianName: "Ikan",
                    ),
                    AnimalCardModel(
                      englishName: "Horse",
                      indonesianName: "Kuda",
                    ),
                    AnimalCardModel(
                      englishName: "Lion",
                      indonesianName: "Singa",
                    ),
                    AnimalCardModel(
                      englishName: "Rabbit",
                      indonesianName: "Kelinci",
                    ),
                    AnimalCardModel(
                      englishName: "Tiger",
                      indonesianName: "Harimau",
                    ),
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),

                cardLevel(Icons.arrow_forward, "Lihat Lainnya", TextAlign.left,
                    "Pelajari nama nama hewan yang lainnya!", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailAnimalPage()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
