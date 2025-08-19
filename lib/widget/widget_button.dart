import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.textColor, required this.OnPressed});

  final String text;
  final Color textColor;
  final VoidCallback OnPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
  onPressed: OnPressed,   // ✅ sekarang tombol bisa jalan

      child: Text(text, style: TextStyle(color: textColor,)),
    );
  }
}
