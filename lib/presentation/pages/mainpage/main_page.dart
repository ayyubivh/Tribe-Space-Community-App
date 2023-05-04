import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/presentation/common_widgets/profile_screen.dart';
import 'package:social_app/presentation/pages/feeds/feed_screen.dart';
import '../../../core/colors/colors.dart';
import '../messages/message_tab.dart';
import '../search/screen_search.dart';

class MainPage extends StatefulWidget {
  static const routeName = "/main-page";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _page = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    // const ChatScreen(),
    const MessgeScreen(),
    ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid),
  ];
  @override
  void initState() {
    super.initState();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(onWillPop: onBackPress, child: pages[_page]),
      bottomNavigationBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: kWhite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        activeColor: kWhite,
        onTap: onPageChanged,
        currentIndex: _page,
      ),
    );
  }

  Future<bool> onBackPress() {
    openDialog();
    return Future.value(false);
  }

  Future<void> openDialog() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            clipBehavior: Clip.hardEdge,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColor,
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Icon(
                        Icons.exit_to_app,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Exit app',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Are you sure to exit app?',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 0);
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.cancel,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      'Cancel',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.check_circle,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      'Yes',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          );
        })) {
      case 0:
        break;
      case 1:
        exit(0);
    }
  }
}
