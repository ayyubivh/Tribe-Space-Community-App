import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import '../../core/constants/firebase_constants.dart';
import '../../domain/messages/i_chat_repo.dart';

@LazySingleton(as: IGroupChatRepo)
class ChatRepository implements IGroupChatRepo {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  final CollectionReference userCollection = FirebaseFirestore.instance
      .collection(FirestoreConstants.pathUserCollection);
  final CollectionReference groupCollection = FirebaseFirestore.instance
      .collection(FirestoreConstants.pathGroupCollection);

  @override
  Future<void> createGroup(String userName, String id, String groupName) async {
    DocumentReference groupDocumentReference = await groupCollection.add({
      FirestoreConstants.groupName: groupName,
      FirestoreConstants.groupIcon: " ",
      FirestoreConstants.admin: "${id}_$userName",
      FirestoreConstants.members: [],
      FirestoreConstants.groupId: "",
      FirestoreConstants.recentMessage: "",
      FirestoreConstants.recentMessageSender: ""
    });
    await groupDocumentReference.update({
      FirestoreConstants.members: FieldValue.arrayUnion(["${id}_$userName"]),
      FirestoreConstants.groupId: groupDocumentReference.id
    });

    DocumentReference userDcoumentReference = userCollection.doc(id);
    await userDcoumentReference.update({
      FirestoreConstants.groups:
          FieldValue.arrayUnion(["${groupDocumentReference.id}_$groupName"])
    });
  }

  @override
  Stream<QuerySnapshot> getGroupChat(String groupId) {
    return groupCollection
        .doc(groupId)
        .collection(FirestoreConstants.pathMessageCollection)
        .orderBy(FirestoreConstants.time)
        .snapshots();
  }

  @override
  Stream<DocumentSnapshot> getUserGroups() {
    return userCollection.doc(_auth.currentUser!.uid).snapshots();
  }

  @override
  Future<void> sendGroupMessage(
      String groupId, Map<String, dynamic> chatMessageData) async {
    await groupCollection
        .doc(groupId)
        .collection(FirestoreConstants.messages)
        .add(chatMessageData);

    await groupCollection.doc(groupId).update({
      FirestoreConstants.recentMessage:
          chatMessageData[FirestoreConstants.messages],
      FirestoreConstants.recentMessageSender:
          chatMessageData[FirestoreConstants.sender],
      FirestoreConstants.recentMessageTime:
          chatMessageData[FirestoreConstants.time].toString(),
    });
  }

  @override
  Future toggleGroupJoinedOrNot(
      String groupId, String userName, String groupName) async {
    DocumentReference userDocumentReference =
        userCollection.doc(_auth.currentUser!.uid);
    DocumentReference groupDocumentReference = groupCollection.doc(groupId);
    DocumentSnapshot documentSnapshot = await userDocumentReference.get();
    List<dynamic> groups = await documentSnapshot['groups'];
    if (groups.contains("${groupId}_$groupName")) {
      await userDocumentReference.update({
        "groups": FieldValue.arrayRemove(["${groupId}_$groupName"])
      });
      await groupDocumentReference.update({
        "members":
            FieldValue.arrayRemove(["${_auth.currentUser!.uid}_$userName"])
      });
    } else {
      await userDocumentReference.update({
        "groups": FieldValue.arrayUnion(["${groupId}_$groupName"])
      });
      await groupDocumentReference.update({
        "members":
            FieldValue.arrayUnion(["${_auth.currentUser!.uid}_$userName"])
      });
    }
  }

  @override
  Future<bool> isUserJoined(String groupName, String groupId) async {
    DocumentReference userDocumentReference = _db
        .collection(FirestoreConstants.pathUserCollection)
        .doc(_auth.currentUser!.uid);
    DocumentSnapshot documentSnapshot = await userDocumentReference.get();

    List<dynamic> groups = await documentSnapshot['groups'];
    if (groups.contains("${groupId}_$groupName")) {
      // log('contains true>>>>> grp id $groupId');
      return true;
    } else {
      log('no conatains false>>>>> grp id ${groupId}_$groupName');
      return false;
    }
  }

  @override
  Stream<DocumentSnapshot<Object?>> getGroupMembers(String groupId) {
    return groupCollection.doc(groupId).snapshots();
  }

  @override
  Future<String> getGroupAdmin(String groupId) async {
    DocumentReference documentReference = groupCollection.doc(groupId);
    DocumentSnapshot documentSnapshot = await documentReference.get();
    return documentSnapshot[FirestoreConstants.admin];
  }
}
