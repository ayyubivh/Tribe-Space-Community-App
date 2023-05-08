// ignore_for_file: use_build_context_synchronously
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/application/auth/database/database_bloc.dart';
// import 'package:social_app/application/provider/user_provider.dart';
import 'package:social_app/presentation/common_widgets/custom_appbar.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/utils/utils.dart';
import 'package:social_app/presentation/screens/comment/widgets/comment_card.dart';
import '../../../domain/post/post_firestore_methods.dart';

class CommentsScreen extends StatefulWidget {
  final postId;
  const CommentsScreen({Key? key, required this.postId}) : super(key: key);

  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  final TextEditingController commentEditingController =
      TextEditingController();

  void postComment(String uid, String name, String profilePic) async {
    try {
      String res = await FirestoreMethods().postComment(
        widget.postId,
        commentEditingController.text,
        uid,
        name,
        profilePic,
      );

      if (res != 'success') {
        showSnackbar(context, Colors.grey, 'commented');
      }
      setState(() {
        commentEditingController.text = "";
      });
    } catch (err) {
      showSnackbar(context, Colors.grey, err.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<DatabaseBloc>(context)
        .add(const DatabaseEvent.databaseFetched());
  }

  @override
  Widget build(BuildContext context) {
    // final User user = Provider.of<UserProvider>(context).getUser;

    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          const CustomAppBar(
            text: 'Comments',
          ),
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('posts')
                .doc(widget.postId)
                .collection('comments')
                .orderBy('datePublished', descending: true)
                .snapshots(),
            builder: (context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (ctx, index) => CommentCard(
                  snap: snapshot.data!.docs[index],
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: kToolbarHeight,
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          padding: const EdgeInsets.only(left: 16, right: 8),
          child: Row(
            children: [
              const CircleAvatar(
                // backgroundImage: NetworkImage(user.photoUrl),
                radius: 18,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 8),
                  child: TextField(
                    controller: commentEditingController,
                    decoration: const InputDecoration(
                      // hintText: 'Comment as ${user.fullName}',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              BlocBuilder<DatabaseBloc, DatabaseState>(
                builder: (context, state) {
                  return InkWell(
                    onTap: () => postComment(
                      state.uid,
                      state.userName,
                      " ",
                    ),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: primaryColor,
                          ),
                          child: const Icon(
                            Icons.send,
                            color: kWhite,
                          ),
                        )),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
