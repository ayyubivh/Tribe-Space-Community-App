// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/application/auth/database/database_bloc.dart';
import 'package:social_app/core/constants/consts.dart';
import 'package:social_app/core/constants/firebase_constants.dart';
import 'package:social_app/domain/messages/chat_database_service.dart';
import 'package:social_app/presentation/common_widgets/custom_text_field.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/utils/loader.dart';
import '../../../../core/utils/utils.dart';
import '../../../../domain/database/database_service.dart';
import 'widgets/group_tile.dart';
import 'widgets/search_grouptile.dart';

class GropChatScreen extends StatefulWidget {
  const GropChatScreen({super.key});

  @override
  State<GropChatScreen> createState() => _GropChatScreenState();
}

bool isLoading = false;
String groupName = "";

Stream? chatUsers;

class _GropChatScreenState extends State<GropChatScreen> {
  // DatabaseBloc? databaseBloc;
  String userName = "";
  TextEditingController searchController = TextEditingController();
  String searchVal = "";
  @override
  void initState() {
    super.initState();
    isLoading = false;
    gettingData();
  }

  gettingData() async {
    setState(() {
      userName = context.read<DatabaseBloc>().state.userName;
      setState(() {});
    });

    await ChatDatabaseService(FirebaseAuth.instance.currentUser!.uid)
        .getUserGroups()
        .then((snapshot) {
      setState(() {
        chatUsers = snapshot;
      });
    });

    log('>>>>>>>>>>>>>$userName<<<<<');
  }

  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,
              buildSearchBar(),
              isLoading
                  ? Expanded(
                      child: FutureBuilder(
                      future: FirebaseFirestore.instance
                          .collection('group')
                          .where('groupName', isEqualTo: searchVal)
                          .get(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const Loader();
                        }
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return SearchGroupTile(
                                userName: userName,
                                groupId: snapshot.data!.docs[index]
                                    [FireStoreConstants.groupId],
                                groupName: snapshot.data!.docs[index]
                                    [FireStoreConstants.groupName],
                                admin: snapshot.data!.docs[index]
                                    [FireStoreConstants.admin]);
                          },
                        );
                      },
                    ))
                  : groupList()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        child: const Icon(Icons.add),
        onPressed: () {
          popUpDialog(context);
        },
      ),
    );
  }

  Container buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: textGrey.withOpacity(0.2),
      ),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      height: 40,
      child: Row(
        children: [
          Icon(Icons.search, color: textGrey, size: 20),
          const SizedBox(width: 5),
          Expanded(
            child: TextFormField(
              onChanged: (value) {
                searchVal = value;
                setState(() {
                  value == '' ? isLoading = false : isLoading = true;
                  log(isLoading.toString());
                });
              },
              decoration: const InputDecoration.collapsed(
                hintText: 'Search names',
                hintStyle: TextStyle(fontSize: 13, color: kGrey),
              ),
            ),
          ),
        ],
      ),
    );
  }

  popUpDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      animType: AnimType.topSlide,
      title: 'dial',
      desc: 'create a group',
      body: StatefulBuilder(
        builder: (context, setState) => Padding(
          padding: const EdgeInsets.all(8.0).copyWith(
            left: 5,
            right: 5,
          ),
          child: SizedBox(
            height: 55,
            child: CustomTextField(
              hintText: 'Enter group name...',
              onChanged: (val) {
                setState(() {
                  groupName = val;
                  isLoading = false;
                });
              },
            ),
          ),
        ),
      ),
      btnOkColor: primaryColor,
      btnOkIcon: Icons.done,
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        if (groupName != "") {
          ChatDatabaseService(FirebaseAuth.instance.currentUser!.uid)
              .createGroup(
                  userName, FirebaseAuth.instance.currentUser!.uid, groupName)
              .whenComplete(() {
            isLoading = false;
          });
          showSnackbar(context, Colors.green, "Group created successfully.");
        }
      },
      btnCancelIcon: Icons.close,
    ).show();
  }

  joinedOrNot(
      String userName, String groupId, String groupname, String admin) async {
    await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .isUserJoined(groupname, groupId, userName)
        .then((value) {
      setState(() {
        isJoined = value;
      });
    });
  }

  groupList() {
    return Expanded(
      child: StreamBuilder(
        stream: chatUsers,
        builder: (context, AsyncSnapshot snapshot) {
          // make some checks
          if (snapshot.hasData) {
            if (snapshot.data['groups'] != null) {
              if (snapshot.data['groups'].length != 0) {
                return ListView.builder(
                  itemCount: snapshot.data['groups'].length,
                  itemBuilder: (context, index) {
                    int reverseIndex =
                        snapshot.data['groups'].length - index - 1;
                    return GroupTile(
                        groupId: getId(snapshot.data['groups'][reverseIndex]),
                        groupName:
                            getName(snapshot.data['groups'][reverseIndex]),
                        userName: snapshot.data['userName']);
                  },
                );
              } else {
                return noGroupWidget();
              }
            } else {
              return noGroupWidget();
            }
          } else {
            return Center(
              child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor),
            );
          }
        },
      ),
    );
  }

  noGroupWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              popUpDialog(context);
            },
            child: Icon(
              Icons.add_circle,
              color: Colors.grey[700],
              size: 75,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "You've not joined any groups, tap on the add icon to create a group or also search from top search button.",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
