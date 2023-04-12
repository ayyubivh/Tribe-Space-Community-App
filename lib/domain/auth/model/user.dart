class User {
  final String fullName;
  final String email;
  final String uid;
  final String photoUrl;
  final List followers;
  final List following;

  User({
    required this.fullName,
    required this.email,
    required this.uid,
    required this.photoUrl,
    required this.followers,
    required this.following,
  });
  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "email": email,
        "uid": uid,
        "followers": followers,
        "following": following,
        "photoUrl": photoUrl,
      };
}
