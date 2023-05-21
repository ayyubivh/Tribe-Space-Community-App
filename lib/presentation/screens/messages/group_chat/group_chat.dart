// ignore_for_file: use_build_context_synchronously
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/application/auth/database/database_bloc.dart';
import 'package:social_app/application/messages/chat_bloc.dart';
import 'package:social_app/core/constants/consts.dart';
import 'package:social_app/core/constants/firebase_constants.dart';
import 'package:social_app/domain/messages/chat_database_service.dart';
import 'package:social_app/presentation/common_widgets/custom_text_field.dart';
import '../../../../application/messages/message_search/message_search_bloc.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/utils/loader.dart';
import '../../../../core/utils/utils.dart';
import 'widgets/group_tile.dart';
import 'widgets/search_grouptile.dart';

class GropChatScreen extends StatefulWidget {
  const GropChatScreen({super.key});

  @override
  State<GropChatScreen> createState() => _GropChatScreenState();
}

// bool isLoading = false;
String groupName = "";

Stream? chatUsers;

class _GropChatScreenState extends State<GropChatScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<MessageSearchBloc>().add(const Empty());
    BlocProvider.of<DatabaseBloc>(context).add(const DatabaseFetched());
    // isLoading = false;
    gettingData();
  }

  gettingData() async {
    await ChatDatabaseService(FirebaseAuth.instance.currentUser!.uid)
        .getUserGroups()
        .then((snapshot) {
      setState(() {
        chatUsers = snapshot;
      });
    });
  }

  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DatabaseBloc>(context).add(const DatabaseFetched());
    });

    final userName = context.read<DatabaseBloc>().state.userName;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,
              buildSearchBar(),
              BlocBuilder<MessageSearchBloc, MessageSearchState>(
                builder: (context, state) {
                  return state.isBool
                      ? Expanded(
                          child: FutureBuilder(
                            future: FirebaseFirestore.instance
                                .collection(
                                    FirestoreConstants.pathGroupCollection)
                                .where(FirestoreConstants.groupName,
                                    isEqualTo: state.searchValue)
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
                                          [FirestoreConstants.groupId],
                                      groupName: snapshot.data!.docs[index]
                                          [FirestoreConstants.groupName],
                                      admin: snapshot.data!.docs[index]
                                          [FirestoreConstants.admin]);
                                },
                              );
                            },
                          ),
                        )
                      : groupList(userName);
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        child: const Icon(Icons.add),
        onPressed: () {
          popUpDialog(context, userName);
        },
      ),
    );
  }

  Widget buildSearchBar() {
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
          const Icon(Icons.search, color: textGrey, size: 20),
          const SizedBox(width: 5),
          Expanded(
            child: TextFormField(
              onChanged: (value) {
                value.isNotEmpty
                    ? context
                        .read<MessageSearchBloc>()
                        .add(Started(searchVal: value))
                    : context.read<MessageSearchBloc>().add(const Empty());
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

  void popUpDialog(BuildContext context, String userName) {
    final TextEditingController groupTexteditingController =
        TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return BlocListener<ChatBloc, ChatState>(
          listener: (context, state) {
            if (state.successMessage.isNotEmpty) {
              showSnackbar(context, Colors.green, state.successMessage);
              Navigator.of(context).pop();
            } else if (state.errorMessage.isNotEmpty) {
              showSnackbar(context, Colors.red, state.errorMessage);
            } else {}
          },
          child: AlertDialog(
            content: StatefulBuilder(
              builder: (context, setState) => SizedBox(
                height: 55,
                child: CustomTextField(
                  textEditingController: groupTexteditingController,
                  hintText: 'Enter group name...',
                  onChanged: (val) {},
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: kRed,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: kRed),
                    )),
              ),
              BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  return TextButton(
                    onPressed: () {
                      final currentUser = FirebaseAuth.instance.currentUser;
                      if (groupTexteditingController.text.isNotEmpty &&
                          currentUser != null) {
                        context.read<ChatBloc>().add(
                              CreateGroupEvent(
                                id: currentUser.uid,
                                userName: userName,
                                groupName: groupTexteditingController.text,
                              ),
                            );
                        Navigator.of(context).pop();
                      }
                    },
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          'Create',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  groupList(userName) {
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
                return noGroupWidget(userName);
              }
            } else {
              return noGroupWidget(userName);
            }
          } else {
            return const Loader();
          }
        },
      ),
    );
  }

  noGroupWidget(userName) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              popUpDialog(context, userName);
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
