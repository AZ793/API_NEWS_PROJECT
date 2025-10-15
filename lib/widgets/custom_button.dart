import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final Color backgroundColor;
  final TextStyle textStyle;

  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
    this.padding = const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
    this.borderRadius = 30,
    this.backgroundColor = const Color(0xFFF5F5F5),
    this.textStyle = const TextStyle(color: Colors.black, fontSize: 16),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: padding,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
