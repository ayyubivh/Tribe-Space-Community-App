import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/constants/firebase_constants.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/domain/messages/chat_database_service.dart';
import 'package:social_app/domain/database/database_service.dart';
import 'package:social_app/presentation/pages/messages/group_chat/widgets/group_info.dart';
import 'package:social_app/presentation/pages/messages/group_chat/widgets/message_tile.dart';
import '../../../../../core/constants/consts.dart';

class GroupChatMessagesScreen extends StatefulWidget {
  static const String routeName = "/chat-message";
  final String groupId;
  final String groupName;
  final String userName;
  const GroupChatMessagesScreen(
      {super.key,
      required this.groupId,
      required this.groupName,
      required this.userName});

  @override
  State<GroupChatMessagesScreen> createState() =>
      _GroupChatMessagesScreenState();
}

class _GroupChatMessagesScreenState extends State<GroupChatMessagesScreen> {
  Stream<QuerySnapshot>? chats;
  TextEditingController messageController = TextEditingController();
  String admin = "";

  @override
  void initState() {
    super.initState();
    getChatsAndAdmin();
  }

  getChatsAndAdmin() {
    ChatDatabaseService(FirebaseAuth.instance.currentUser!.uid)
        .getGroupChat(widget.groupId)
        .then((val) {
      setState(() {
        chats = val;
      });
    });
    DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .getGroupAdmin(widget.groupId)
        .then((val) {
      setState(() {
        admin = val;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
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
                builder: (context) => GroupInfo(
                    adminName: admin,
                    groupName: widget.groupName,
                    groupId: widget.groupId),
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
                      widget.groupName,
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
          color: primaryColor,
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
                sendMessage();
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
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
        stream: chats,
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return MessageTile(
                    message: snapshot.data!.docs[index]
                        [FireStoreConstants.messages],
                    sender: snapshot.data!.docs[index]
                        [FireStoreConstants.sender],
                    sentByMe: widget.userName ==
                        snapshot.data!.docs[index][FireStoreConstants.sender]);
              },
            );
          } else {
            return const Loader();
          }
        },
      ),
    );
  }

  sendMessage() {
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> chatMessage = {
        FireStoreConstants.messages: messageController.text,
        FireStoreConstants.sender: widget.userName,
        FireStoreConstants.time: DateTime.now().microsecondsSinceEpoch
      };
      ChatDatabaseService(FirebaseAuth.instance.currentUser!.uid)
          .sendGropMessage(widget.groupId, chatMessage);
      setState(() {
        messageController.clear();
      });
    }
  }
}
