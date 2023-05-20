import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_app/presentation/screens/messages/friends_chat/widgets/chat_page.dart';
import '../../../../../core/utils/utilities.dart';

class ChatTile extends StatelessWidget {
  final String userName;
  final String? id;
  const ChatTile({
    super.key,
    required this.userName,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    if (id == FirebaseAuth.instance.currentUser!.uid) {
      return const SizedBox.shrink();
    } else {
      return ListTile(
        onTap: () {
          if (Utilities.isKeyboardShowing()) {
            Utilities.closeKeyboard(context);
          }
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FriensChatPage(
                peerId: id!, peerNickname: userName, peerAvatar: ''),
          ));
        },
        title: Text(
          userName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          "last messaged on",
          style: TextStyle(fontSize: 13),
        ),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Theme.of(context).primaryColor,
          child: Text(
            userName.substring(0, 1).toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      );
    }
  }
}

bool isJoined = false;
