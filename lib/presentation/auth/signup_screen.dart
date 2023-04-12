import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app/common/custom_btn.dart';
import 'package:social_app/common/text_form_field.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/core/utils/utils.dart';
import '../../core/colors/colors.dart';
import '../../domain/auth/auth_methods.dart';
import '../../helper/helper_functions.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = "/sign-up-screen";
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  Uint8List? _image;
  bool _isLoading = false;
  final AuthService authService = AuthService();
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
        child: _isLoading
            ? const Loader()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight / 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: kBlack,
                          borderRadius: BorderRadius.circular(50)),
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
                                              backgroundImage:
                                                  MemoryImage(_image!),
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
                                          icon: Icon(
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
                                    padding: EdgeInsets.only(
                                        left: screenWidth / 8.0),
                                    child: SizedBox(
                                      height: 50,
                                      width: 229,
                                      child: CustomButton(
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
      // setState(() {
      //   _isLoading = true;
      // });
      // if (_image == null) {
      //   return;
      // }
      await authService
          .registerUserWithEmailandPassword(_userNameController.text,
              _emailController.text, _passwordController.text)
          .then((value) async {
        if (value == true) {
          await HelperFunctions.saveUserLoggedInStatus(true);
          await HelperFunctions.saveUserEmailSF(_emailController.text);
          await HelperFunctions.saveUserNameSF(_userNameController.text);
          // ignore: use_build_context_synchronously
          // nextScreen(context, const HomePage());
          // ignore: use_build_context_synchronously
          showSnackbar(context, Colors.green, 'Signup Successfully!');
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
