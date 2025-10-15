import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// =====================================================================
// ================== !!! DO NOT TOUCH THIS FILE !!! ===================
// ==================================================== Abdulaziz ======

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark,
  ),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  textTheme:
      GoogleFonts.robotoTextTheme(
        ThemeData(brightness: Brightness.dark).textTheme,
      ).copyWith(
        displayLarge: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        titleLarge: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.white70,
        ),
        bodyLarge: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
        bodyMedium: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.white60,
        ),
        bodySmall: const TextStyle(fontSize: 12, color: Colors.white38),
        labelLarge: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
          color: Colors.lightBlueAccent,
        ),
      ),
);

// =====================================================================
// ================== !!! DO NOT TOUCH THIS FILE !!! ===================
// ==================================================== Abdulaziz ======
