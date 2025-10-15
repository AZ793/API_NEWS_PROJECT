import 'package:flutter/material.dart';
import 'app_colors.dart';

// ==============================================================================
// ================== !!! ASK ME BEFORE EDITING THIS FILE !!! ===================
// ================================================================ Abdulaziz ===

extension TextThemeExtension on BuildContext {
  AppTextStyles get textStyles => AppTextStyles(this);
}

class AppTextStyles {
  final BuildContext context;
  AppTextStyles(this.context);

  TextStyle get h1 => Theme.of(context).textTheme.displayLarge!;
  TextStyle get h2 => Theme.of(context).textTheme.titleLarge!;
  TextStyle get b1 => Theme.of(context).textTheme.bodyLarge!;
  TextStyle get s1 => Theme.of(context).textTheme.bodyMedium!;
  TextStyle get hint => Theme.of(context).textTheme.bodySmall!;
  TextStyle get link => Theme.of(context).textTheme.labelLarge!;
}

// ------------ ▼ TEXT EXTENSTIONS EXAMPLE ▼ --------------

// Text('HELLLOOO', style: context.textStyles.h1),
// Text('HELLLOOO', style: context.textStyles.h2),
// Text('HELLLOOO', style: context.textStyles.b1),
// Text('HELLLOOO', style: context.textStyles.s1),

// ------------ ▲ TEXT EXTENSTIONS EXAMPLE ▲ ---------------

extension AppColorsExtension on BuildContext {
  AppColors get appColors => AppColors(Theme.of(this).brightness);
}

// ------------ ▼ COLOR EXTENSTIONS EXAMPLE ▼ --------------

//  Container(decoration: BoxDecoratio color: context.appColors.surface),
//  Container(decoration: BoxDecoratio color: context.appColors.background),
//  Container(decoration: BoxDecoratio color: context.appColors.primary),
//  Container(decoration: BoxDecoratio color: context.appColors.error),

// ------------ ▲ COLOR EXTENSTIONS EXAMPLE ▲ ---------------




// =====================================================================
// ================== !!! DO NOT TOUCH THIS FILE !!! ===================
// ==================================================== Abdulaziz ======