import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/presentation/pages/mainpage/main_page.dart';
import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/auth/sign_in_form/sign_in_bloc.dart';
import '../../../../core/utils/utilities.dart';
import '../../../common_widgets/custom_appbar.dart';
import '../../../common_widgets/custom_btn.dart';
import '../../../common_widgets/custom_text_field.dart';
import '../../../../core/colors/colors.dart';
import '../../../../core/constants/consts.dart';
import '../../../../core/utils/loader.dart';
import '../../../../core/utils/utils.dart';
import '../signup_screen.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
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
        } else if (state.isFormValidateFailed) {
          showSnackbar(context, Colors.red, "Please fill the data correctly!");
        }
      },
      builder: (context, state) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthenticationSuccess) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  MainPage.routeName, (route) => false);
            }
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(
                  text: 'Login',
                ),
                WelcomeSection(screenWidth: screenWidth),
                gapHeight,
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        kHeight30,
                        Column(
                          children: [
                            CustomTextField(
                              hintText: 'Username',
                              onChanged: (value) {
                                context
                                    .read<SignInBloc>()
                                    .add(EmailChanged(value));
                              },
                              errText: !state.isEmailValid
                                  ? "Please ensure the email entered is valid"
                                  : null,
                            ),
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
                                  : null,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight / 12,
                        ),
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
                            text: 'Sign In',
                            onPress: () {
                              if (Utilities.isKeyboardShowing()) {
                                Utilities.closeKeyboard(context);
                              }
                              if (formkey.currentState!.validate()) {
                                !state.isLoading
                                    ? context
                                        .read<SignInBloc>()
                                        .add(const FormSubmitted(Status.signIn))
                                    : null;
                              }
                            },
                          ),
                        ),
                        gapHeight,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 1,
                              color: textGrey.withOpacity(0.2),
                              width: screenWidth / 2.6,
                            ),
                            const Text(
                              'OR',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              height: 1,
                              color: textGrey.withOpacity(0.2),
                              width: screenWidth / 2.6,
                            ),
                          ],
                        ),
                        gapHeight,
                        InkWell(
                          onTap: () {
                            context
                                .read<SignInBloc>()
                                .add(const SignWithGooglePressed());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: textGrey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(30)),
                            width: screenWidth,
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.network(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: screenWidth / 6),
                                  child: const Text(
                                    'Login with Google',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        kHeight20,
                        Text.rich(
                          TextSpan(
                            text: "Dont't have an account? ",
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
                                  fontWeight: FontWeight.w500,
                                ),
                                text: "Create new account",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context)
                                        .pushNamed(SignupScreen.routeName);
                                  },
                              ),
                            ],
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
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth / 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome back!',
            style: TextStyle(
              fontSize: 30,
              color: kBlack,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight10,
          Text(
            'Login to connect the world!',
            style: TextStyle(
              fontSize: 15,
              color: textGrey.withOpacity(0.5),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
