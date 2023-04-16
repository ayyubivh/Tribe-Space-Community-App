import 'package:flutter/material.dart';
import 'package:social_app/common/custom_btn.dart';
import 'package:social_app/core/colors/colors.dart';

class FollowButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  const FollowButton({super.key, required this.onPress, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 30,
      width: width / 2.7,
      child: CustomButton(
        text: text,
        textSize: 16,
        onPress: onPress,
        color: primaryColor,
      ),
    );
  }
}
