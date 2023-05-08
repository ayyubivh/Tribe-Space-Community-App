import 'package:flutter/material.dart';
import 'package:social_app/presentation/screens/messages/group_chat/widgets/grou_messages.dart';

class GroupTile extends StatefulWidget {
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
  State<GroupTile> createState() => _MyWidgetState();
}

bool isJoined = false;

class _MyWidgetState extends State<GroupTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => GroupChatMessagesScreen(
                groupId: widget.groupId,
                groupName: widget.groupName,
                userName: widget.userName),
          ),
        );
      },
      title: Text(
        widget.groupName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Join the conservation as ${widget.userName}",
        style: const TextStyle(fontSize: 13),
      ),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Theme.of(context).primaryColor,
        child: Text(
          widget.groupName.substring(0, 1).toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
