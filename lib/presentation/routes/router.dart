import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_app/presentation/screens/auth/login_screen.dart';
import 'package:social_app/presentation/screens/feeds/feed_screen.dart';
import '../common_widgets/profile_screen.dart';
import '../screens/auth/signup_screen.dart';
import '../screens/mainpage/main_page.dart';
import '../screens/post/add_post_screen.dart';

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
    case FeedScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const FeedScreen(),
      );
    case ProfileScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) =>
            ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid),
      );
    // case ChatMessagesScreen.routeName:
    //   final args = routeSettings.arguments;
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (context) {
    //       GroupTile arguements = args;
    //       return ChatMessagesScreen(
    //         groupId: arguements.groupId,
    //         groupName: arguements.groupName,
    //         userName: arguements.userName,
    //       );
    // },
    // );
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
