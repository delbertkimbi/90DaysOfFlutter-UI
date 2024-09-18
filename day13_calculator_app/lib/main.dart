import 'package:day13_calculator_app/home_page.dart';
import 'package:day13_calculator_app/themes/bright_theme.dart';
import 'package:day13_calculator_app/themes/dark_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: brightTheme,
        // darkTheme: darkTheme,
        home: const HomePage());
  }
}
