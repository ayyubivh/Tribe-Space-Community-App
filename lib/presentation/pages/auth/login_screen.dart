import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/domain/core/di/injectable.dart';
import 'package:social_app/presentation/pages/auth/widgets/login_form.dart';
import '../../../application/auth/sign_in_form/sign_in_bloc.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/auth-screen";
  LoginScreen({super.key});

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final gapHeight = SizedBox(height: screenHeight / 40);
    return Scaffold(
      backgroundColor: kWhite,
      body: BlocProvider(
        create: (context) => getIt<SignInBloc>(),
        child: SignInForm(
            screenWidth: screenWidth,
            gapHeight: gapHeight,
            screenHeight: screenHeight,
            formkey: formkey),
      ),
    );
  }
}
