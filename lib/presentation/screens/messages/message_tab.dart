import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/presentation/screens/messages/friends_chat/friends_chat_screen.dart';
import 'package:social_app/presentation/screens/messages/group_chat/group_chat.dart';

import '../../../application/auth/database/database_bloc.dart';

class MessgeScreen extends StatefulWidget {
  const MessgeScreen({super.key});

  @override
  State<MessgeScreen> createState() => _MessgeScreenState();
}

class _MessgeScreenState extends State<MessgeScreen> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DatabaseBloc>(context).add(const DatabaseFetched());
    });
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Messages',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            backgroundColor: kWhite,
            bottom: TabBar(
                indicatorColor: Theme.of(context).primaryColor,
                labelColor: Theme.of(context).primaryColor,
                tabs: const [
                  Tab(text: 'Chat'),
                  Tab(text: 'Group'),
                ]),
          ),
          body: const TabBarView(children: [
            FriensChatScreen(),
            GropChatScreen(),
          ]),
        ));
  }
}
