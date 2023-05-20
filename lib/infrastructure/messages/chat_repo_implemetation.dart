import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import '../../domain/messages/i_chat_repo.dart';

class ChatRepository implements IChatRepo {
  @override
  Future<void> createGroup(String userName, String id, String groupName) {
    // TODO: implement createGroup
    throw UnimplementedError();
  }

  @override
  Stream<QuerySnapshot<Object?>> getChatStream(String groupChatId, int limit) {
    // TODO: implement getChatStream
    throw UnimplementedError();
  }

  @override
  Future<void> getGroupChat(String groupId) {
    // TODO: implement getGroupChat
    throw UnimplementedError();
  }

  @override
  Future<void> getUserGroups() {
    // TODO: implement getUserGroups
    throw UnimplementedError();
  }

  @override
  Future<QuerySnapshot<Object?>> getUserStream(
      String pathCollection, int limit, String? textSearch) {
    // TODO: implement getUserStream
    throw UnimplementedError();
  }

  @override
  Future<void> sendGroupMessage(
      String groupId, Map<String, dynamic> chatMessageData) {
    // TODO: implement sendGroupMessage
    throw UnimplementedError();
  }

  @override
  Future<void> sendMessage(
      String content, int type, String groupChatId, String uid, String peerId) {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }

  @override
  Future<void> updateDataFirestore(String collectionPath, String docPath,
      Map<String, dynamic> dataNeedUpdate) {
    // TODO: implement updateDataFirestore
    throw UnimplementedError();
  }

  @override
  Future<UploadTask> uploadFile(File image, String fileName, String childName) {
    // TODO: implement uploadFile
    throw UnimplementedError();
  }
}
