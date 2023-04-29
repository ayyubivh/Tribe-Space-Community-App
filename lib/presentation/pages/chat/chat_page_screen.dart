import 'package:flutter/material.dart';
import 'package:social_app/core/consts.dart';

import '../../../core/colors/colors.dart';
import 'chat_msg_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        title: Text(
          'Messages',
          style: TextStyle(
            color: primaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0).copyWith(top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(9).copyWith(left: 20),
                    filled: true,
                    fillColor: kGrey.shade200,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: kBlack,
                      size: 23,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    hintText: "Search \"Your Friend\"",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: textGrey.withOpacity(0.3),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: const Text("username"),
                      leading: CircleAvatar(
                        backgroundColor: primaryColor,
                      ),
                      subtitle: Text('Hi john howe are you'),
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(ChatMessagesScreen.routeName);
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
