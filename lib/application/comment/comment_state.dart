part of 'comment_bloc.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState(
      {required bool isLoading,
      required bool commentSuccess,
      required bool commentFailure,
      required String errorMessage}) = _CommentState;
  factory CommentState.initial() => const CommentState(
      isLoading: false,
      commentSuccess: false,
      commentFailure: false,
      errorMessage: " ");
}
