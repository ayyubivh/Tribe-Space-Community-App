import 'dart:developer';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:social_app/domain/auth/storage_methods.dart';
import 'package:social_app/domain/post/model/post_model.dart';

import '../../domain/post/i_post_repo.dart';

@LazySingleton(as: IPostRepo)
class PostRepository implements IPostRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<String?> uploadPost(String description, Uint8List file, String uid,
      String userName, String profileImage) async {
    try {
      String photoUrl =
          await StorageMethods().uploadImageToStorage('posts', file, true);
      String postId = const Uuid().v1();
      Post post = Post(
        userName: userName,
        uid: uid,
        description: description,
        postId: postId,
        datePublished: DateTime.now(),
        postUrl: photoUrl,
        profileImage: profileImage,
        likes: [],
      );
      _firestore.collection('posts').doc(postId).set(post.toJson());
    } catch (e) {
      log('post error >>>> ${e.toString()}');
    }
    return null;
  }

  @override
  Future<void> commentPost() {
    // TODO: implement commentPost
    throw UnimplementedError();
  }

  @override
  Future<void> deletePost() {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<void> followUser() {
    // TODO: implement followUser
    throw UnimplementedError();
  }

  @override
  Future<void> likePost() {
    // TODO: implement likePost
    throw UnimplementedError();
  }
}
