import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_app/presentation/pages/auth/login_screen.dart';
import 'package:social_app/presentation/pages/feeds/feed_screen.dart';
import '../common_widgets/profile_screen.dart';
import '../pages/auth/signup_screen.dart';
import '../pages/chat/chat_msg_screen.dart';
import '../pages/post/add_screen.dart';
import '../pages/mainpage/main_page.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case MainPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const MainPage(),
      );
    case AddPostScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const AddPostScreen(),
      );
    case LoginScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => LoginScreen(),
      );
    case SignupScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => SignupScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const HomeScreen(),
      );
    case ProfileScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) =>
            ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid),
      );
    case ChatMessagesScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const ChatMessagesScreen(),
      );
    // case CommentScreen.routeName:
    //   final snap = routeSettings.arguments;
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (context) => CommentScreen(snap: snap),
    //   );
    default:
      return MaterialPageRoute(
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text('Screen does not exist!'),
                ),
              ));
  }
}
