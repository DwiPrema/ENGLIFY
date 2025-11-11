import 'package:englify_project/pages/level_beginner.dart';
import 'package:englify_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:englify_project/widgets/widget_text.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff002137),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textTitle("Belajar bahasa inggris otodidak dari 0",
                          TextAlign.left, const Color(0xffffffff)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              textTitle("Level", TextAlign.center, const Color(0xff000000)),
              const SizedBox(height: 25),
              cardLevel(Icons.arrow_forward, "Beginner (A1)", TextAlign.left,
                  "Level dasar untuk memahami kosakata dan kalimat sederhana.",
                  () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BeginnerPage()));
              }),
              const SizedBox(height: 20),
              cardLevel(
                  Icons.lock_outline,
                  "Elementary (A2)",
                  TextAlign.left,
                  "Level awal untuk membangun kemampuan berbicara dan memahami teks sederhana.",
                  () {}),
              const SizedBox(height: 20),
              cardLevel(
                  Icons.lock_outline,
                  "Intermediate (B1)",
                  TextAlign.left,
                  "Level menengah untuk meningkatkan kelancaran dan pemahaman.",
                  () {}),
              const SizedBox(height: 20),
              cardLevel(
                  Icons.lock_outline,
                  "Upper Intermediate (B2)",
                  TextAlign.left,
                  "Level lanjut untuk memperdalam kelancaran dan ekspresi alami.",
                  () {}),
            ],
          ),
        )),
      )),
    );
  }
}
