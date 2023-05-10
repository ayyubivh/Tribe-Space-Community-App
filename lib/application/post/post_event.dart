part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.uploadPost(
      {required String description,
      required Uint8List file,
      required String uid,
      required String userName,
      required String profileImage}) = UploadPostEvent;
}
