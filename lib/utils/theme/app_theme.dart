import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.amber,
      ),
      useMaterial3: true,
      textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
    );
  }
}
