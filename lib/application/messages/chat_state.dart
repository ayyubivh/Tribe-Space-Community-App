part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState(
      {required bool isLoading,
      required String groupName,
      required String errorMessage,
      required String successMessage,
      required bool joinedOrStatus,
      required String joinStatusMessage}) = _Initial;
  factory ChatState.initial() => const ChatState(
        isLoading: false,
        groupName: "",
        errorMessage: "",
        successMessage: "",
        joinedOrStatus: false,
        joinStatusMessage: "",
      );
}
