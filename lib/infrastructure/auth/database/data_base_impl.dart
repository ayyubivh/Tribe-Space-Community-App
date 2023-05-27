// ignore_for_file: depend_on_referenced_packages
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app/domain/auth/model/user.dart';
import '../../../domain/database/data_base_repo.dart';

@LazySingleton(as: DatabaseReopsitory)
class DatabaseRepoImpl implements DatabaseReopsitory {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<List<UserModels>> retrieveUserData() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await _db.collection("users").get();
    return snapshot.docs
        .map((docsSnapshot) => UserModels.fromDocumentSnapshot(docsSnapshot))
        .toList();
  }

  @override
  Future<void> saveUserData(UserModels user) {
    return _db.collection("users").doc(user.uid).set(user.toMap());
  }

  @override
  Future<void> saveProfilePhot(String photo) {
    return _db
        .collection("users")
        .doc(_auth.currentUser!.uid)
        .update({'photoUrl': photo});
  }

  Future<void> getUserName(UserModels user) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _db.collection("users").doc(user.uid).get();
    return snapshot.data()!["userName"];
  }

  @override
  Future<UserModels> getUserDetails() async {
    User currrentUser = _auth.currentUser!;
    DocumentSnapshot documentSnapshot =
        await _db.collection("users").doc(currrentUser.uid).get();
    return UserModels.fromSnap(documentSnapshot);
  }

  // @override
  // Future<bool> isUserJoined(String groupName, String groupId) async {
  //   //   DocumentReference userDocumentReference = _db
  //   //       .collection(FirestoreConstants.pathUserCollection)
  //   //       .doc(_auth.currentUser!.uid);
  //   //   DocumentSnapshot documentSnapshot = await userDocumentReference.get();

  //   //   List<dynamic> groups = await documentSnapshot['groups'];
  //   //   if (groups.contains("${groupId}_$groupName")) {
  //   //     // log('contains true>>>>> grp id $groupId');
  //   //     return true;
  //   //   } else {
  //   //     log('no conatains false>>>>> grp id ${groupId}_$groupName');
  //   //     return false;
  //   //   }
  // }
}
