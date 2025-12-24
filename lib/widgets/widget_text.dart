import 'package:flutter/material.dart';

Widget textSub(String text, TextAlign align) {
  return Text(
    textAlign: align,
    text,
    style: const TextStyle(
      fontFamily: "Montserrat",
      fontSize: 24,
      fontWeight: FontWeight.w800,
    ),
  );
}

Widget littleText(String text, TextAlign align) {
  return Text(
    textAlign: align,
    text,
    style: const TextStyle(
      fontFamily: "JosefinSans",
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
  );
}

Widget textTitle(String text, TextAlign align, Color textColor) {
  return Text(
    text,
    textAlign: align,
    style: TextStyle(
      fontFamily: "JosefinSans",
      fontSize: 25,
      fontWeight: FontWeight.w700,
      color: textColor,
    ),
  );
}

Widget lightText(String text, Color textColor) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: "JosefinSans",
      fontSize: 16,
      height: 1,
      fontWeight: FontWeight.w300,
      color: textColor,
    ),
  );
}

Widget splashTexth1(String text, TextAlign align) {
  return Text(
    text,
    textAlign: align,
    style: const TextStyle(
      fontFamily: "JosefinSans",
      fontSize: 31,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
  );
}

Widget splashTextp(String text, TextAlign align) {
  return Text(
    text,
    textAlign: align,
    style: const TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0xff505050),
      decoration: TextDecoration.none,
    ),
  );
}
