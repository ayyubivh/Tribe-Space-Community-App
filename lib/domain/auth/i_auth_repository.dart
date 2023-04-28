import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'model/user.dart';

abstract class IAuthRepo {
  Future<UserCredential?> signUp(UserModels user);
  Future<UserCredential?> signIn(UserModels user);
  Future<void> signOut();
  Stream<UserModels> getCurrentUser();
  Future<String?> retrieveUserName(UserModels user);
  Future<UserCredential?> signWithGoodle();
  Future<String?> imageData(Uint8List imageData);
}
