import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/application/messages/chat_bloc.dart';
import '../../../../../core/colors/colors.dart';
import '../../../../../core/utils/utils.dart';
import 'grou_messages.dart';

class SearchGroupTile extends StatelessWidget {
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

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<GroupChatBloc>()
          .add(IsUserJoined(groupName: groupName, groupId: groupId));
    });

    return BlocConsumer<GroupChatBloc, GroupChatState>(
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
                  groupId: groupId, groupName: groupName, userName: userName),
            ),
          );
        },
        title: Text(
          groupName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Admin ${getName(admin)}",
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
        trailing: GestureDetector(
          onTap: () {
            context.read<GroupChatBloc>().add(ToggleGroupJoinEvent(
                groupId: groupId, userName: userName, groupName: groupName));
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
