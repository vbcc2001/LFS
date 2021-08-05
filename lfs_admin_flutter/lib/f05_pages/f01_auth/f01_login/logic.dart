import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f03_component/f09_snackbar.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/logic.dart';
import '../../f02_home/view.dart';

import 'state.dart';

class LoginLogic extends GetxController {
  final state = LoginState();
  TextEditingController emailController = TextEditingController(text:kDebugMode ? "lfs@lfs.com" : "");
  TextEditingController passwordController = TextEditingController(text:kDebugMode ? "lfs@lfs.com" : "");
  var submitLock = Rx<bool>(false);
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void submit(BuildContext context) async {
    try {
      submitLock.value = true;
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      Get.find<AuthLogic>().firebaseUser.value=userCredential.user;
      Get.offAll(()=>HomePage());
    } on FirebaseAuthException catch (error) {
      AppSnackbar.show("",error.message!);
    } finally {
      submitLock.value = false;
    }
  }

}
