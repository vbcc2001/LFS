import 'package:flutter/material.dart';
import 'dart:core';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:lfs_admin_flutter/f03_component/f09_snackbar.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_main/f02_main_scene.dart';
import 'package:lfs_admin_flutter/f06_middleware/f01_auth_controller.dart';

class LoginController extends GetxController {

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
      Get.find<AuthController>().firebaseUser.value=userCredential.user;
      Get.offAll(()=>MainScene());
    } on FirebaseAuthException catch (error) {
      AppSnackbar.show("",error.message!);
    } finally {
      submitLock.value = false;
    }
  }

}