part of 'message_search_bloc.dart';

@freezed
class MessageSearchEvent with _$MessageSearchEvent {
  const factory MessageSearchEvent.started({required String searchVal}) =
      Started;
  const factory MessageSearchEvent.empty() = Empty;
}
