import 'package:flutter/material.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/consts.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final VoidCallback? onPress;
  const CustomAppBar({super.key, required this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight / 6,
      color: primaryColor,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: onPress,
                icon: const Icon(
                  Icons.arrow_back,
                  color: kWhite,
                ),
              ),
              kWidth10,
              Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    color: kWhite,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Positioned(
            top: screenHeight / 7,
            child: Container(
              decoration: const BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              height: screenHeight,
              width: screenWidth,
            ),
          )
        ],
      ),
    );
  }
}
