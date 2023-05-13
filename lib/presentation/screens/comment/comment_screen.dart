// ignore_for_file: use_build_context_synchronously
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/application/auth/database/database_bloc.dart';
import 'package:social_app/application/comment/comment_bloc.dart';
import 'package:social_app/core/utils/utilities.dart';
import 'package:social_app/presentation/common_widgets/custom_appbar.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/presentation/screens/comment/widgets/comment_card.dart';

class CommentsScreen extends StatelessWidget {
  final postId;
  const CommentsScreen({Key? key, required this.postId}) : super(key: key);

  void postComment(BuildContext context, String uid, String name,
      String profilePic, String text) async {
    context.read<CommentBloc>().add(SetCommentEvent(
        postId: postId,
        text: text,
        uid: uid,
        name: name,
        profilePic: profilePic));
    Utilities.closeKeyboard(context);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController commentEditingController =
        TextEditingController();

    return BlocListener<CommentBloc, CommentState>(
      listener: (context, state) {
        if (state.commentSuccess == true) {
          commentEditingController.clear();
        }
      },
      child: Scaffold(
        backgroundColor: kWhite,
        body: Column(
          children: [
            const CustomAppBar(
              text: 'Comments',
              icon: Icons.arrow_back,
            ),
            StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('posts')
                  .doc(postId)
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
            color: scBbColorGrey100,
            height: kToolbarHeight,
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
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
                        hintText: 'Add a comment',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                BlocBuilder<DatabaseBloc, DatabaseState>(
                  builder: (context, state) {
                    return InkWell(
                      onTap: () => postComment(
                        context,
                        state.uid,
                        state.userName,
                        " ",
                        commentEditingController.text,
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
      ),
    );
  }
}
