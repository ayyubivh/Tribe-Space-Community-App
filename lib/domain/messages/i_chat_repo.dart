import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class IChatRepo {
  Future<QuerySnapshot> getUserStream(
      String pathCollection, int limit, String? textSearch);
  Future<void> getUserGroups();
  Future<UploadTask> uploadFile(File image, String fileName, String childName);
  Future<void> sendMessage(
      String content, int type, String groupChatId, String uid, String peerId);
  Future<void> createGroup(String userName, String id, String groupName);
  Future<void> getGroupChat(String groupId);
  Future<void> sendGroupMessage(
      String groupId, Map<String, dynamic> chatMessageData);
  Stream<QuerySnapshot> getChatStream(String groupChatId, int limit);
  Future<void> updateDataFirestore(String collectionPath, String docPath,
      Map<String, dynamic> dataNeedUpdate);
  Future<void> toggleGroupJoinedOrNot(
      String groupId, String userName, String groupName);
  Future<bool> isUserJoined(String groupName, String groupId);
}
