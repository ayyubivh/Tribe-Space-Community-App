import '../model/user.dart';

abstract class DatabaseReopsitory {
  Future<void> saveUserData(UserModels user);

  Future<List<UserModels>> retrieveUserData();
  Future<UserModels> getUserDetails();
}
