part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.uploadPost({
    required String description,
    required Uint8List file,
    required String uid,
    required String userName,
    required String profileImage,
  }) = UploadPostEvent;
  const factory PostEvent.deletePost({
    required String postId,
  }) = DeletePostEvent;
  const factory PostEvent.likePost({
    required String postId,
    required String uid,
    required List likes,
  }) = LikepostEvent;
  const factory PostEvent.followUser({
    required String uid,
    required String followId,
  }) = FollowUserEvent;
}
