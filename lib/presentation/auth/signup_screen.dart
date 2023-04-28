import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/domain/core/di/injectable.dart';
import '../../application/auth/sign_in_form/sign_in_bloc.dart';
import 'widgets/sign_up_form.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = "/sign-up-screen";
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final gapHeight = SizedBox(height: screenHeight / 40);
    return Scaffold(
        body: BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: SignUpForm(
        screenWidth: screenWidth,
        formkey: formkey,
        gapHeight: gapHeight,
        screenHeight: screenHeight,
      ),
    ));
  }
}
