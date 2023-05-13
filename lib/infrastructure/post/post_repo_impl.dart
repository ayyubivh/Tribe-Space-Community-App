import 'dart:developer';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app/domain/post/model/comment_model.dart';
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
  Future<void> commentPost(String postId, String text, String uid, String name,
      String profilePic) async {
    try {
      if (text.isNotEmpty) {
        String commentId = const Uuid().v1();
        CommentModel comment = CommentModel(
            profilePic: profilePic,
            name: name,
            uid: uid,
            text: text,
            commentId: commentId,
            datePublished: DateTime.now());
        _firestore
            .collection('posts')
            .doc(postId)
            .collection("comments")
            .doc(commentId)
            .set(comment.toJson());
      }
    } on FirebaseException catch (e) {
      log('comment erro ${e.message}');
    }
  }

  @override
  Future<void> deletePost(String postId) async {
    try {
      await _firestore.collection('posts').doc(postId).delete();
    } catch (err) {
      log('delet err ${err.toString()}');
    }
  }

  @override
  Future<void> followUser(String uid, String followId) async {
    try {
      DocumentSnapshot snap =
          await _firestore.collection('users').doc(uid).get();

      List following = (snap.data()! as dynamic)['following'];

      if (following.contains(followId)) {
        await _firestore.collection('users').doc(followId).update({
          'followers': FieldValue.arrayRemove([uid])
        });
        await _firestore.collection('users').doc(uid).update({
          'following': FieldValue.arrayRemove([followId])
        });
      } else {
        await _firestore.collection('users').doc(followId).update({
          'followers': FieldValue.arrayUnion([uid])
        });
        await _firestore.collection('users').doc(uid).update({
          'following': FieldValue.arrayUnion([followId])
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Future<void> likePost(String postId, String uid, List likes) async {
    try {
      if (likes.contains(uid)) {
        await _firestore.collection('posts').doc(postId).update(
          {
            'likes': FieldValue.arrayRemove([uid]),
          },
        );
      } else {
        await _firestore.collection('posts').doc(postId).update(
          {
            'likes': FieldValue.arrayUnion([uid]),
          },
        );
      }
    } catch (e) {
      throw Exception();
    }
  }
}
