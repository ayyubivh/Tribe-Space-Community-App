import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_app/domain/search/i_search_repo.dart';
import 'package:injectable/injectable.dart';
import '../../core/constants/firebase_constants.dart';

@LazySingleton(as: ISearchRepo)
class SearchRepository implements ISearchRepo {
  @override
  Future<QuerySnapshot?> searchUser(String searchVal) async {
    return FirebaseFirestore.instance
        .collection(FirestoreConstants.pathUserCollection)
        .where(
          FirestoreConstants.userName,
          isGreaterThanOrEqualTo: searchVal,
        )
        .get();
  }
}
