import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiztoria/home_page.dart';

void main() {
  runApp(const HiztoriaApp());
}

class HiztoriaApp extends StatelessWidget {
  const HiztoriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hiztoria',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffe8b86d)),
        useMaterial3: true,
        textTheme: GoogleFonts.quicksandTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}