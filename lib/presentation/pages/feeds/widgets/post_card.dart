import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:social_app/application/provider/user_provider.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/consts.dart';
import 'package:social_app/core/utils/utils.dart';
import 'package:social_app/domain/post/post_firestore_methods.dart';
import 'package:social_app/presentation/pages/comment/comment_screen.dart';
import 'package:social_app/presentation/pages/feeds/widgets/like_animation.dart';

class PostCard extends StatefulWidget {
  final snap;
  const PostCard({super.key, required this.snap});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  int commentLen = 0;
  @override
  void initState() {
    super.initState();
    fetchCommentLen();
  }

  fetchCommentLen() async {
    try {
      QuerySnapshot snap = await FirebaseFirestore.instance
          .collection('posts')
          .doc(widget.snap['postId'])
          .collection('comments')
          .get();
      commentLen = snap.docs.length;
    } catch (err) {
      showSnackbar(context, Colors.red, err.toString());
    }
    // setState(() {});
  }

  bool isLikeAnimating = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                // offset: Offset(5.0, 5.0),
                blurRadius: 10.0,
                spreadRadius: 1.0),
          ],
          color: kWhite,
          borderRadius: BorderRadius.circular(20),
        ),
        width: screenwidth,
        height: screenHeight / 1.22,
        child: Column(
          children: [
            topContainer(context),
            kHeight10,
            postCardImage(screenHeight, context),
            reactRow(context)
          ],
        ),
      ),
    );
  }

  Widget reactRow(context) {
    // final User user = Provider.of<UserProvider>(context).getUser;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // LikeAnimation(
            //   isAnimating: widget.snap['likes'].contains(user.uid),
            //   smallLike: true,
            //   child: postReactRow(
            //     icon: IconButton(
            //       onPressed: () async {
            //         // await FirestoreMethods().likePost(
            //         //     widget.snap['postId'], user.uid, widget.snap['likes']);
            //       },
            //       // icon: widget.snap['likes'].contains(user.uid)
            //           // ? const Icon(
            //           //     Icons.favorite,
            //           //     color: kRed,
            //           //     size: 24,
            //           //   )
            //           // : const Icon(
            //           //     Icons.favorite_border,
            //           //     color: kRed,
            //           //     size: 24,
            //           //   ),
            //     ),
            //     text: "Like",
            //   ),
            // ),
            kWidth,
            postReactRow(
                icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return CommentsScreen(
                              postId: widget.snap['postId'].toString());
                        },
                      ));
                    },
                    icon: Icon(
                      Icons.chat_outlined,
                      color: gTextClr,
                      size: 24,
                    )),
                text: "Comment"),
            kWidth,
            postReactRow(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send_outlined,
                    color: gTextClr,
                    size: 24,
                  ),
                ),
                text: "Share"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${widget.snap['likes'].length} likes'),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: textGrey),
                  children: [
                    TextSpan(
                      text: widget.snap['userName'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: widget.snap['description'],
                    ),
                  ],
                ),
              ),
              kHeight10,
              InkWell(
                onTap: () {},
                child: Text(
                  'view all $commentLen comments',
                  style: TextStyle(
                    fontSize: 16,
                    color: textGrey.withOpacity(0.7),
                  ),
                ),
              ),
              kHeight5,
              Text(
                DateFormat.yMMMd()
                    .format(widget.snap['datePublished'].toDate()),
                style: TextStyle(
                  fontSize: 15,
                  color: textGrey.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget postCardImage(double screenHeight, context) {
    // final User user = Provider.of<UserProvider>(context).getUser;

    return GestureDetector(
      onDoubleTap: () async {
        // await FirestoreMethods().likePost(
        //   widget.snap['postId'],
        //   user.uid,
        //   widget.snap['likes'],
        // );
        setState(() {
          isLikeAnimating = true;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: screenHeight / 2.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                  widget.snap['posturl'],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: isLikeAnimating ? 1 : 0,
            duration: const Duration(milliseconds: 200),
            child: LikeAnimation(
              isAnimating: isLikeAnimating,
              onEnd: () {
                setState(() {
                  isLikeAnimating = false;
                });
              },
              child: const Icon(
                Icons.favorite,
                color: kWhite,
                size: 120,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget topContainer(context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.snap['posturl']),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 2,
                color: kWhite,
              ),
            ),
            width: 58,
            height: 58,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0).copyWith(
            bottom: 30,
          ),
          child: Row(
            children: [
              Text(
                widget.snap['userName'],
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0).copyWith(
            bottom: 30,
          ),
          child: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        shrinkWrap: true,
                        children: [
                          'Delete',
                          'copy link',
                        ]
                            .map(
                              (e) => InkWell(
                                onTap: () {
                                  FirestoreMethods()
                                      .deletePost(widget.snap['postId']);
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12,
                                    horizontal: 16,
                                  ),
                                  child: Text(e),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.more_horiz_sharp,
                size: 28,
              )),
        )
      ],
    );
  }

  Row postReactRow({
    required IconButton icon,
    required String text,
  }) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: icon,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 13,
            color: gTextClr,
          ),
        )
      ],
    );
  }
}
