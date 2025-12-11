import 'package:englify_project/widgets/card.dart';
import 'package:englify_project/widgets/widget_text.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                cardHeader("Number", "Pelajari angka-angka dalam bahasa inggris"),
                const SizedBox(height: 35),
                textTitle("Pelajari", TextAlign.center, Colors.black),
                const SizedBox(height: 35),
                GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.2,
                  ),
                  children: const [
                    NumberCard("1", "One", "(Satu)"),
                    NumberCard("2", "Two", "(Dua)"),
                    NumberCard("3", "Three", "(Tiga)"),
                    NumberCard("4", "Four", "(Empat)"),
                    NumberCard("5", "Five", "(Lima)"),
                    NumberCard("6", "Six", "(Enam)"),
                    NumberCard("7", "Seven", "(Tujuh)"),
                    NumberCard("8", "Eight", "(Delapan)"),
                    NumberCard("9", "Nine", "(Sembilan)"),
                    NumberCard("10", "Ten", "(Sepuluh)"),
                    NumberCard("11", "Eleven", "(Sebelas)"),
                    NumberCard("12", "Twelve", "(Dua Belas)"),
                    NumberCard("13", "Thirteen", "(Tiga Belas)"),
                    NumberCard("14", "Fourteen", "(Empat Belas)"),
                    NumberCard("15", "Fifteen", "(Lima Belas)"),
                    NumberCard("16", "Sixteen", "(Enam Belas)"),
                    NumberCard("17", "Seventeen", "(Tujuh Belas)"),
                    NumberCard("18", "Eighteen", "(Delapan Belas)"),
                    NumberCard("19", "Nineteen", "(Sembilan Belas)"),
                    NumberCard("20", "Twenty", "(Dua Puluh)"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NumberCard extends StatelessWidget {
  final String number;
  final String letter;
  final String translate;

  const NumberCard(this.number, this.letter, this.translate, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () async {
        final player = AudioPlayer();
        await player.play(
            UrlSource("assets/sounds/number/${letter.toLowerCase()}.mp3"));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff8BC73F),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    number,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    letter,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    translate,
                    style: const TextStyle(
                      fontFamily: "JosefinSans",
                      fontSize: 10,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 8,
              right: 8,
              child: Icon(
                Icons.volume_up_rounded,
                size: 12,
                color: Color.fromARGB(140, 0, 51, 102),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
