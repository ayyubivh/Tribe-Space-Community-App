// ignore_for_file: use_build_context_synchronously
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app/application/auth/database/database_bloc.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/utils/utils.dart';
import 'package:social_app/domain/post/post_firestore_methods.dart';
import 'package:social_app/presentation/common_widgets/custom_appbar.dart';

class AddPostScreen extends StatefulWidget {
  static const routeName = "/add-post-screen";
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  Uint8List? _file;
  bool _isLoading = false;
  final TextEditingController discriptionController = TextEditingController();
  void postImage(
    String uid,
    String userName,
    String profileImage,
  ) async {
    try {
      setState(() {
        _isLoading = true;
      });
      String res = await FirestoreMethods()
          .uploadPost(discriptionController.text, _file!, uid, userName, " ");
      if (res == "success") {
        setState(() {
          _isLoading = false;
        });
        showSnackbar(context, primaryColor, 'success');
        clearImage();
      } else {
        showSnackbar(context, kRed, res);
        setState(() {
          _isLoading = false;
        });
      }
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      showSnackbar(context, kRed, e.toString());
    }
  }

  selectImage(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text(
            "Create a Post",
            style: TextStyle(color: primaryColor),
          ),
          children: [
            SimpleDialogOption(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Take a photo"),
                  Icon(
                    Icons.camera,
                  )
                ],
              ),
              onPressed: () async {
                Navigator.of(context).pop();
                Uint8List file = await pickimage(
                  ImageSource.camera,
                );
                setState(() {
                  _file = file;
                });
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Choose from gallery"),
                  Icon(
                    Icons.photo,
                  )
                ],
              ),
              onPressed: () async {
                Navigator.of(context).pop();
                Uint8List file = await pickimage(
                  ImageSource.gallery,
                );
                setState(() {
                  _file = file;
                });
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Cancel",
                    style: TextStyle(
                      color: kRed,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void clearImage() {
    _file = null;
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DatabaseBloc>(context)
          .add(const DatabaseEvent.databaseFetched());
    });
    return _file == null
        ? Scaffold(
            body: Center(
              child: IconButton(
                onPressed: () => selectImage(context),
                icon: Icon(
                  Icons.upload,
                  size: 50,
                  color: primaryColor,
                ),
              ),
            ),
          )
        : Scaffold(
            // appBar: AppBar(
            //   iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
            //   backgroundColor: kWhite,
            //   elevation: 0,
            //   title: const Text(
            //     "Post to",
            //     style: TextStyle(
            //       color: kBlack,
            //     ),
            //   ),
            //   actions: [
// BlocBuilder<DatabaseBloc, DatabaseState>(
//                   builder: (context, state) {
//                     return TextButton(
//                       child: Text("post",
//                           style: TextStyle(
//                             color: primaryColor,
//                             fontSize: 16,
//                           )),
//                       onPressed: () {
//                         postImage(state.uid, state.userName, "");
//                       },
//                     );
//                   },
//                 ),
            //   ],
            // ),
            body: Column(
              children: [
                BlocBuilder<DatabaseBloc, DatabaseState>(
                  builder: (context, state) => CustomAppBar(
                    text: 'Create New Post',
                    optText: 'Post',
                    onTap: () {
                      postImage(state.uid, state.userName, "");
                    },
                    icon: Icons.close,
                  ),
                ),
                _isLoading
                    ? const LinearProgressIndicator()
                    : const Padding(
                        padding: EdgeInsets.only(top: 0),
                      ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            // offset: Offset(5.0, 5.0),
                            blurRadius: 10.0,
                            spreadRadius: 1.0),
                      ],
                      color: kWhite,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            // backgroundImage: NetworkImage(user.photoUrl),
                            ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: TextField(
                            controller: discriptionController,
                            decoration: InputDecoration(
                              hintText: "What's on your mind ?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: textGrey.withOpacity(0.5),
                                  fontSize: 14),
                            ),
                            maxLines: 8,
                          ),
                        ),
                        SizedBox(
                          height: 45,
                          width: 45,
                          child: AspectRatio(
                              aspectRatio: 487 / 451,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: MemoryImage(_file!))),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
