import 'package:flutter/material.dart';
import 'package:project_englify/models/model_identity.dart';
import 'package:project_englify/pages/level_beginner.dart';
import 'package:project_englify/widgets/card.dart';

class HomeRevisi extends StatefulWidget {
  const HomeRevisi({
    super.key,
  });

  @override
  State<HomeRevisi> createState() => _HomeRevisiState();
}

class _HomeRevisiState extends State<HomeRevisi> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;

    final identity = args is ModelIdentity ? args : null;

    return Scaffold(
      backgroundColor: const Color(0xff00171A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Center(
                    child: Image.asset(
                      "assets/images/logo_ilustration/logo_256.webp",
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                      height: 70,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                SizedBox(
                  height: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        identity != null ? "Hi, ${identity.name} !" : "Hi !",
                        style: const TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff),
                        ),
                      ),
                      const Text(
                        "Let's start your study !!",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xffA8A8A8),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Day 1",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 31,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        "“Learn English From Zero to Advance”",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA8A8A8),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffD8EFFF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Level",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    cardLevel(
                        Icons.arrow_forward,
                        "Beginner (A1)",
                        TextAlign.left,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
