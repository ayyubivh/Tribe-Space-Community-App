import '../auth/model/user.dart';

abstract class DatabaseReopsitory {
  Future<void> saveProfilePhot(String photo);
  Future<void> saveUserData(UserModels user);
  Future<List<UserModels>> retrieveUserData();
  Future<UserModels> getUserDetails();
  // Future<bool> isUserJoined(String groupName, String groupId);
}
