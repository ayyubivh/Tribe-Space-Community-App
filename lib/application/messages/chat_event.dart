part of 'chat_bloc.dart';

@freezed
class GroupChatEvent with _$GroupChatEvent {
  const factory GroupChatEvent.createGroupEvent(
      {required String userName,
      required String id,
      required String groupName}) = CreateGroupEvent;
  const factory GroupChatEvent.toggleGroupJoinEvent(
      {required String groupId,
      required String userName,
      required String groupName}) = ToggleGroupJoinEvent;
  const factory GroupChatEvent.isUserJoined(
      {required String groupName, required String groupId}) = IsUserJoined;
  const factory GroupChatEvent.getUserGroups() = GetUserGroups;
  const factory GroupChatEvent.getGroupMembers(final String groupId) =
      GetGroupMembers;
  const factory GroupChatEvent.getGroupAdmin(String groupId) = GetGroupAdmin;

  const factory GroupChatEvent.getGroupchatsEvent(String gorupId) =
      GetGroupchatsEvent;
  const factory GroupChatEvent.sendGroupMessageEvent(
      String groupid,
      Map<String, dynamic> chatMessageData,
      TextEditingController controller) = SendGroupMessageEvent;
}
