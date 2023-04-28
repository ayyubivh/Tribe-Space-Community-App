import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_app/domain/auth/model/user.dart';
import '../../../domain/auth/database/data_base_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DatabaseReopsitory)
class DatabaseRepoImpl implements DatabaseReopsitory {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  @override
  Future<List<UserModels>> retrieveUserData() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await _db.collection("users").get();
    return snapshot.docs
        .map((docsSnapshot) => UserModels.fromDocumentSnapshot(docsSnapshot))
        .toList();
  }

  @override
  Future<void> saveUserData(UserModels user) {
    return _db.collection("users").doc(user.uid).set(user.toMap());
  }

  Future<void> getUserName(UserModels user) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _db.collection("users").doc(user.uid).get();
    return snapshot.data()!["userName"];
  }
}
