import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/colors.dart';


class TTextTheme {
  static TextTheme lightTextTheme =  TextTheme(
      headlineLarge: GoogleFonts.mavenPro(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: tTextColor
      ),
      headlineMedium: GoogleFonts.mavenPro(
        fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: tTextColor
      ),
      headlineSmall: GoogleFonts.mavenPro(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: tTextColor
      ),
      titleLarge: GoogleFonts.mavenPro(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: tTextColor
      ),
      titleMedium: GoogleFonts.mavenPro(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: tTextColor
      ),
      titleSmall: GoogleFonts.mavenPro(
          fontSize: 22.0,
          fontWeight: FontWeight.w400,
          color: tTextColor
      ),

      displayLarge: GoogleFonts.mavenPro(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: tDarkColor
      ),
      displayMedium: GoogleFonts.mavenPro(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: tDarkColor
      ),
      displaySmall: GoogleFonts.mavenPro(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: tDarkColor
      ),
  );
  static TextTheme darkTextTheme =  TextTheme(
    headlineLarge: GoogleFonts.lato(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: tWhiteColor
      ),
      headlineMedium: GoogleFonts.lato(
        fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: tWhiteColor
      ),
      headlineSmall: GoogleFonts.lato(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: tWhiteColor
      ),
      titleLarge: GoogleFonts.lato(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: tWhiteColor
      ),
      titleMedium: GoogleFonts.lato(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: tWhiteColor
      ),
      titleSmall: GoogleFonts.lato(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: tWhiteColor
      ),

      displayLarge: GoogleFonts.lato(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: tWhiteColor
      ),
      displayMedium: GoogleFonts.lato(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: tWhiteColor
      ),
      displaySmall: GoogleFonts.lato(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: tWhiteColor
      ),
  );
}
