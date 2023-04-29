import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/presentation/common_widgets/profile_screen.dart';
import 'package:social_app/presentation/pages/chat/chat_page_screen.dart';
import 'package:social_app/presentation/pages/feeds/feed_screen.dart';

import '../../../core/colors/colors.dart';
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
    const ChatScreen(),
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
      body: pages[_page],
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
}
