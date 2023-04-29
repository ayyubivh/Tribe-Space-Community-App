import 'package:flutter/material.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/presentation/common_widgets/custom_appbar.dart';

import '../../../core/consts.dart';

class ChatMessagesScreen extends StatelessWidget {
  static const String routeName = "/chat-message";
  const ChatMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          "Chat",
          style: TextStyle(color: kWhite),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight / 6,
            color: primaryColor,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: screenHeight / 26),
                  child: ListTile(
                    title: const Text(
                      "Darlene Robertson",
                      style:
                          TextStyle(color: kWhite, fontWeight: FontWeight.bold),
                    ),
                    leading: const CircleAvatar(),
                    subtitle: const Text(
                      'Artis',
                      style: TextStyle(color: kWhite),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: kDarkGreen,
                          ),
                          child: const Icon(
                            Icons.phone_in_talk_outlined,
                            color: kWhite,
                          ),
                        ),
                        kWidth,
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kDarkGreen,
                          ),
                          child: const Icon(
                            Icons.videocam_outlined,
                            color: kWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight / 8,
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
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[200],
            ),
            child: Text(
              'yesterday'.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: textGrey.withOpacity(0.7),
              ),
            ),
          ),
          kHeight20,
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth / 22, right: screenWidth / 22),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(),
                    kWidth10,
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200],
                      ),
                      child: Text(
                        'Hi, How\'s going on?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: screenWidth / 2.3,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: primaryColor,
                      ),
                      child: const Text(
                        'Fine and from your what about you',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kWhite,
                        ),
                      ),
                    ),
                    kWidth10,
                    const CircleAvatar(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
