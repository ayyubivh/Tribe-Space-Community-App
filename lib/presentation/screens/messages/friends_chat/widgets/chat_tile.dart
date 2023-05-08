import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_app/presentation/screens/messages/friends_chat/widgets/chat_page.dart';
import '../../../../../core/utils/utilities.dart';

class ChatTile extends StatefulWidget {
  final String userName;
  final String? id;
  const ChatTile({
    super.key,
    required this.userName,
    required this.id,
  });

  @override
  State<ChatTile> createState() => _MyWidgetState();
}

bool isJoined = false;

class _MyWidgetState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    if (widget.id == FirebaseAuth.instance.currentUser!.uid) {
      return const SizedBox.shrink();
    } else {
      return ListTile(
        onTap: () {
          if (Utilities.isKeyboardShowing()) {
            Utilities.closeKeyboard(context);
          }
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FriensChatPage(
                peerId: widget.id!,
                peerNickname: widget.userName,
                peerAvatar: ''),
          ));
        },
        title: Text(
          widget.userName,
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
            widget.userName.substring(0, 1).toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      );
    }
  }
}
