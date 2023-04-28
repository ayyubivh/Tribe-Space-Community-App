import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_app/application/auth/auth_bloc.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/domain/core/di/injectable.dart';
import 'package:social_app/presentation/auth/login_screen.dart';
import 'package:social_app/presentation/mainpage/main_page.dart';
import 'package:social_app/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/loader.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthRequested()),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social app',
        theme: ThemeData(
          primaryColor: primaryColor,
        ),
        onGenerateRoute: (settings) => generateRoute(settings),
        // home: StreamBuilder(
        //   stream: FirebaseAuth.instance.authStateChanges(),
        //   builder: (context, snapshot) {
        //     if (snapshot.connectionState == ConnectionState.active) {
        //       if (snapshot.hasData) {
        //         return const MainPage();
        //         // return ProfileScreen(
        //         //   uid: FirebaseAuth.instance.currentUser!.uid,
        //         // );
        //       } else if (snapshot.hasError) {
        //         return Center(
        //           child: Text('${snapshot.error}'),
        //         );
        //       }
        //     }
        //     if (snapshot.connectionState == ConnectionState.waiting) {
        //       return const Loader();
        //     }
        //     return LoginScreen();
        //   },
        // ),
        home: LoginScreen(),
      ),
    );
  }
}
