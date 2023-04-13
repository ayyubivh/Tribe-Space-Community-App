import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String userName;
  final String uid;
  final String description;
  final String postId;
  final datePublished;
  final String postUrl;
  final String profileImage;
  final likes;
  const Post({
    required this.userName,
    required this.uid,
    required this.description,
    required this.postId,
    required this.datePublished,
    required this.postUrl,
    required this.profileImage,
    required this.likes,
  });
  Map<String, dynamic> toJson() => {
        "userName": userName,
        "uid": uid,
        "description": description,
        "postId": postId,
        "datePublished": datePublished,
        "posturl": postUrl,
        "profileImage": profileImage,
        "likes": likes,
      };
  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
        userName: snapshot['userName'],
        uid: snapshot['uid'],
        description: snapshot['description'],
        postId: snapshot['postId'],
        datePublished: snapshot['datePublished'],
        postUrl: snapshot['postUrl'],
        profileImage: snapshot['profileImage'],
        likes: snapshot['likes']);
  }
}
