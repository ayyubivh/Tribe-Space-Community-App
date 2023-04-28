import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:social_app/application/provider/user_provider.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/presentation/auth/login_screen.dart';
import 'package:social_app/presentation/home/widgets/story_part.dart';
import 'package:social_app/presentation/home/widgets/top_part.dart';
import '../../core/colors/colors.dart';
import 'widgets/post_card.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // String userName = '';

  @override
  void initState() {
    super.initState();
    // addData();
    // getUserName();
  }

  // addData() async {
  //   UserProvider userProvider = Provider.of(context, listen: false);
  //   await userProvider.refreshUser();
  // }

  // void getUserName() async {
  //   await HelperFunctions.getUserNameFromSF().then((value) {
  //     setState(() {
  //       // userName = value!;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBar(),
              const StoryPart(),
              ElevatedButton(
                  onPressed: () {
                    print('>>>>>>hitt ');
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  child: Text('Sample')),
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
