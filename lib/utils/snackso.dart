import 'package:flutter/material.dart';
import 'package:new_project/core/theme/codes_extensions.dart';

//▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼

/// Example:
/// Snackso.show(context, message: "Login successful", backgroundColor: Colors.green);

//▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼

/// A helper class to show a custom styled SnackBar
class Snackso {
  /// Displays a SnackBar with a given [message] and [backgroundColor].
  ///
  /// - [context]: The BuildContext from which to show the SnackBar.
  /// - [message]: The text to display inside the SnackBar.
  /// - [backgroundColor]: Optional. Default is GREY. You can override it to red, blue, etc.
  static void show(
    BuildContext context, {
    required String message,
    Color backgroundColor = Colors.grey,
  }) {
    // Use the ScaffoldMessenger to display the SnackBar on the current screen
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: context.textStyles.b1,
        ),

        backgroundColor: backgroundColor,

        behavior: SnackBarBehavior.floating,

        margin: const EdgeInsets.all(12),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

        // How long the SnackBar remains visible before disappearing
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
