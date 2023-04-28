import 'package:social_app/domain/auth/models_bloc/user_model.dart';

import '../model/user.dart';

abstract class DatabaseReopsitory {
  Future<void> saveUserData(UserModels user);

  Future<List<UserModels>> retrieveUserData();
}
