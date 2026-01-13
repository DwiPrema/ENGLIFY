import 'package:flutter/material.dart';
import 'package:project_englify/core/constant/app_colors.dart';

Widget englifyText(String text, TextAlign align, double size) {
  return Stack(
    children: [
      Text(
        text,
        textAlign: align,
        style: TextStyle(
          fontFamily: "Modak",
          fontSize: size,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 6
            ..color = AppColors.black,
        ),
      ),
      Text(
        text,
        textAlign: align,
        style: TextStyle(
          fontFamily: "Modak",
          fontSize: size,
          color: AppColors.white,
        ),
      ),
    ],
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

Widget labelText(String text, Color textColor) {
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
      color: AppColors.paragraph,
      decoration: TextDecoration.none,
    ),
  );
}
