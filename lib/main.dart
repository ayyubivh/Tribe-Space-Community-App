import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app/application/provider/user_provider.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/presentation/auth/login_screen.dart';
import 'package:social_app/presentation/home/home_screen.dart';
import 'package:social_app/presentation/mainpage/main_page.dart';
import 'package:social_app/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social app',
        theme: ThemeData(
          primaryColor: primaryColor,
        ),
        onGenerateRoute: (settings) => generateRoute(settings),
        // home: const OnBoardScreen(),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return const MainPage();
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('${snapshot.error}'),
                );
              }
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Loader();
            }
            return const LoginScreen();
          },
        ),
      ),
    );
  }
}
