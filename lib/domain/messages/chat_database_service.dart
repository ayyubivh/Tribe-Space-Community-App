import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:social_app/domain/messages/models/messge_models.dart';
import '../../core/constants/firebase_constants.dart';
import '../auth/storage_methods.dart';

class ChatDatabaseService {
  final String? uid;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  ChatDatabaseService(this.uid);
  final CollectionReference userCollection = FirebaseFirestore.instance
      .collection(FireStoreConstants.pathUserCollection);
  final CollectionReference groupCollection = FirebaseFirestore.instance
      .collection(FireStoreConstants.pathGroupCollection);

// get users

  Stream<QuerySnapshot> getUsersStream(
      String pathCollection, int limit, String? textSearch) {
    if (textSearch?.isNotEmpty == true) {
      return _db
          .collection(pathCollection)
          .limit(limit)
          .where(FireStoreConstants.userName, isEqualTo: textSearch)
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
        .collection(FireStoreConstants.pathMessageCollection)
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
      FireStoreConstants.groupName: groupName,
      FireStoreConstants.groupIcon: " ",
      FireStoreConstants.admin: "${id}_$userName",
      FireStoreConstants.members: [],
      FireStoreConstants.groupId: "",
      FireStoreConstants.recentMessage: "",
      FireStoreConstants.recentMessageSender: ""
    });
    await groupDocumentReference.update({
      FireStoreConstants.members: FieldValue.arrayUnion(["${uid}_$userName"]),
      FireStoreConstants.groupId: groupDocumentReference.id
    });

    DocumentReference userDcoumentReference = userCollection.doc(uid);
    await userDcoumentReference.update({
      FireStoreConstants.groups:
          FieldValue.arrayUnion(["${groupDocumentReference.id}_$groupName"])
    });
  }

  //get group chats
  getGroupChat(String groupId) async {
    return groupCollection
        .doc(groupId)
        .collection(FireStoreConstants.pathMessageCollection)
        .orderBy(FireStoreConstants.time)
        .snapshots();
  }

  //send group message
  sendGropMessage(String groupId, Map<String, dynamic> chatMessageData) async {
    groupCollection
        .doc(groupId)
        .collection(FireStoreConstants.messages)
        .add(chatMessageData);
    groupCollection.doc(groupId).update({
      FireStoreConstants.recentMessage:
          chatMessageData[FireStoreConstants.messages],
      FireStoreConstants.recentMessageSender:
          chatMessageData[FireStoreConstants.sender],
      FireStoreConstants.recentMessageTime:
          chatMessageData[FireStoreConstants.time].toString()
    });
  }

  // get message chats
  Stream<QuerySnapshot> getChatStream(String groupChatId, int limit) {
    return _db
        .collection(FireStoreConstants.pathMessageCollection)
        .doc(groupChatId)
        .collection(groupChatId)
        .orderBy(FireStoreConstants.timestamp, descending: true)
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
