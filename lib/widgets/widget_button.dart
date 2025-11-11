import 'package:flutter/material.dart';

Widget btn(double width, double height, Color bgcolor, Color foreColor,
    String text, VoidCallback onPres) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
    ),
    child: ElevatedButton(
      onPressed: onPres,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        foregroundColor: foreColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: "JosefinSans",
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
      ),
    ),
  );
}
