import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'dart:async';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_main_scene.dart';
import 'package:lfs_admin_flutter/f05_scene/f03_login_scene.dart';
import 'package:lfs_admin_flutter/f07_models/f01_user.dart';


class AuthController extends GetxController {
  static AuthController to = Get.find();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  Rxn<User> firebaseUser = Rxn<User>();
  Rxn<UserModel> firestoreUser = Rxn<UserModel>();
  // Firebase user one-time fetch
  Future<User> get getUser async => _auth.currentUser!;
  // Firebase user a realtime stream
  Stream<User?> get user => _auth.authStateChanges();

  // get the firestore user from the firestore collection
  Future<UserModel> getFirestoreUser() {
    return _db.doc('/users/${firebaseUser.value!.uid}').get().then(
            (documentSnapshot) => UserModel.fromMap(documentSnapshot.data()!));
  }
  @override
  void onReady() async {
    // //run every time auth state changes
    ever(firebaseUser, handleAuthChanged);
    firebaseUser.bindStream(user);
    super.onReady();
  }
  // Sign out
  Future<void> signOut() {
    return _auth.signOut();
  }

  handleAuthChanged(_firebaseUser) async {
    //get user data from firestore
    if (_firebaseUser?.uid != null) {
      firestoreUser.bindStream(streamFirestoreUser());
      //await isAdmin();
    }
    if (_firebaseUser == null) {
      Get.offAll(LoginScene());
    } else {
      Get.offAll(MainScene());
    }
  }
  //Streams the firestore user from the firestore collection
  Stream<UserModel> streamFirestoreUser() {
    print('streamFirestoreUser()');
    return _db
        .doc('/users/${firebaseUser.value!.uid}')
        .snapshots()
        .map((snapshot) => UserModel.fromMap(snapshot.data()!));
  }


  //handles updating the user when updating profile
  // Future<void> updateUser(BuildContext context, UserModel user, String oldEmail,
  //     String password) async {
  //   String _authUpdateUserNoticeTitle = 'auth.updateUserSuccessNoticeTitle'.tr;
  //   String _authUpdateUserNotice = 'auth.updateUserSuccessNotice'.tr;
  //   try {
  //     showLoadingIndicator();
  //     try {
  //       await _auth
  //           .signInWithEmailAndPassword(email: oldEmail, password: password)
  //           .then((_firebaseUser) {
  //         _firebaseUser.user!
  //             .updateEmail(user.email)
  //             .then((value) => _updateUserFirestore(user, _firebaseUser.user!));
  //       });
  //     } catch (err) {
  //       print('Caught error: $err');
  //       //not yet working, see this issue https://github.com/delay/flutter_starter/issues/21
  //       if (err ==
  //           "Error: [firebase_auth/email-already-in-use] The email address is already in use by another account.") {
  //         _authUpdateUserNoticeTitle = 'auth.updateUserEmailInUse'.tr;
  //         _authUpdateUserNotice = 'auth.updateUserEmailInUse'.tr;
  //       } else {
  //
  //         _authUpdateUserNoticeTitle = 'auth.wrongPasswordNotice'.tr;
  //         _authUpdateUserNotice = 'auth.wrongPasswordNotice'.tr;
  //       }
  //     }
  //     hideLoadingIndicator();
  //     Get.snackbar(_authUpdateUserNoticeTitle, _authUpdateUserNotice,
  //         snackPosition: SnackPosition.BOTTOM,
  //         duration: Duration(seconds: 5),
  //         backgroundColor: Get.theme.snackBarTheme.backgroundColor,
  //         colorText: Get.theme.snackBarTheme.actionTextColor);
  //   } on PlatformException catch (error) {
  //     //List<String> errors = error.toString().split(',');
  //     // print("Error: " + errors[1]);
  //     hideLoadingIndicator();
  //     print(error.code);
  //     String authError;
  //     switch (error.code) {
  //       case 'ERROR_WRONG_PASSWORD':
  //         authError = 'auth.wrongPasswordNotice'.tr;
  //         break;
  //       default:
  //         authError = 'auth.unknownError'.tr;
  //         break;
  //     }
  //     Get.snackbar('auth.wrongPasswordNoticeTitle'.tr, authError,
  //         snackPosition: SnackPosition.BOTTOM,
  //         duration: Duration(seconds: 10),
  //         backgroundColor: Get.theme.snackBarTheme.backgroundColor,
  //         colorText: Get.theme.snackBarTheme.actionTextColor);
  //   }
  // }

  // //updates the firestore user in users collection
  // void _updateUserFirestore(UserModel user, User _firebaseUser) {
  //   _db.doc('/users/${_firebaseUser.uid}').update(user.toJson());
  //   update();
  // }



  // //check if user is an admin user
  // isAdmin() async {
  //   await getUser.then((user) async {
  //     DocumentSnapshot adminRef =
  //     await _db.collection('admin').doc(user.uid).get();
  //     if (adminRef.exists) {
  //       admin.value = true;
  //     } else {
  //       admin.value = false;
  //     }
  //     update();
  //   });
  // }


}