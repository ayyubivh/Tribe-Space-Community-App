// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../core/colors/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function(String)? onChanged;

  final String? errText;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    this.errText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: kGrey.shade200,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        errorText: errText,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          color: textGrey.withOpacity(0.3),
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please enter your $hintText';
        }
      },
    );
  }
}
