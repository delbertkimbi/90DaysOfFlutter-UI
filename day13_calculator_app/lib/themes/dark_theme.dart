import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.poppins().fontFamily,
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      surface: Color(0xff17171C),
      primary: Color(0xff2E2F38),
      onPrimary: Colors.white,
      secondary: Color(0xff4b5efc),
      onSecondary: Color(0xffd2d3da),
      error: Colors.red,
    ));
