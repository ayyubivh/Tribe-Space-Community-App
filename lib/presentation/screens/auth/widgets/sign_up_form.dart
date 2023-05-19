import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app/application/image/image_bloc.dart';
import 'package:social_app/presentation/screens/auth/login_screen.dart';
import 'package:social_app/presentation/screens/mainpage/main_page.dart';
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
    // print('hi');
    var imageBytes;
    // print('on buile >>>>>>>>>>>>>>>>>>>>>>${imageBytes.toString()}');
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
        // else if (state.isImage == true) {
        //   log('message to hi>>>>>>>>>>>>>>>>>>>>');
        //   final imageBytes = context.read<ImageBloc>().state.imagebytes;
        //   context.read<SignInBloc>().add(ProfilePhotoAdd(imageBytes!));
        //   log('form isImage ${state.isImage.toString()} >>>>>>>>');
        // }
      },
      builder: (context, state) {
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
                        BlocBuilder<ImageBloc, ImageState>(
                            builder: (context, state) {
                          imageBytes = state.imagebytes;
                          // print(
                          //     'on after >>>>>>>>>>>>>>>>>>>>>>${imageBytes.toString()}');

                          return Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: kWhite,
                                radius: screenHeight / 15,
                                backgroundImage: state.imagebytes == null
                                    ? const AssetImage('assets/images/user.png')
                                    : MemoryImage(state.imagebytes!)
                                        as ImageProvider,
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: InkWell(
                                    onTap: () {
                                      bottomSheetCamera(context);
                                    },
                                    child: Icon(
                                      Icons.add_a_photo_outlined,
                                      size: 27,
                                      color: textGrey,
                                    )),
                              )
                            ],
                          );
                        }),
                        gapHeight,
                        CustomTextField(
                            hintText: 'Full Name',
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
                            hintText: 'Email Address',
                            onChanged: (value) {
                              context
                                  .read<SignInBloc>()
                                  .add(ProfilePhotoAdd(imageBytes));
                              context
                                  .read<SignInBloc>()
                                  .add(EmailChanged(value));
                            },
                            errText: !state.isEmailValid
                                ? 'please provide valid email'
                                : null),
                        gapHeight,
                        CustomTextField(
                            hintText: 'Password',
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

                                context
                                    .read<ImageBloc>()
                                    .add(const ClearImage());
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
                                        Navigator.of(context)
                                            .pushNamed(LoginScreen.routeName);
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

  Future<dynamic> bottomSheetCamera(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: screenHeight / 4.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Choose Profile Photo',
                style: TextStyle(
                  color: textGrey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.photo,
                          size: 35,
                          color: primaryColor,
                        ),
                        onPressed: () {
                          context.read<ImageBloc>().add(const PickImageEvent(
                              source: ImageSource.gallery));

                          Navigator.pop(context);
                        },
                      ),
                      const Text(
                        'Gallery',
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.photo_camera,
                          size: 35,
                          color: primaryColor,
                        ),
                        onPressed: () {
                          context.read<ImageBloc>().add(
                              const PickImageEvent(source: ImageSource.camera));
                          Navigator.pop(context);
                        },
                      ),
                      const Text(
                        'Camera',
                      )
                    ],
                  ),
                ],
              ),
            ],
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
