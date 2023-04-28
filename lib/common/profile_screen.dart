import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app/common/follow_botton.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/consts.dart';
import 'package:social_app/core/utils/utils.dart';
import 'package:social_app/domain/post/post_firestore_methods.dart';
import 'package:social_app/presentation/home/widgets/story_part.dart';
import 'package:social_app/presentation/mainpage/main_page.dart';
import '../core/utils/loader.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = "/profile-screen";
  final String uid;
  const ProfileScreen({super.key, required this.uid});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var userData = {};
  int postLen = 0;
  int followers = 0;
  int following = 0;
  bool isFollowing = false;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    setState(() {
      isLoading = true;
    });
    try {
      var userSnap = await FirebaseFirestore.instance
          .collection('users')
          .doc(widget.uid)
          .get();

      var postSnap = await FirebaseFirestore.instance
          .collection('posts')
          .where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .get();

      userData = userSnap.data()!;
      postLen = postSnap.docs.length;
      followers = userSnap.data()!['followers'].length;
      following - userSnap.data()!['following'].length;
      isFollowing = userSnap
          .data()!['followers']
          .contains(FirebaseAuth.instance.currentUser!.uid);
      setState(() {});
    } catch (e) {
      showSnackbar(context, kRed, e.toString());
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Loader()
        : Scaffold(
            appBar: AppBar(
              backgroundColor: kWhite,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, MainPage.routeName);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: primaryColor,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                color: kWhite,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
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
                                  image: NetworkImage(
                                    userData['photoUrl'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 2,
                                  color: kWhite,
                                ),
                              ),
                              width: 88,
                              height: 88,
                            ),
                          ),
                          kWidth10,
                          kWidth10,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  userData['fullName'].toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      overflow: TextOverflow.fade),
                                ),
                                kHeight5,
                                Text(
                                  '@Fashion Designer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.5,
                                    color: textGrey.withOpacity(0.6),
                                  ),
                                ),
                                kHeight5,
                                Row(
                                  children: [
                                    FirebaseAuth.instance.currentUser!.uid ==
                                            widget.uid
                                        ? FollowButton(
                                            onPress: () {},
                                            text: 'Edit Profile',
                                          )
                                        : isFollowing
                                            ? FollowButton(
                                                onPress: () async {
                                                  await FirestoreMethods()
                                                      .followUser(
                                                    FirebaseAuth.instance
                                                        .currentUser!.uid,
                                                    userData['uid'],
                                                  );
                                                  setState(() {
                                                    isFollowing = false;
                                                    followers--;
                                                  });
                                                },
                                                text: 'Unfollow',
                                              )
                                            : FollowButton(
                                                onPress: () async {
                                                  await FirestoreMethods()
                                                      .followUser(
                                                    FirebaseAuth.instance
                                                        .currentUser!.uid,
                                                    userData['uid'],
                                                  );
                                                  setState(() {
                                                    isFollowing = true;
                                                    followers++;
                                                  });
                                                },
                                                text: 'Follow',
                                              ),
                                    kWidth,
                                    Container(
                                      height: 34,
                                      width: 34,
                                      padding: const EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: primaryColor,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.message_rounded,
                                          size: 16.5,
                                          color: kWhite,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    kHeight20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        statsColumn(
                          following.toString(),
                          'Following',
                        ),
                        statsColumn(
                          followers.toString(),
                          'Followers',
                        ),
                        statsColumn(
                          postLen.toString(),
                          'Posts',
                        ),
                      ],
                    ),
                    kHeight30,
                    const StoryPart(),
                    const Divider(height: 10),
                    kHeight10,
                    FutureBuilder(
                      future: FirebaseFirestore.instance
                          .collection('posts')
                          .where('uid', isEqualTo: widget.uid)
                          .get(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Loader();
                        }
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                          ),
                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return Image.network(
                              snapshot.data!.docs[index]['posturl'],
                              fit: BoxFit.cover,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Widget statsColumn(String count, String text) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: textGrey.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
