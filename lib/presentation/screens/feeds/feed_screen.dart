import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/application/auth/auth_bloc.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/constants/consts.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/domain/auth/auth_failures.dart';
import 'package:social_app/presentation/common_widgets/custom_btn.dart';
import 'package:social_app/presentation/screens/auth/login_screen.dart';
import 'package:social_app/presentation/screens/feeds/widgets/story_part.dart';
import '../post/add_screen.dart';
import 'widgets/post_card.dart';

class FeedScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            Navigator.of(context).pushNamedAndRemoveUntil(
                LoginScreen.routeName, (route) => false);
          }
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Tribe space',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AddPostScreen(),
                      ));
                    },
                    icon: Icon(
                      Icons.add,
                      size: 25,
                      color: Theme.of(context).primaryColor,
                    )),
                Icon(Icons.favorite_border,
                    color: Theme.of(context).primaryColor),
                kWidth,
              ],
            ),
            backgroundColor: kWhite,
            body: SafeArea(
                child: SingleChildScrollView(
                    child: Column(children: [
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return CustomButton(
                    text: 'log out',
                    textSize: 25,
                    onPress: () {
                      context.read<AuthBloc>().add(const AuthEvent.signout());
                      Navigator.pushNamedAndRemoveUntil(
                          context, LoginScreen.routeName, (route) => false);
                    },
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: StoryPart(),
              ),
              StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('posts')
                      .snapshots(),
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
                  })
            ])))));
  }
}
