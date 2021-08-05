import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f07_models/f01_user.dart';

import 'state.dart';

class AuthLogic extends GetxController {
  final state = AuthState();
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
  }
  //Streams the firestore user from the firestore collection
  Stream<UserModel> streamFirestoreUser() {
    print('streamFirestoreUser()');
    return _db
        .doc('/users/${firebaseUser.value!.uid}')
        .snapshots()
        .map((snapshot) => UserModel.fromMap(snapshot.data()!));
  }
}
