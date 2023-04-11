// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../core/colors/colors.dart';
import '../presentation/auth/auth_screen.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double textSize;
  final VoidCallback onPress;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPress,
    required this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: kBlack,
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
