import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_app/domain/auth/model/user.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  Future<String> retrieveUserName(UserModels user) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _db.collection("users").doc(user.uid).get();
    return snapshot.data()!["userName"];
  }
}
