import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:social_app/presentation/screens/auth/login_screen.dart';
import 'package:social_app/presentation/screens/auth/signup_screen.dart';
import 'package:social_app/presentation/screens/startpage/widgets/image_list_view.dart';
import '../../../core/colors/colors.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = 0;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: onboardGreenColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight / 2,
              child: Row(
                children: const [
                  ImageListView(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenHeight / 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   height: screenHeight / 2,
                  // ),
                  const Text(
                    'Connect With \nPeople around the world',
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 35,
                      fontFamily: 'Monteserrat',
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: screenHeight / 60,
                  ),
                  Text(
                    'We created to bring together amazing \nconnection and also you can share \nyour feeling around the world!',
                    style: TextStyle(
                        color: kWhite.withOpacity(0.7),
                        fontSize: 16,
                        // fontWeight: FontWeight.w300,
                        fontFamily: 'Monteserrat'),
                    textAlign: TextAlign.start,
                  ),

                  SizedBox(
                    height: screenHeight / 40,
                  ),
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        backgroundColor: kWhite,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13)),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SignupScreen.routeName);
                      },
                      child: const Text(
                        'Join now',
                        style: TextStyle(
                          fontSize: 20,
                          color: onboardGreenColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 60,
                  ),
                  Center(
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                          color: kWhite.withOpacity(0.7),
                          fontSize: 15,
                          letterSpacing: 0.2,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                              style: const TextStyle(
                                color: kWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              text: "Login ",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).pushReplacementNamed(
                                      LoginScreen.routeName);
                                })
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight / 70,
            ),
            // SizedBox(
            //   height: screenHeight / 90,
            // ),
          ],
        ),
      ),
    );
  }
}

class DrawClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width, 140.0), radius: 200));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width, 50.0), radius: 300));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
