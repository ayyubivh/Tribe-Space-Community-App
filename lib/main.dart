import 'package:flutter/material.dart';
import 'package:social_app/presentation/startpage/onboard_screen.dart';
import 'package:social_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social app',
      theme: ThemeData(),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const OnBoardScreen(),
    );
  }
}
