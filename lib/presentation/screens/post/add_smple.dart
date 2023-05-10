// // ignore_for_file: use_build_context_synchronously
// import 'dart:developer';
// import 'dart:typed_data';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:social_app/application/auth/database/database_bloc.dart';
// import 'package:social_app/application/image/image_bloc.dart';
// import 'package:social_app/application/post/post_bloc.dart';
// import 'package:social_app/core/colors/colors.dart';
// import 'package:social_app/domain/post/model/post_model.dart';
// import 'package:social_app/presentation/common_widgets/custom_appbar.dart';
// import 'package:social_app/presentation/screens/feeds/feed_screen.dart';
// import 'package:social_app/presentation/screens/mainpage/main_page.dart';
// import 'package:social_app/presentation/screens/messages/group_chat/group_chat.dart';

// class AddPostScreen extends StatelessWidget {
//   static const routeName = "/add-post-screen";
//   const AddPostScreen({super.key});

//   // void postImage(
//   selectImage(BuildContext context) async {
//     return showDialog(
//       context: context,
//       builder: (context) {
//         return SimpleDialog(
//           title: Text(
//             "Create a Post",
//             style: TextStyle(color: primaryColor),
//           ),
//           children: [
//             SimpleDialogOption(
//               padding: const EdgeInsets.all(20),
//               child: BlocBuilder<ImageBloc, ImageState>(
//                 builder: (context, state) => Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: const [
//                     Text("Take a photo"),
//                     Icon(
//                       Icons.camera,
//                     )
//                   ],
//                 ),
//               ),
//               onPressed: () async {
//                 context
//                     .read<ImageBloc>()
//                     .add(const PickImageEvent(source: ImageSource.camera));
//                 Navigator.of(context).pop();
//               },
//             ),
//             SimpleDialogOption(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: const [
//                   Text("Choose from gallery"),
//                   Icon(
//                     Icons.photo,
//                   )
//                 ],
//               ),
//               onPressed: () async {
//                 context
//                     .read<ImageBloc>()
//                     .add(const PickImageEvent(source: ImageSource.gallery));
//                 Navigator.of(context).pop();
//               },
//             ),
//             SimpleDialogOption(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: const [
//                   Text(
//                     "Cancel",
//                     style: TextStyle(
//                       color: kRed,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   onPost(BuildContext context, String discription, Uint8List file) {
//     final userName = context.read<DatabaseBloc>().state.userName;

//     context.read<PostBloc>().add(
//           UploadPostEvent(
//               description: discription,
//               file: file,
//               uid: FirebaseAuth.instance.currentUser!.uid,
//               userName: userName,
//               profileImage: 'profileImage'),
//         );
//   }

//   @override
//   Widget build(BuildContext context) {
//     bool _isLoading = false;
//     final TextEditingController discriptionController = TextEditingController();

//     return BlocConsumer<ImageBloc, ImageState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return BlocListener<PostBloc, PostState>(
//           listener: (context, state) {
//             if (state.postUploadSuccess) {
//               context.read<ImageBloc>().add(const ClearImage());
//               Navigator.of(context).pushNamed(MainPage.routeName);
//             }
//             if (state.isLoading == true) {
//               _isLoading = true;
//               log('ause >>> ${_isLoading.toString()} ');
//             }
//           },
//           child: state.imagebytes == null
//               ? Scaffold(
//                   body: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset('assets/images/upload_image.jpg'),
//                       IconButton(
//                         onPressed: () => selectImage(context),
//                         icon: Icon(
//                           Icons.upload,
//                           size: 50,
//                           color: primaryColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               : Scaffold(
//                   body: Column(
//                     children: [
//                       CustomAppBar(
//                         text: 'Create New Post',
//                         optText: 'Post',
//                         onTap: () {
//                           if (discriptionController.text.isNotEmpty) {
//                             onPost(context, discriptionController.text,
//                                 state.imagebytes!);
//                           }

//                           // state.imagebytes!.clear();
//                         },
//                         icon: Icons.close,
//                       ),
//                       _isLoading == true
//                           ? const LinearProgressIndicator()
//                           : const Padding(
//                               padding: EdgeInsets.only(top: 0),
//                             ),
//                       Padding(
//                         padding: const EdgeInsets.all(18.0),
//                         child: Container(
//                           padding: const EdgeInsets.only(top: 10),
//                           decoration: BoxDecoration(
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.grey.shade300,
//                                   // offset: Offset(5.0, 5.0),
//                                   blurRadius: 10.0,
//                                   spreadRadius: 1.0),
//                             ],
//                             color: kWhite,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const CircleAvatar(
//                                   // backgroundImage: NetworkImage(user.photoUrl),
//                                   ),
//                               SizedBox(
//                                 width: MediaQuery.of(context).size.width * 0.45,
//                                 child: TextField(
//                                   controller: discriptionController,
//                                   decoration: InputDecoration(
//                                     hintText: "What's on your mind ?",
//                                     border: InputBorder.none,
//                                     hintStyle: TextStyle(
//                                         color: textGrey.withOpacity(0.5),
//                                         fontSize: 14),
//                                   ),
//                                   maxLines: 8,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 45,
//                                 width: 45,
//                                 child: AspectRatio(
//                                   aspectRatio: 487 / 451,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                         image: MemoryImage(
//                                           state.imagebytes!,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//         );
//       },
//     );
//   }
// }
