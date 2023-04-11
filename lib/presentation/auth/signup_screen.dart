import 'package:flutter/material.dart';
import 'package:social_app/common/custom_btn.dart';
import 'package:social_app/common/text_form_field.dart';
import 'package:social_app/core/consts.dart';

import '../../core/colors/colors.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = "/sign-up-screen";
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight / 18,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: kBlack, borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: kWhite,
                    )),
              ),
            ),
            SizedBox(
              height: screenHeight / 1.2,
              width: screenWidth,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: Container(
                      height: screenHeight / 2.3,
                      width: screenWidth / 1.2,
                      decoration: BoxDecoration(
                        color: signUpClr,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(260),
                          topRight: Radius.circular(280),
                          bottomRight: Radius.circular(280),
                          bottomLeft: Radius.circular(280),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 240,
                    left: 110,
                    child: Container(
                      height: screenHeight / 2.3,
                      width: screenWidth / 1.2,
                      decoration: BoxDecoration(
                        color: signUpClr,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(290),
                          topRight: Radius.circular(290),
                          bottomRight: Radius.circular(300),
                          bottomLeft: Radius.circular(280),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight / 18,
                      left: screenWidth / 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Create new  \nAccount',
                          style: TextStyle(
                            fontSize: 32,
                            color: kBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: screenHeight / 14),
                        const CustomTextField(hintText: 'Enter Email Id'),
                        SizedBox(height: screenHeight / 18),
                        const CustomTextField(hintText: 'Create Username'),
                        SizedBox(height: screenHeight / 18),
                        const CustomTextField(hintText: 'Create Password'),
                        SizedBox(height: screenHeight / 12),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth / 8.0),
                          child: SizedBox(
                            height: 50,
                            width: 229,
                            child: CustomButton(
                              text: 'Sign Up',
                              onPress: () {},
                              textSize: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
