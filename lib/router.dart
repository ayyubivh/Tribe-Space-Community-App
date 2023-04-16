import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_app/common/profile_screen.dart';
import 'package:social_app/presentation/auth/login_screen.dart';
import 'package:social_app/presentation/home/home_screen.dart';
import 'presentation/post/add_screen.dart';
import 'presentation/auth/signup_screen.dart';
import 'presentation/mainpage/main_page.dart';

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
        builder: (context) => const LoginScreen(),
      );
    case SignupScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const SignupScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const HomeScreen(),
      );
    // case ProfileScreen.routeName:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (context) =>
    //         ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid),
    //   );
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
