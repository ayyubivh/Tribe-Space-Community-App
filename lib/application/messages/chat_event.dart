part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.createGroupEvent(
      {required String userName,
      required String id,
      required String groupName}) = CreateGroupEvent;
  const factory ChatEvent.toggleGroupJoinEvent(
      {required String groupId,
      required String userName,
      required String groupName}) = ToggleGroupJoinEvent;
  const factory ChatEvent.isUserJoined(
      {required String groupName, required String groupId}) = IsUserJoined;
}
