import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:social_app/domain/auth/storage_methods.dart';

class AuthMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // get user details
  // Future<UserModels> getUserDetails() async {
  //   User currentUser = _auth.currentUser!;

  //   DocumentSnapshot documentSnapshot =
  //       await _firestore.collection('users').doc(currentUser.uid).get();

  //   return model.User.fromSnap(documentSnapshot);
  // }

  // Signing Up User

  Future<String> signUpUser({
    required String email,
    required String password,
    required String fullName,
    required Uint8List file,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          fullName.isNotEmpty ||
          file != null) {
        // registering user in auth with email and password
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        String photoUrl = await StorageMethods()
            .uploadImageToStorage('profilePics', file, false);

        // model.User _user = model.User(
        //   fullName: fullName,
        //   uid: cred.user!.uid,
        //   photoUrl: photoUrl,
        //   email: email,
        //   followers: [],
        //   following: [],
        // );

        // // adding user in our database
        // await _firestore
        //     .collection("users")
        //     .doc(cred.user!.uid)
        //     .set(_user.toJson());

        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

  // logging in user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        // logging in user with email and password
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  } //get user data

  // final CollectionReference userCollection =
  //     FirebaseFirestore.instance.collection("user");

  // Future gettingUserData(String email) async {
  //   QuerySnapshot snapshot =
  //       await userCollection.where("email", isEqualTo: email).get();

  //   return snapshot;
  // }
}
