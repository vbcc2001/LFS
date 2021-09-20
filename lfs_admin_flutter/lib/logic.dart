import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'f05_pages/f01_auth/view.dart';
import 'f05_pages/f02_home/view.dart';
import 'state.dart';

class AppLogic extends GetxController {
  final state = AppState();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  @override
  void onReady() async {
    ever(state.user, _userAuthChanged);
    state.user.bindStream(_auth.authStateChanges());
    super.onReady();
  }

  void _userAuthChanged(user) async {
    // if (user?.uid != null) {
    //   // 获取Firestore上用户扩展信息，
    //   state.firestoreUser.bindStream(_db
    //       .doc('/users/${user!.uid}')
    //       .snapshots()
    //       .map((snapshot) => UserModel.fromMap(snapshot.data()!)));
    // }

    if (user != null) {
      Get.offAll(() => HomePage());
    } else {
      Get.offAll(() => AuthPage());
    }
  }
}
