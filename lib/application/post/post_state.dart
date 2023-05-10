part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState({
    required bool isLoading,
    required bool postUploadSuccess,
    required bool postUploadFailure,
    required String errorMessage,
  }) = _PostState;
  factory PostState.initial() => const PostState(
      isLoading: false,
      postUploadSuccess: false,
      postUploadFailure: false,
      errorMessage: '');
}
