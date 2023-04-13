import 'package:flutter/material.dart';
import 'package:social_app/core/colors/colors.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const CustomAppBar({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight / 7,
      color: primaryColor,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4,
              top: screenHeight / 28,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: onPress,
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kWhite,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 14,
                ),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: kWhite,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: screenHeight / 8.5,
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
