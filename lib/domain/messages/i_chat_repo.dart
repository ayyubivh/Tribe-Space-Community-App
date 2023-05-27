import 'package:cloud_firestore/cloud_firestore.dart';

abstract class IGroupChatRepo {
  Stream<DocumentSnapshot> getUserGroups();
  Future<String> getGroupAdmin(String groupId);
  Future<void> createGroup(String userName, String id, String groupName);
  Stream<QuerySnapshot> getGroupChat(String groupId);
  Future<void> sendGroupMessage(
      String groupId, Map<String, dynamic> chatMessageData);
  Future<void> toggleGroupJoinedOrNot(
      String groupId, String userName, String groupName);
  Future<bool> isUserJoined(String groupName, String groupId);
  Stream<DocumentSnapshot> getGroupMembers(String groupId);
}
