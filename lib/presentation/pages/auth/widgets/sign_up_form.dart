import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/presentation/pages/mainpage/main_page.dart';
import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/auth/sign_in_form/sign_in_bloc.dart';
import '../../../common_widgets/custom_appbar.dart';
import '../../../common_widgets/custom_btn.dart';
import '../../../common_widgets/custom_text_field.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/constants/consts.dart';
import '../../../../core/utils/loader.dart';
import '../../../../core/utils/utils.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.screenWidth,
    required this.gapHeight,
    required this.screenHeight,
    required this.formkey,
  });

  final double screenWidth;
  final SizedBox gapHeight;
  final double screenHeight;
  final GlobalKey<FormState> formkey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state.errorMessage.isNotEmpty) {
          showSnackbar(context, kRed, state.errorMessage);
        } else if (state.isFormValid && !state.isLoading) {
          context.read<AuthBloc>().add(const AuthRequested());
          context.read<SignInBloc>().add(const FomrSucceeded());
        } else if (state.isFormValidateFailed) {
          showSnackbar(context, kRed, "Please fill the data correctly!");
        }
      },
      builder: (context, state) {
        var sizedBox = SizedBox(height: screenHeight / 20);
        var sizedBox2 = SizedBox(height: screenHeight / 16);
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthenticationSuccess) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  MainPage.routeName, (route) => false);
            }
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppBar(
                  text: 'Create Account',
                  icon: Icons.close,
                ),
                WelcomeSection(
                    screenWidth: screenWidth, screenHeight: screenHeight / 40),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        sizedBox,
                        CustomTextField(
                            hintText: 'Enter your full name',
                            onChanged: (value) {
                              context
                                  .read<SignInBloc>()
                                  .add(NameChanged(value));
                            },
                            errText: !state.isNameValid
                                ? 'Name cannot be empty!'
                                : null),
                        gapHeight,
                        CustomTextField(
                            hintText: 'Enter your email address',
                            onChanged: (value) {
                              context
                                  .read<SignInBloc>()
                                  .add(EmailChanged(value));
                            },
                            errText: !state.isEmailValid
                                ? 'please provide valid email'
                                : null),
                        gapHeight,
                        CustomTextField(
                            hintText: 'Enter your password',
                            onChanged: (value) {
                              context
                                  .read<SignInBloc>()
                                  .add(PassWordChanged(value));
                            },
                            errText: !state.isPasswordValid
                                ? 'please provide valid password'
                                : null),
                        sizedBox2,
                        SizedBox(
                          height: 50,
                          width: !state.isLoading
                              ? double.infinity
                              : screenWidth / 3,
                          child: CustomButton(
                            loader: state.isLoading
                                ? const Loader(
                                    color: kWhite,
                                  )
                                : null,
                            color: primaryColor,
                            textSize: 22,
                            text: 'Create Account',
                            onPress: () {
                              if (formkey.currentState!.validate()) {
                                !state.isLoading
                                    ? context
                                        .read<SignInBloc>()
                                        .add(const FormSubmitted(Status.signUp))
                                    : null;
                              }
                            },
                          ),
                        ),
                        kHeight10,
                        Center(
                          child: Text.rich(
                            textAlign: TextAlign.center,
                            TextSpan(
                              text: "Already have an account? ",
                              style: TextStyle(
                                color: textGrey,
                                fontSize: 15,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    text: "Sign in",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.of(context).pop();
                                      })
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth / 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 32,
              color: kBlack,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight),
          Text(
            'Create Account to keep exploring amazing destinations around the world!',
            style: TextStyle(
              fontSize: 15,
              color: textGrey.withOpacity(0.5),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
//   signUp() async {
//     if (formkey.currentState!.validate()) {
//       if (_image == null) {
//         return;
//       }

//       // String res = await AuthMethods().signUpUser(
//       //     email: _emailController.text,
//       //     password: _passwordController.text,
//       //     fullName: _userNameController.text,
//       //     file: _image!);
//       //     if (res == "success") {
//       //       DocumentSnapshot snap = await FirebaseFirestore.instance
//       //           .collection('users')
//       //           .doc(FirebaseAuth.instance.currentUser!.uid)
//       //           .get();

//       //       showSnackbar(context, Colors.green, res);

//       //       Navigator.of(context).pushReplacementNamed(MainPage.routeName);
//       //     } else {
//       //       setState(() {
//       //         _isLoading = false;
//       //       });
//       //       showSnackbar(context, Colors.red, res);
//       //     }
//       //   }
//       // }
//     }
//   }
// }

// // class ErrorDialog extends StatelessWidget {
// //   final String? errorMessage;
// //   const ErrorDialog({Key? key, required this.errorMessage}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return AlertDialog(
// //       title: const Text("Error"),
// //       content: Text(errorMessage!),
// //       actions: [
// //         TextButton(
// //           child: const Text("Ok"),
// //           onPressed: () => errorMessage!.contains("Please Verify your email")
// //               ? Navigator.of(context).pushAndRemoveUntil(
// //                   MaterialPageRoute(builder: (context) => LoginScreen()),
// //                   (Route<dynamic> route) => false)
// //               : Navigator.of(context).pop(),
// //         )
// //       ],
// //     );
// //   }
// // }
