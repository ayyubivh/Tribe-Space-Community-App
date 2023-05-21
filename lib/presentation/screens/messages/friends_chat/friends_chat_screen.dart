import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/application/messages/message_search/message_search_bloc.dart';
import 'package:social_app/core/constants/consts.dart';
import 'package:social_app/core/constants/firebase_constants.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/domain/messages/chat_database_service.dart';
import 'package:social_app/presentation/screens/messages/friends_chat/widgets/chat_tile.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/utils/debouncer.dart';

class FriensChatScreen extends StatefulWidget {
  const FriensChatScreen({super.key});

  @override
  State<FriensChatScreen> createState() => _FriensChatScreenState();
}

class _FriensChatScreenState extends State<FriensChatScreen> {
  final int _limit = 20;

  bool isLoading = false;
  final StreamController<bool> btnClearController = StreamController<bool>();

  final Debouncer searchDebouncer = Debouncer(milliseconds: 300);

  final TextEditingController searchBarTec = TextEditingController();

  final ScrollController listScrollController = ScrollController();
  @override
  void initState() {
    context.read<MessageSearchBloc>().add(const Empty());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            kHeight10,
            buildSearchBar(),
            Expanded(
                child: BlocBuilder<MessageSearchBloc, MessageSearchState>(
              builder: (context, state) => StreamBuilder<QuerySnapshot>(
                stream:
                    ChatDatabaseService(FirebaseAuth.instance.currentUser!.uid)
                        .getUsersStream(FirestoreConstants.pathUserCollection,
                            _limit, state.searchValue),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasData) {
                    if ((snapshot.data?.docs.length ?? 0) > 0) {
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        controller: listScrollController,
                        itemBuilder: (context, index) {
                          return ChatTile(
                            userName: snapshot.data!.docs[index]
                                [FirestoreConstants.userName],
                            id: snapshot.data!.docs[index]
                                [FirestoreConstants.uid],
                          );
                        },
                      );
                    } else {
                      return const Center(
                        child: Text('No Users'),
                      );
                    }
                  } else {
                    return const Center(
                      child: Loader(),
                    );
                  }
                },
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget buildSearchBar() {
    return BlocBuilder<MessageSearchBloc, MessageSearchState>(
      builder: (context, state) {
        return Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: textGrey.withOpacity(0.2),
          ),
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.search, color: textGrey, size: 20),
              const SizedBox(width: 5),
              Expanded(
                child: TextFormField(
                  textInputAction: TextInputAction.search,
                  controller: searchBarTec,
                  onChanged: (value) {
                    searchDebouncer.run(() {
                      if (value.isNotEmpty) {
                        btnClearController.add(true);

                        context
                            .read<MessageSearchBloc>()
                            .add(MessageSearchEvent.started(searchVal: value));
                      } else {
                        btnClearController.add(false);

                        context
                            .read<MessageSearchBloc>()
                            .add(const MessageSearchEvent.empty());
                      }
                    });
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Search names',
                    hintStyle: TextStyle(fontSize: 13, color: kGrey),
                  ),
                  style: const TextStyle(fontSize: 13),
                ),
              ),
              StreamBuilder<bool>(
                  stream: btnClearController.stream,
                  builder: (context, snapshot) {
                    return snapshot.data == true
                        ? GestureDetector(
                            onTap: () {
                              searchBarTec.clear();
                              btnClearController.add(false);
                              // setState(() {
                              //   _textSearch = "";
                              // });
                              context
                                  .read<MessageSearchBloc>()
                                  .add(const Empty());
                            },
                            child: const Icon(Icons.clear_rounded,
                                color: kGrey, size: 20))
                        : const SizedBox.shrink();
                  }),
            ],
          ),
        );
      },
    );
  }
}
