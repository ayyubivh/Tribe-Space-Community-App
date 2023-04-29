import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:social_app/presentation/common_widgets/profile_screen.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/core/utils/loader.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isShowUsers = false;
  final TextEditingController searchController = TextEditingController();
  String searchVal = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        title: Form(
          child: TextFormField(
            decoration:
                const InputDecoration(labelText: 'Search for a user...'),
            onChanged: (val) {
              searchVal = val;
              setState(() {
                isShowUsers = true;
              });
              print(searchVal);
            },
          ),
        ),
      ),
      body: isShowUsers
          ? FutureBuilder(
              future: FirebaseFirestore.instance
                  .collection('users')
                  .where('userName', isGreaterThanOrEqualTo: searchVal)
                  .get(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Loader();
                }
                return ListView.builder(
                  itemCount: (snapshot.data! as dynamic).docs.length,
                  itemBuilder: (context, index) {
                    print((snapshot.data! as dynamic).docs[index]['userName']);
                    return ListTile(
                      title: Text(snapshot.data!.docs[index]['userName']),
                      // leading: CircleAvatar(
                      //   backgroundImage: NetworkImage(
                      //     (snapshot.data! as dynamic).docs[index]['photoUrl'],
                      //   ),
                      // ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(
                                uid: (snapshot.data! as dynamic).docs[index]
                                    ['uid'],
                              ),
                            ));
                      },
                    );
                  },
                );
              },
            )
          : FutureBuilder(
              future: FirebaseFirestore.instance.collection('posts').get(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Loader();
                }
                return StaggeredGridView.countBuilder(
                  itemCount: snapshot.data!.docs.length,
                  crossAxisCount: 3,
                  itemBuilder: (context, index) {
                    return Image.network(
                      snapshot.data!.docs[index]['posturl'],
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.count(
                    (index % 7 == 0) ? 2 : 1,
                    (index % 7 == 0) ? 2 : 1,
                  ),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                );
              },
            ),
    );
  }
}
