import 'package:flutter/material.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/consts.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final IconData? icon;

  final VoidCallback? onTap;
  final String? optText;
  const CustomAppBar({
    super.key,
    required this.text,
    this.icon,
    this.optText,
    this.onTap,
  });

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
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  icon,
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
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(right: screenWidth / 18),
                child: TextButton(
                  onPressed: onTap,
                  child: Text(
                    optText ?? '',
                    style: const TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
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
