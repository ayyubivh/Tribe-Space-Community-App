part of 'comment_bloc.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.setCommentEvent({
    required String postId,
    required String text,
    required String uid,
    required String name,
    required String profilePic,
  }) = SetCommentEvent;
}
