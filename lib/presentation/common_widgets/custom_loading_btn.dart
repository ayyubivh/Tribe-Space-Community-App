import 'package:flutter/material.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/utils/loader.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 30,
      ),
      // height: 50,
      // width: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const CircularProgressIndicator(
        color: kWhite,
      ),
    );
  }
}
