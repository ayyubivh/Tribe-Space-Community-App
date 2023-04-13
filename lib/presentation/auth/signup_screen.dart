// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app/common/custom_btn.dart';
import 'package:social_app/common/text_form_field.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/core/utils/utils.dart';
import 'package:social_app/helper/helper_functions.dart';
import '../../core/colors/colors.dart';
import '../../domain/auth/auth_method.dart';
import '../home/home_screen.dart';
import '../mainpage/main_page.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = "/sign-up-screen";
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String userName = '';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  Uint8List? _image;
  bool _isLoading = false;
  final AuthMethods authMethods = AuthMethods();
  final formkey = GlobalKey<FormState>();

  selectImage() async {
    Uint8List im = await pickimage(ImageSource.gallery);
    // set state because we need to display the image we selected on the circle avatar
    setState(() {
      _image = im;
    });
  }

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
                    child: Form(
                      key: formkey,
                      child: SingleChildScrollView(
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
                            Stack(
                              children: [
                                _image != null
                                    ? CircleAvatar(
                                        radius: 64,
                                        backgroundImage: MemoryImage(_image!),
                                      )
                                    : const CircleAvatar(
                                        radius: 59,
                                        backgroundImage: NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfd_zHfi__RrE9HcIukgjGt6HdH7ZFbjERDA&usqp=CAU',
                                        ),
                                      ),
                                Positioned(
                                  bottom: -10,
                                  left: 80,
                                  child: IconButton(
                                    onPressed: selectImage,
                                    icon: const Icon(
                                      Icons.add_a_photo,
                                      color: kWhite,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: screenHeight / 22),
                            CustomTextField(
                                hintText: 'Enter UserName',
                                controller: _userNameController),
                            SizedBox(height: screenHeight / 18),
                            CustomTextField(
                              hintText: 'Create Email',
                              controller: _emailController,
                            ),
                            SizedBox(height: screenHeight / 18),
                            CustomTextField(
                                hintText: 'Create Password',
                                controller: _passwordController),
                            SizedBox(height: screenHeight / 16),
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth / 8.0),
                              child: SizedBox(
                                height: 50,
                                width: 229,
                                child: _isLoading
                                    ? const Loader()
                                    : CustomButton(
                                        text: 'Sign Up',
                                        onPress: signUp,
                                        textSize: 25,
                                      ),
                              ),
                            )
                          ],
                        ),
                      ),
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

  signUp() async {
    if (formkey.currentState!.validate()) {
      if (_image == null) {
        return;
      }
      setState(() {
        _isLoading = true;
      });

      String res = await AuthMethods().signUpUser(
          email: _emailController.text,
          password: _passwordController.text,
          fullName: _userNameController.text,
          file: _image!);
      if (res == "success") {
        DocumentSnapshot snap = await FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get();

        await HelperFunctions.saveUserNameSF(
            (snap.data() as Map<String, dynamic>)['fullName']);
        setState(() {
          _isLoading = false;
        });

        showSnackbar(context, Colors.green, res);

        Navigator.of(context).pushReplacementNamed(MainPage.routeName);
      } else {
        setState(() {
          _isLoading = false;
        });
        showSnackbar(context, Colors.red, res);
      }
    }
  }
}
