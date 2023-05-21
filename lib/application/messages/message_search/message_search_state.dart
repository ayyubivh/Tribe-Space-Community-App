part of 'message_search_bloc.dart';

@freezed
class MessageSearchState with _$MessageSearchState {
  const factory MessageSearchState({
    String? searchValue,
    required bool isBool,
    StreamController<bool>? btnClearController,
  }) = _Initial;
  factory MessageSearchState.initial() => const MessageSearchState(
      searchValue: "", btnClearController: null, isBool: false);
}
