import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:social_app/common/custom_btn.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/consts.dart';
import 'package:social_app/presentation/auth/signup_screen.dart';
import '../../common/text_form_field.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = "/auth-screen";
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight / 8,
                left: screenWidth / 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 32,
                      color: kBlack,
                    ),
                  ),
                  Text(
                    'Enter Your Username & Password',
                    style: TextStyle(
                      fontSize: 18,
                      color: textGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight / 12,
            ),
            SizedBox(
              height: screenHeight / 1.5,
              width: screenWidth,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: screenHeight / 2.5,
                      width: screenWidth / 1.8,
                      decoration: BoxDecoration(
                        color: loginGreen,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(180),
                          bottomRight: Radius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 170,
                    child: Container(
                      height: screenHeight / 2,
                      width: screenWidth / 1,
                      decoration: BoxDecoration(
                        color: loginGreen,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(300),
                            bottomRight: Radius.circular(400),
                            bottomLeft: Radius.circular(100),
                            topLeft: Radius.circular(200)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        kHeight30,
                        const CustomTextField(
                          hintText: 'Username',
                        ),
                        SizedBox(
                          height: screenHeight / 13,
                        ),
                        const CustomTextField(
                          hintText: 'password',
                        ),
                        SizedBox(
                          height: screenHeight / 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 229,
                          child: CustomButton(
                            textSize: 28,
                            text: 'LOGIN',
                            onPress: () {},
                          ),
                        ),
                        kHeight20,
                        Text.rich(
                          TextSpan(
                            text: "  Dont't have an account ?",
                            style: TextStyle(
                              color: textGrey,
                              fontSize: 15,
                              letterSpacing: 0.5,
                            ),
                            children: [
                              TextSpan(
                                  style: TextStyle(
                                    color: textGrey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  text: "\nOr Create a New Account",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.of(context)
                                          .pushNamed(SignupScreen.routeName);
                                    })
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
