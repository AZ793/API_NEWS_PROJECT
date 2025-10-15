import 'package:flutter/material.dart';

class AppColors {
  final Brightness brightness;

  AppColors(this.brightness);

  bool get isDark => brightness == Brightness.dark;

  Color get background => isDark ? Colors.black : Colors.white;
  Color get surface => isDark ? Colors.grey[900]! : Colors.grey[100]!;
  Color get text => isDark ? Colors.white : Colors.black;

  Color get primary => Colors.blue;
  Color get success => Colors.green;
  Color get error => Colors.redAccent;
  Color get warning => Colors.amber;
}


// ==============================================================================
// ================== !!! ASK ME BEFORE EDITING THIS FILE !!! ===================
// ================================================================ Abdulaziz ===