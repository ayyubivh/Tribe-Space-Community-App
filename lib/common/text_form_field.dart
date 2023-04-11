import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 20,
          ),
          focusedBorder: OutlineInputBorder()),
    );
  }
}
