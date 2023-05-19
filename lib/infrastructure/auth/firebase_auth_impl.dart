// ignore: depend_on_referenced_packages
import 'dart:developer';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app/core/constants/firebase_constants.dart';
import 'package:social_app/domain/auth/i_auth_repository.dart';
import 'package:social_app/domain/auth/storage_methods.dart';
import 'package:social_app/infrastructure/auth/database/data_base_impl.dart';
import '../../domain/database/data_base_repo.dart';
import '../../domain/database/database_service.dart';
import '../../domain/auth/model/user.dart';

@LazySingleton(as: IAuthRepo)
class FirebaseRepository implements IAuthRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  DatabaseReopsitory databaseReopsitory = DatabaseRepoImpl();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

//>>>>>>>>>>>>>>>>>>>>> SIGN IN <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  @override
  Future<UserCredential?> signIn(UserModels user) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: user.email!,
        password: user.password!,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
      throw FirebaseAuthException(code: e.code, message: e.message);
    }
  }

//>>>>>>>>>>>>>>>>>>>>> SIGN UP <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  @override
  Future<UserCredential?> signUp(UserModels user) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: user.email!,
        password: user.password!,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());

      throw FirebaseAuthException(code: e.code, message: e.message);
    }
  }

//>>>>>>>>>>>>>>>>>>>>>  GET USER DETAILS  <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  @override
  Stream<UserModels> getCurrentUser() {
    return _firebaseAuth.authStateChanges().map((User? user) {
      if (user != null) {
        log('not a null');
        log(user.email.toString());
        return UserModels(
            uid: user.uid, email: user.email, userName: user.displayName);
      } else {
        log('its a  null');
        return UserModels(uid: "uid");
      }
    });
  }

  @override
  Future<String?> retrieveUserName(UserModels user) async {
    return DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .retrieveUserName(user);
  }

  @override
  Future<UserCredential?> signWithGoodle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      User? firebaseUser =
          (await _firebaseAuth.signInWithCredential(credential)).user;
      if (firebaseUser != null) {
        final QuerySnapshot result = await _db
            .collection(FirestoreConstants.pathUserCollection)
            .where(FirestoreConstants.id, isEqualTo: firebaseUser.uid)
            .get();
        final List<DocumentSnapshot> documents = result.docs;
        if (documents.isEmpty) {
          UserModels user = UserModels(
              uid: firebaseUser.uid,
              userName: firebaseUser.displayName,
              photoUrl: firebaseUser.photoURL,
              email: firebaseUser.email);
          await databaseReopsitory.saveUserData(user);
        }
      }
    } on FirebaseAuthException catch (e) {
      throw Exception(e.toString());
    }
    return null;
  }

  @override
  Future<String?> imageData(Uint8List imageData) async {
    try {
      UserModels? userModels;
      String photoUrl = await StorageMethods()
          .uploadImageToStorage('profilePics', imageData, false);
      userModels!.copyWith(photoUrl: photoUrl);
      return photoUrl;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.toString());
    }
  }

  //>>>>>>>>>>>>>>>>>>>>> SIGN OUT <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
        GoogleSignIn().signOut(),
      ]);
}
