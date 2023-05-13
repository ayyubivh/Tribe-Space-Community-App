import 'dart:typed_data';

abstract class IPostRepo {
  Future<String?> uploadPost(
    String description,
    Uint8List file,
    String uid,
    String userName,
    String profileImage,
  );
  Future<void> likePost(String postId, String uid, List likes);
  Future<void> commentPost(
      String postId, String text, String uid, String name, String profilePic);
  Future<void> deletePost(String postId);
  Future<void> followUser(String uid, String followId);
}
