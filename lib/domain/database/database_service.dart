import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_app/core/constants/firebase_constants.dart';
import 'package:social_app/domain/auth/model/user.dart';

class DatabaseService {
  final String? uid;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  DatabaseService({required this.uid});
  final CollectionReference userCollection = FirebaseFirestore.instance
      .collection(FirestoreConstants.pathUserCollection);
  final CollectionReference groupCollection = FirebaseFirestore.instance
      .collection(FirestoreConstants.pathGroupCollection);

  Future<String> retrieveUserName(UserModels user) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot = await _db
        .collection(FirestoreConstants.pathUserCollection)
        .doc(user.uid)
        .get();
    return snapshot.data()![FirestoreConstants.userName];
  }

//get group admin
  Future getGroupAdmin(String groupId) async {
    DocumentReference documentReference = groupCollection.doc(groupId);
    DocumentSnapshot documentSnapshot = await documentReference.get();
    return documentSnapshot[FirestoreConstants.admin];
  }

// search by name
  searchByName(String groupName) {
    return groupCollection.where("groupName", isEqualTo: groupName).get();
  }

  // toggling the group joined or not
  // Future toggleGroupJoin(
  //     String groupId, String userName, String groupName) async {
  //   // DocumentReference userDocumentReference = userCollection.doc(uid);
  //   // DocumentReference groupDocumentReference = groupCollection.doc(groupId);
  //   // DocumentSnapshot documentSnapshot = await userDocumentReference.get();
  //   // List<dynamic> groups = await documentSnapshot['groups'];
  //   // if (groups.contains("${groupId}_$groupName")) {
  //   //   await userDocumentReference.update({
  //   //     "groups": FieldValue.arrayRemove(["${groupId}_$groupName"])
  //   //   });
  //   //   await groupDocumentReference.update({
  //   //     "members": FieldValue.arrayRemove(["${uid}_$userName"])
  //   //   });
  //   // } else {
  //   //   await userDocumentReference.update({
  //   //     "groups": FieldValue.arrayUnion(["${groupId}_$groupName"])
  //   //   });
  //   //   await groupDocumentReference.update({
  //   //     "members": FieldValue.arrayUnion(["${uid}_$userName"])
  //   //   });
  //   // }
  // }
}
