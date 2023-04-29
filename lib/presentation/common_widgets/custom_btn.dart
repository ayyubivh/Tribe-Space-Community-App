// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../pages/auth/login_screen.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double textSize;
  final VoidCallback onPress;
  final Color color;
  const CustomButton({
    Key? key,
    required this.text,
    required this.textSize,
    required this.onPress,
    this.color = kBlack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: color,
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(
          fontSize: textSize,
        ),
      ),
    );
  }
}
