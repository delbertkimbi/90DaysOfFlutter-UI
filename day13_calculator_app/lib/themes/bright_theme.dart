import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData brightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: GoogleFonts.workSans().fontFamily,
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      surface: Color(0xffF1F2F3),
      primary: Colors.white,
      onPrimary: Colors.black,
      secondary: Color(0xff4b5efc),
      onSecondary: Color(0xffd2d3da),
      
      error: Colors.red,
    ));
