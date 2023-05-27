part of 'chat_bloc.dart';

@freezed
class GroupChatState with _$GroupChatState {
  const factory GroupChatState({
    required bool isLoading,
    required String groupName,
    required String errorMessage,
    required String successMessage,
    required bool joinedOrStatus,
    required Stream<DocumentSnapshot> userGroups,
    required Stream<DocumentSnapshot> groupMembers,
    required Stream<QuerySnapshot> groupChats,
    required String? groupAdmin,
    required String joinStatusMessage,
  }) = _Initial;

  factory GroupChatState.initial() => const GroupChatState(
      isLoading: false,
      groupName: "",
      errorMessage: "",
      successMessage: "",
      joinedOrStatus: false,
      joinStatusMessage: "",
      groupAdmin: "",
      groupChats: Stream.empty(),
      userGroups: Stream.empty(),
      groupMembers: Stream.empty());
}
