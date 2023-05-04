import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_app/presentation/pages/messages/group_chat/group_chat.dart';
import '../../../../../core/colors/colors.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../domain/database/database_service.dart';
import 'grou_messages.dart';

class SearchGroupTile extends StatefulWidget {
  final String userName;
  final String groupId;
  final String groupName;
  final String admin;

  const SearchGroupTile(
      {super.key,
      required this.userName,
      required this.groupId,
      required this.groupName,
      required this.admin});

  @override
  State<SearchGroupTile> createState() => _SearchGroupTileState();
}

class _SearchGroupTileState extends State<SearchGroupTile> {
  bool isJoined = false;
  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  @override
  void initState() {
    isJoined = false;
    log('init ${isJoined.toString()}');
    joinedOrNot(widget.userName, widget.groupId, widget.admin);
    super.initState();
  }

  joinedOrNot(String userName, String groupId, String admin) async {
    await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .isUserJoined(groupName, groupId, userName)
        .then((value) {
      setState(() {
        isJoined = value;
      });
    });
  }

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
        "Admin ${getName(widget.admin)}",
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
      trailing: GestureDetector(
        onTap: () {
          DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
              .toggleGroupJoin(
                  widget.groupId, widget.userName, widget.groupName);
          if (isJoined) {
            log('setsta ${isJoined.toString()}');

            setState(() {
              isJoined = !isJoined;
            });
            showSnackbar(
                context, Colors.red, "Left the group ${widget.groupName}");
          } else {
            setState(() {
              isJoined = !isJoined;
            });
            showSnackbar(context, Colors.green, "Successfully joined he group");
          }
        },
        child: isJoined
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1.5),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Joined",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhite,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1.5),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Join",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
    );
  }
}
