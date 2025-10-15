import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// =====================================================================
// ================== !!! DO NOT TOUCH THIS FILE !!! ===================
// ==================================================== Abdulaziz ======

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.light,
  ),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  textTheme: GoogleFonts.robotoTextTheme().copyWith(
    displayLarge: const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.grey[800],
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.grey[900],
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.grey[700],
    ),
    bodySmall: TextStyle(fontSize: 12, color: Colors.grey[500]),
    labelLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.underline,
      color: Colors.blue,
    ),
  ),
);

// =====================================================================
// ================== !!! DO NOT TOUCH THIS FILE !!! ===================
// ==================================================== Abdulaziz ======
