import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:social_app/domain/messages/models/messge_models.dart';
import '../../core/constants/firebase_constants.dart';

class ChatDatabaseService {
  final String? uid;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  ChatDatabaseService(this.uid);
  final CollectionReference userCollection = FirebaseFirestore.instance
      .collection(FirestoreConstants.pathUserCollection);
  final CollectionReference groupCollection = FirebaseFirestore.instance
      .collection(FirestoreConstants.pathGroupCollection);

// get users

  Stream<QuerySnapshot> getUsersStream(
      String pathCollection, int limit, String? textSearch) {
    if (textSearch?.isNotEmpty == true) {
      return _db
          .collection(pathCollection)
          .limit(limit)
          .where(FirestoreConstants.userName, isEqualTo: textSearch)
          .snapshots();
    } else {
      return _db.collection(pathCollection).limit(limit).snapshots();
    }
  }

  //get user groups
  getUserGroups() async {
    return userCollection.doc(uid).snapshots();
  }

// uploading photo
  UploadTask uploadFile(File image, String fileName, String childName) {
    Reference reference =
        firebaseStorage.ref().child(childName).child(fileName);
    UploadTask uploadTask = reference.putFile(image);
    return uploadTask;
  }

// send message
  void sendMessage(
      String content, int type, String groupChatId, String uid, String peerId) {
    DocumentReference documentReference = _db
        .collection(FirestoreConstants.pathMessageCollection)
        .doc(groupChatId)
        .collection(groupChatId)
        .doc(DateTime.now().microsecondsSinceEpoch.toString());

    MessageChat messageChat = MessageChat(
        idFrom: uid,
        idTo: peerId,
        timestamp: DateTime.now().microsecondsSinceEpoch.toString(),
        content: content,
        type: type);
    _db.runTransaction((transaction) async {
      transaction.set(
        documentReference,
        messageChat.toJson(),
      );
    });
  }

  //create a group
  Future createGroup(String userName, String id, String groupName) async {
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
      FirestoreConstants.members: FieldValue.arrayUnion(["${uid}_$userName"]),
      FirestoreConstants.groupId: groupDocumentReference.id
    });

    DocumentReference userDcoumentReference = userCollection.doc(uid);
    await userDcoumentReference.update({
      FirestoreConstants.groups:
          FieldValue.arrayUnion(["${groupDocumentReference.id}_$groupName"])
    });
  }

  //get group chats
  getGroupChat(String groupId) async {
    return groupCollection
        .doc(groupId)
        .collection(FirestoreConstants.pathMessageCollection)
        .orderBy(FirestoreConstants.time)
        .snapshots();
  }

  //send group message
  sendGropMessage(String groupId, Map<String, dynamic> chatMessageData) async {
    groupCollection
        .doc(groupId)
        .collection(FirestoreConstants.messages)
        .add(chatMessageData);
    groupCollection.doc(groupId).update({
      FirestoreConstants.recentMessage:
          chatMessageData[FirestoreConstants.messages],
      FirestoreConstants.recentMessageSender:
          chatMessageData[FirestoreConstants.sender],
      FirestoreConstants.recentMessageTime:
          chatMessageData[FirestoreConstants.time].toString()
    });
  }

  // get message chats
  Stream<QuerySnapshot> getChatStream(String groupChatId, int limit) {
    return _db
        .collection(FirestoreConstants.pathMessageCollection)
        .doc(groupChatId)
        .collection(groupChatId)
        .orderBy(FirestoreConstants.timestamp, descending: true)
        .limit(limit)
        .snapshots();
  }
  //update firestore

  Future<void> updateDataFirestore(String collectionPath, String docPath,
      Map<String, dynamic> dataNeedUpdate) {
    return _db.collection(collectionPath).doc(docPath).update(dataNeedUpdate);
  }
}

class TypeMessage {
  static const text = 0;
  static const image = 1;
  static const sticker = 2;
}
