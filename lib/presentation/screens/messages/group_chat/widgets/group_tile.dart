import 'package:flutter/material.dart';
import 'package:social_app/presentation/screens/messages/group_chat/widgets/grou_messages.dart';

class GroupTile extends StatelessWidget {
  final String userName;
  final String groupId;
  final String groupName;

  const GroupTile({
    super.key,
    required this.userName,
    required this.groupId,
    required this.groupName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => GroupChatMessagesScreen(
                groupId: groupId, groupName: groupName, userName: userName),
          ),
        );
      },
      title: Text(
        groupName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Join the conservation as $userName",
        style: const TextStyle(fontSize: 13),
      ),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Theme.of(context).primaryColor,
        child: Text(
          groupName.substring(0, 1).toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

bool isJoined = false;
