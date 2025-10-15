// ==================  lib/core/utils/dialoo.dart  ==================
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialoo {
  // A dialog that shows a red "X" icon for 1 second, then closes automatically.
  // Typically used to indicate an error, failure, or negative feedback.

  //=================================================================
  //========================== SAD DALIO ============================
  //=================================================================

  static Future<void> sad(BuildContext context) {
    return showDialog(
      context: context,
      // The transparent dark overlay behind the dialog
      barrierColor: const Color.fromARGB(115, 0, 0, 0),
      builder: (context) {
        // Close the dialog automatically after 1 second
        Future.delayed(const Duration(seconds: 1), () {
          if (context.mounted) {
            Navigator.of(context).pop();
          }
        });

        // The dialog UI
        return AlertDialog(
          backgroundColor: Colors.black87,
          shape: const CircleBorder(), // Makes it circular
          contentPadding: EdgeInsets.zero,
          content: const Icon(
            CupertinoIcons.xmark_circle_fill,
            color: Colors.red,
            size: 100,
          ),
        );
      },
    );
  }
  //===================================================================
  //========================== HAPPY DALIO ============================
  //===================================================================

  // A dialog that shows a green checkmark icon for 1 second, then closes automatically.
  // Typically used to indicate success or positive feedback.
  static Future<void> happy(BuildContext context) {
    return showDialog(
      context: context,
      barrierColor: const Color.fromARGB(115, 0, 0, 0),
      builder: (context) {
        // Close the dialog automatically after 1 second
        Future.delayed(const Duration(seconds: 1), () {
          if (context.mounted) {
            Navigator.of(context).pop();
          }
        });

        // The dialog UI
        return AlertDialog(
          shape: const CircleBorder(),
          backgroundColor: Colors.black87,
          contentPadding: const EdgeInsets.all(0.5),
          content: const Icon(
            CupertinoIcons.check_mark_circled_solid,
            color: Colors.green,
            size: 100,
          ),
        );
      },
    );
  }
}

//=============  EXAMPLE FOR USEING DAILOOOOO  ===========

//onPressed: () {Dialoo.happy(context);}

//onPressed: () {Dialoo.sad(context);}
