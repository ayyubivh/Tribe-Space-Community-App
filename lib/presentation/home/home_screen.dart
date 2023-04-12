import 'package:flutter/material.dart';
import 'package:social_app/common/custom_btn.dart';
import 'package:social_app/domain/auth/auth_method.dart';
import 'package:social_app/domain/auth/auth_methods.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                text: 'logout',
                onPress: () {
                  AuthMethods().signOut();
                },
                textSize: 25),
            Text('Home screen'),
          ],
        ),
      ),
    );
  }
}
