import 'package:flutter/material.dart';
import 'package:englify_project/widgets/widget_text.dart';
import 'package:audioplayers/audioplayers.dart';

Widget cardSect(
    String imagePath, String text, Color color, VoidCallback onPres) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: onPres,
      child: Container(
        width: 165,
        height: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(imagePath),
                width: 120,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  textAlign: TextAlign.center,
                  text,
                  style: const TextStyle(
                    fontFamily: "JosefinSans",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget cardLevel(IconData icon, String title, TextAlign align, String paragraph,
    VoidCallback onPres) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xFFB4EC51).withOpacity(0.8),
          const Color(0xff1F4C6B),
        ],
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          littleText(title, align),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: lightText(paragraph, const Color(0xff242424)),
              ),
              const SizedBox(
                width: 16,
              ),
              ElevatedButton(
                onPressed: onPres,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(), // bikin tombol bulat
                  backgroundColor: const Color(0xff000320),
                  fixedSize: const Size(50, 50), // ukuran tombol
                  padding: EdgeInsets.zero, // hapus padding default
                ),
                child: Icon(
                  icon,
                  size: 16,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget cardNumber(String textH1, String textpEng, String textpInd, Color color,
    String soundPath) {
  return Material(
    child: InkWell(
      onTap: () async {
        final player = AudioPlayer();
        await player.play(UrlSource(soundPath));
      },
      child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      textH1,
                      style: const TextStyle(
                        fontFamily: "JosefinSans",
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Column(
                      children: [
                        littleText(textpEng, TextAlign.left),
                        littleText(textpInd, TextAlign.left),
                      ],
                    )
                  ],
                ),
                const Icon(
                  Icons.volume_up_sharp,
                  size: 25,
                  color: Color.fromARGB(170, 0, 0, 0),
                )
              ],
            ),
          )),
    ),
  );
}

Widget cardHeader(String title, String paragraph) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      color: const Color(0xff002137),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: "JosefinSans",
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          paragraph,
          style: const TextStyle(
            fontFamily: "JosefinSans",
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
      ],
    ),
  );
}

Widget popupEnglify(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Column(
        children: [
          Container(
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFB4EC51),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(1),
                )),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: "JosefinSans",
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
      SizedBox(
        width: 25,
      ),
      Image(
        image: AssetImage("assets/images/logo.png"),
        width: 70,
        alignment: Alignment.center,
      ),
    ],
  );
}
