import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/application/image/image_bloc.dart';
import 'package:social_app/application/post/post_bloc.dart';
import '../../application/auth/auth_bloc.dart';
import '../../application/auth/database/database_bloc.dart';
import '../../core/colors/colors.dart';
import '../../domain/core/di/injectable.dart';
import '../routes/router.dart';
import '../screens/auth/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthRequested()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<DatabaseBloc>()..add(const DatabaseFetched()),
        ),
        BlocProvider(
          create: (context) => getIt<PostBloc>(),
        ),
        BlocProvider(
          create: (context) => ImageBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social app',
        theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: kWhite,
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
