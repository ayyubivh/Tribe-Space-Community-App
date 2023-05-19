import 'package:cloud_firestore/cloud_firestore.dart';

class UserModels {
  String? uid;
  bool? isVerified;
  final String? email;
  String? password;
  final String? photoUrl;
  final String? userName;
  final int? age;
  final List? groups;
  final List? followers;
  final List? following;
  UserModels({
    this.groups,
    this.uid,
    this.email,
    this.password,
    this.photoUrl,
    this.userName,
    this.age,
    this.isVerified,
    this.followers,
    this.following,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'userName': userName,
      'age': age,
      'photoUrl': photoUrl,
      'groups': [],
      'followers': [],
      'following': [],
      'uid': uid
    };
  }

  UserModels.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : uid = doc.id,
        email = doc.data()!["email"],
        age = doc.data()!["age"],
        userName = doc.data()!["userName"],
        followers = doc.data()!["followers"],
        following = doc.data()!["following"],
        groups = doc.data()!['groups'],
        photoUrl = doc.data()!['photoUrl'];

  static UserModels fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return UserModels(
      userName: snapshot["userName"],
      uid: snapshot["uid"],
      email: snapshot["email"],
      photoUrl: snapshot["photoUrl"],
      followers: snapshot["followers"],
      following: snapshot["following"],
    );
  }

  UserModels copyWith(
      {bool? isVerified,
      String? uid,
      String? email,
      String? password,
      String? userName,
      int? age,
      String? photoUrl}) {
    return UserModels(
        uid: uid ?? this.uid,
        email: email ?? this.email,
        password: password ?? this.password,
        photoUrl: photoUrl ?? this.photoUrl,
        userName: userName ?? this.userName,
        age: age ?? this.age,
        isVerified: isVerified ?? this.isVerified);
  }
}
