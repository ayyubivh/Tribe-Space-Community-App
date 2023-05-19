import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ISearchRepo {
  Future<QuerySnapshot?> searchUser(String searchVal);
}
