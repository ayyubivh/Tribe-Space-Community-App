import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:social_app/core/constants/firebase_constants.dart';
import 'package:social_app/core/utils/loader.dart';
import 'package:social_app/presentation/common_widgets/profile_screen.dart';

import '../../../core/colors/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();
  bool isShowUsers = false;
  String searchVal = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Form(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: bgColorGrey200,
              ),
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              margin: const EdgeInsets.fromLTRB(16, 18, 16, 0),
              height: 38,
              child: Row(
                children: [
                  const SizedBox(width: 5),
                  Expanded(
                    child: TextFormField(
                      controller: searchController,
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Search names',
                        hintStyle: TextStyle(fontSize: 13, color: kGrey),
                      ),
                      onChanged: (value) {
                        setState(() {
                          if (value.isEmpty) {
                            isShowUsers = false;
                          } else {
                            isShowUsers = true;
                          }
                        });
                      },
                      onFieldSubmitted: (String newVal) {
                        setState(() {
                          isShowUsers = true;
                        });
                      },
                    ),
                  ),
                  InkWell(
                      onTap: () => setState(() {
                            isShowUsers = true;
                          }),
                      child: Icon(Icons.search, color: textGrey, size: 20)),
                ],
              ),
            ),
          ),
        ),
        body: isShowUsers
            ? FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection(FirestoreConstants.pathUserCollection)
                    .where(
                      FirestoreConstants.userName,
                      isGreaterThanOrEqualTo: searchController.text,
                    )
                    .get(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return const Loader();
                  }

                  return ListView.builder(
                    itemCount: (snapshot.data! as dynamic).docs.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(
                              uid: (snapshot.data! as dynamic).docs[index]
                                  [FirestoreConstants.uid],
                            ),
                          ),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              (snapshot.data! as dynamic).docs[index]
                                  [FirestoreConstants.photoUrl],
                            ),
                            radius: 16,
                          ),
                          title: Text(
                            (snapshot.data! as dynamic).docs[index]
                                [FirestoreConstants.userName],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
            : FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection(FirestoreConstants.pathPostCollection)
                    .orderBy(FirestoreConstants.datePuplished)
                    .get(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return const Loader();
                  }

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemCount: (snapshot.data! as dynamic).docs.length,
                      itemBuilder: (context, index) => Image.network(
                        (snapshot.data! as dynamic).docs[index]
                            [FirestoreConstants.postUrl],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
