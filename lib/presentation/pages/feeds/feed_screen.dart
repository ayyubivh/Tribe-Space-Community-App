import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:social_app/core/colors/colors.dart';
// import 'package:social_app/application/provider/user_provider.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/presentation/pages/feeds/widgets/story_part.dart';
import 'package:social_app/presentation/pages/feeds/widgets/top_part.dart';
import 'widgets/post_card.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBar(),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: StoryPart(),
              ),
              StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection('posts').snapshots(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Loader();
                  } else {
                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return PostCard(
                          snap: snapshot.data!.docs[index].data(),
                        );
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
