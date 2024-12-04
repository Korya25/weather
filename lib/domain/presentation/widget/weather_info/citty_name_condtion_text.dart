import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CondtionOrNameCityText extends StatelessWidget {
  const CondtionOrNameCityText({
    super.key,
    required this.title,
    this.fontSize = 25,
    this.endSubString = 15,
  });
  final String title;
  final double fontSize;
  final int endSubString;

  @override
  Widget build(BuildContext context) {
    final String subString;
    if (title.length < 10) {
      subString = title;
    } else {
      subString = title.substring(0, endSubString);
    }
    return Text(
      subString,
      style: GoogleFonts.abel(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
