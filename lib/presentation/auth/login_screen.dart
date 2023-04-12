import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:social_app/common/custom_btn.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/consts.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/presentation/auth/signup_screen.dart';
import 'package:social_app/presentation/home/home_screen.dart';
import '../../common/text_form_field.dart';
import '../../core/utils/utils.dart';
import '../../domain/auth/auth_methods.dart';
import '../../domain/auth/database_service.dart';
import '../../helper/helper_functions.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/auth-screen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  bool _isLoading = false;
  final AuthService authService = AuthService();
  final formkey = GlobalKey<FormState>();
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
                    child: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          kHeight30,
                          CustomTextField(
                            controller: _emailController,
                            hintText: 'Username',
                          ),
                          SizedBox(
                            height: screenHeight / 13,
                          ),
                          CustomTextField(
                            controller: _passwordController,
                            hintText: 'password',
                          ),
                          SizedBox(
                            height: screenHeight / 10,
                          ),
                          _isLoading
                              ? const Loader()
                              : SizedBox(
                                  height: 50,
                                  width: 229,
                                  child: CustomButton(
                                    textSize: 28,
                                    text: 'LOGIN',
                                    onPress: login,
                                  ),
                                ),
                          kHeight20,
                          Text.rich(
                            TextSpan(
                              text: "  Dont't have an account ?",
                              style: TextStyle(
                                color: textGrey,
                                fontSize: 15,
                                letterSpacing: 0.3,
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

  login() async {
    if (formkey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
          .loginWithEmailandPassword(
              _emailController.text, _passwordController.text)
          .then((value) async {
        if (value == true) {
          QuerySnapshot snapshot =
              await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
                  .gettingUserData(_emailController.text);
          await HelperFunctions.saveUserLoggedInStatus(true);
          await HelperFunctions.saveUserEmailSF(_emailController.text);
          await HelperFunctions.saveUserNameSF(snapshot.docs[0]['fullName']);
          // ignore: use_build_context_synchronously
          // nextScreenReplace(context, const HomePage());
          // ignore: use_build_context_synchronously
          Navigator.pushReplacementNamed(
            context,
            HomeScreen.routeName,
          );
          // ignore: use_build_context_synchronously
          showSnackbar(context, Colors.green, 'Login Successfully!');
        } else {
          showSnackbar(context, Colors.red, value);
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
  }
}
