import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton(
      {super.key, required this.onPressed, required this.text, this.textColor});

  final VoidCallback onPressed;
  final String text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: textColor ?? Colors.red),
        ));
  }
}
