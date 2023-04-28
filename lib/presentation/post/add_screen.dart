// ignore_for_file: use_build_context_synchronously
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
// import 'package:social_app/application/provider/user_provider.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/utils/utils.dart';
import 'package:social_app/domain/post/post_firestore_methods.dart';
import '../../domain/auth/model/user.dart';

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
      String res = await FirestoreMethods().uploadPost(
          discriptionController.text, _file!, uid, userName, profileImage);
      if (res == "success") {
        setState(() {
          _isLoading = false;
        });
        showSnackbar(context, Colors.green, 'success');
        clearImage();
      } else {
        showSnackbar(context, kRed, res);
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      showSnackbar(context, kRed, e.toString());
    }
  }

  selectImage(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text("Create a Post"),
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
    // final User user = Provider.of<UserProvider>(context).getUser;
    return _file == null
        ? Scaffold(
            body: Center(
              child: IconButton(
                onPressed: () => selectImage(context),
                icon: const Icon(
                  Icons.upload,
                  size: 50,
                ),
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
                backgroundColor: kWhite,
                elevation: 0,
                title: const Text(
                  "Post to",
                  style: TextStyle(
                    color: kBlack,
                  ),
                ),
                actions: [
                  // TextButton(
                  //   child: Text("post",
                  //       style: TextStyle(
                  //         color: Theme.of(context).primaryColor,
                  //         fontSize: 16,
                  //       )),
                  //   // onPressed: () => postImage(
                  //   //   user.uid,
                  //   //   user.fullName,
                  //   //   user.photoUrl,
                  //   // ),
                  // ),
                ]),
            body: Column(
              children: [
                _isLoading
                    ? const LinearProgressIndicator()
                    : const Padding(
                        padding: EdgeInsets.only(top: 0),
                      ),
                Row(
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
                        decoration: const InputDecoration(
                          hintText: "write a caption...",
                          border: InputBorder.none,
                          hintStyle: TextStyle(),
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
                )
              ],
            ),
          );
  }
}
