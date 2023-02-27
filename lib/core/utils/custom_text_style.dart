import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  TextStyle synpoStyle(
      {Color color = Colors.black,
      double fontSize = 14,
      FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontFamily: "Synkopy");
  }

  TextStyle alYamani(
      {Color color = Colors.black,
      double fontSize = 14,
      FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontFamily: "AlYamani");
  }

  static TextStyle mainTitle =
      GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold);

  static TextStyle mainContent =
      GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.normal);

  static TextStyle dateTitle =
      GoogleFonts.roboto(fontSize: 13, fontWeight: FontWeight.w500);
}
