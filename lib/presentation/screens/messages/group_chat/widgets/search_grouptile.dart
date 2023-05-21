import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/application/auth/database/database_bloc.dart';
import 'package:social_app/application/messages/chat_bloc.dart';
import 'package:social_app/presentation/screens/messages/group_chat/group_chat.dart';
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

    context.read<ChatBloc>().add(
        IsUserJoined(groupName: widget.groupName, groupId: widget.groupId));

    super.initState();
  }

  joinedOrNot(
    String groupName,
    String groupId,
  ) async {}

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {
        if (state.joinStatusMessage.isNotEmpty &&
            state.joinedOrStatus == false) {
          return showSnackbar(context, kRed, state.joinStatusMessage);
        }
        if (state.joinStatusMessage.isNotEmpty &&
            state.joinedOrStatus == true) {
          return showSnackbar(context, kToastGreen, state.joinStatusMessage);
        }
      },
      builder: (context, state) => ListTile(
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
            context.read<ChatBloc>().add(ToggleGroupJoinEvent(
                groupId: widget.groupId,
                userName: widget.userName,
                groupName: widget.groupName));
          },
          child: state.joinedOrStatus
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
      ),
    );
  }
}
