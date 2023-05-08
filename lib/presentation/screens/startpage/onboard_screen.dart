import 'package:flutter/material.dart';
import 'package:social_app/presentation/common_widgets/custom_btn.dart';
import 'package:social_app/core/constants/consts.dart';
import 'package:social_app/presentation/screens/auth/login_screen.dart';
import '../../../core/colors/colors.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = 0;
    double screenWidth = 0;
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight / 1.45,
                // color: Colors.amber,
                child: Stack(
                  children: [
                    Positioned(
                      top: 200,
                      child: ClipPath(
                        clipper: DrawClip1(),
                        child: Container(
                          height: screenHeight,
                          width: screenWidth,
                          color: onBoardColor,
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: DrawClip(),
                      child: Container(
                        color: onBoardColor,
                        height: screenHeight,
                        width: screenWidth,
                      ),
                    ),
                    Positioned(
                      top: 80,
                      right: 40,
                      child: CircleAvatar(
                        backgroundColor: onBoardColor,
                        backgroundImage:
                            const AssetImage('assets/images/onboard2.jpg'),
                        radius: 55,
                      ),
                    ),
                    Positioned(
                      top: 200,
                      right: 85,
                      child: CircleAvatar(
                        backgroundColor: onBoardColor,
                        radius: 75,
                        backgroundImage:
                            const AssetImage('assets/images/onboard1.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      ' Let\'s  Get Started',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 35,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const Text(
                      '  Grow Together',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    kHeight20,
                    Padding(
                      padding: EdgeInsets.only(
                        left: screenWidth / 6.5,
                      ),
                      child: SizedBox(
                        height: 52,
                        width: 221,
                        child: CustomButton(
                          textSize: 25,
                          text: 'JOIN NOW',
                          onPress: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                LoginScreen.routeName, (route) => false);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
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
