// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/application/messages/chat_bloc.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/constants/firebase_constants.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/presentation/screens/messages/group_chat/widgets/group_info.dart';
import 'package:social_app/presentation/screens/messages/group_chat/widgets/message_tile.dart';

import '../../../../../core/constants/consts.dart';

class GroupChatMessagesScreen extends StatelessWidget {
  static const String routeName = "/chat-message";
  final String groupId;
  final String groupName;
  final String userName;

  GroupChatMessagesScreen({
    Key? key,
    required this.groupId,
    required this.groupName,
    required this.userName,
  }) : super(key: key);

  TextEditingController messageController = TextEditingController();

  // @override
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<GroupChatBloc>(context).add(GetGroupAdmin(groupId));
      BlocProvider.of<GroupChatBloc>(context).add(GetGroupchatsEvent(groupId));
    });
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: const Text(
          "Chat",
          style: TextStyle(color: kWhite),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    BlocBuilder<GroupChatBloc, GroupChatState>(
                  builder: (context, state) {
                    return GroupInfo(
                        adminName: state.groupAdmin.toString(),
                        groupName: groupName,
                        groupId: groupId);
                  },
                ),
              ));
            },
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight / 6,
            color: Theme.of(context).primaryColor,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: screenHeight / 26),
                  child: ListTile(
                    title: Text(
                      groupName,
                      style: const TextStyle(
                          color: kWhite, fontWeight: FontWeight.bold),
                    ),
                    leading: const CircleAvatar(),
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
          chatMessages()
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          color: kWhite,
          height: kToolbarHeight,
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  controller: messageController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 5, left: 5),
                    filled: true,
                    fillColor: kWhite,
                    hintText: 'Send a message',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                sendMessage(context);
              },
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: primaryColor,
                    ),
                    child: const Icon(
                      Icons.send,
                      color: kWhite,
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }

  chatMessages() {
    return BlocBuilder<GroupChatBloc, GroupChatState>(
      builder: (context, state) => Expanded(
        child: StreamBuilder<QuerySnapshot>(
          stream: state.groupChats,
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  return MessageTile(
                      message: snapshot.data!.docs[index]
                          [FirestoreConstants.messages],
                      sender: snapshot.data!.docs[index]
                          [FirestoreConstants.sender],
                      sentByMe: userName ==
                          snapshot.data!.docs[index]
                              [FirestoreConstants.sender]);
                },
              );
            } else {
              return const Loader();
            }
          },
        ),
      ),
    );
  }

  sendMessage(BuildContext context) {
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> chatMessage = {
        FirestoreConstants.messages: messageController.text,
        FirestoreConstants.sender: userName,
        FirestoreConstants.time: DateTime.now().microsecondsSinceEpoch
      };
      context
          .read<GroupChatBloc>()
          .add(SendGroupMessageEvent(groupId, chatMessage, messageController));
    }
  }
}
