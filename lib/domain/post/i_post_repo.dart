import 'dart:typed_data';

abstract class IPostRepo {
  Future<String?> uploadPost(
    String description,
    Uint8List file,
    String uid,
    String userName,
    String profileImage,
  );
  Future<void> likePost();
  Future<void> commentPost();
  Future<void> deletePost();
  Future<void> followUser();
}
